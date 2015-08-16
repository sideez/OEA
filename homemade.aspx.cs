using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class homemade : System.Web.UI.Page
    {
        int report_id = (int)OEA.Report.HomeCleaning;
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");

            if (!this.IsPostBack)
                UpdateNumberOfHomemadeBatches();
        }

        private bool Validate_imis_email(
            OEA.DataLayer.OEADataContext context,
            string iMIS_ID,
            string eMAIL,
            out string msg_to_user)
        {
            msg_to_user = string.Empty;

            if (string.IsNullOrEmpty(iMIS_ID) )
            {
                msg_to_user = "Please make sure that you enter a valid IMIS ID.";
                return false;
            }

            if (iMIS_ID.Length > 10)
            {
                msg_to_user = "Please make sure that you enter a valid IMIS ID.";
                return false;
            }

            try
            {
                int int1 = 0;
                if (!Int32.TryParse(iMIS_ID, out int1))
                {
                    msg_to_user = "Please make sure that you enter a valid IMIS ID.";
                    return false;
                }

                if (int1 <= 0)
                {
                    msg_to_user = "Please make sure that you enter a valid IMIS ID.";
                    return false;
                }
            }
            catch
            {
                msg_to_user = "Please make sure that you enter a valid IMIS ID.";
                return false;
            }

            //verify e-mail format

            int? validiMIS = context.OEA_VerifyiMIS(iMIS_ID, eMAIL).SingleOrDefault().IMISCount;

            if (validiMIS.HasValue && validiMIS > 0)
            {
                return true;
            }
            else
            {
                msg_to_user = "Please make sure that you enter a valid IMIS ID.";
                return false;

            }

            //return false;
        }
        protected void btnHomemadeRptU_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISU.Text.ToString().Trim();

            string selectedValueNumGirlsU = txtNumGirlsU.Text;
            string selectedValueNumAdultsU = txtNumAdultsU.Text;
            string selectedValueNumNonMembersU = txtNumNonMembersU.Text;

            // string selectedValueEnergyHomeU = chkEnergyHomeU.Checked.ToString();
            string selectedValueHomemadeNumberOfLaundryDetergentBatchesU = txtLaundryU.Text;
            string selectedValueHomemadeNumberOfCleanerBatchesU = txtCleanerU.Text;
            string selectedValueHomemadeNumberOfShampooBatchesU = txtShampooU.Text;
            string selectedValueHomemadeNumberOfFaceMaskBatchesU = txtMaskU.Text;

            string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);

            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfGirls,
                    OEA.Participation.Unit,
                    selectedValueNumGirlsU,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfAdults,
                    OEA.Participation.Unit,
                    selectedValueNumAdultsU,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfNonMembers,
                    OEA.Participation.Unit,
                    selectedValueNumNonMembersU,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfLaundryDetergentBatches,
                    OEA.Participation.Unit,
                    selectedValueHomemadeNumberOfLaundryDetergentBatchesU,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfCleanerBatches,
                    OEA.Participation.Unit,
                    selectedValueHomemadeNumberOfCleanerBatchesU,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfShampooBatches,
                    OEA.Participation.Unit,
                    selectedValueHomemadeNumberOfShampooBatchesU,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfFaceMaskBatches,
                    OEA.Participation.Unit,
                    selectedValueHomemadeNumberOfFaceMaskBatchesU,
                    ip_address,
                    comment);

                UpdateNumberOfHomemadeBatches();
                ClearHomemadeBatchesFormU();

            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }

 

           
        }

        protected void btnHomemadeRptI_Click(object sender, EventArgs e)
        {

            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISI.Text.ToString().Trim();

            string selectedValueNumGirlsI = txtNumGirlsI.Text;
            string selectedValueNumAdultsI = txtNumAdultsI.Text;
            string selectedValueNumNonMembersI = txtNumNonMembersI.Text;

            // string selectedValueEnergyHomeU = chkEnergyHomeU.Checked.ToString();
            string selectedValueHomemadeNumberOfLaundryDetergentBatchesI = txtLaundryI.Text;
            string selectedValueHomemadeNumberOfCleanerBatchesI = txtCleanerI.Text;
            string selectedValueHomemadeNumberOfShampooBatchesI = txtShampooI.Text;
            string selectedValueHomemadeNumberOfFaceMaskBatchesI = txtMaskI.Text;

            string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);

            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfGirls,
                    OEA.Participation.Individual,
                    selectedValueNumGirlsI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfAdults,
                    OEA.Participation.Individual,
                    selectedValueNumAdultsI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfNonMembers,
                    OEA.Participation.Individual,
                    selectedValueNumNonMembersI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfLaundryDetergentBatches,
                    OEA.Participation.Individual,
                    selectedValueHomemadeNumberOfLaundryDetergentBatchesI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfCleanerBatches,
                    OEA.Participation.Individual,
                    selectedValueHomemadeNumberOfCleanerBatchesI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfShampooBatches,
                    OEA.Participation.Individual,
                    selectedValueHomemadeNumberOfShampooBatchesI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HomemadeNumberOfFaceMaskBatches,
                    OEA.Participation.Individual,
                    selectedValueHomemadeNumberOfFaceMaskBatchesI,
                    ip_address,
                    comment);

                UpdateNumberOfHomemadeBatches();
                ClearHomemadeBatchesFormI();

            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }
            //OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            //string iMIS_ID = txtiMISI.Text.ToString().Trim();
            //string eMAIL = txtEmailI.Text.ToString().Trim();
            //int? validiMIS = context.OEA_VerifyiMIS(iMIS_ID, eMAIL).SingleOrDefault().IMISCount;
            //if (validiMIS.HasValue && validiMIS > 0)
            //{
            //    //save
            //    //if (string.IsNullOrEmpty(iMIS_ID))
            //    //{
            //    //    //message to user
            //    //    if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
            //    //    {
            //    //        this.ClientScript.RegisterClientScriptBlock(this.GetType(),"msg","Invalid IMIS ID.");
            //    //    }
            //    //    return;
            //    //}

            //    string ip_address = Utilities.GetIPAddress(); ;
            //    string comment = "geo";

            //    string selectedValue = txtNumGirlsI.Text;
            //    context.OEA_SaveSelection(
            //        iMIS_ID,
            //        (int)OEA.ReportElement.HomemadeNumberOfGirls,
            //        OEA.Participation.Unit,
            //        selectedValue,
            //        ip_address,
            //        comment);

            //    selectedValue = txtNumAdultsI.Text;
            //    context.OEA_SaveSelection(
            //        iMIS_ID,
            //        (int)OEA.ReportElement.HomemadeNumberOfAdults,
            //        OEA.Participation.Unit,
            //        selectedValue,
            //        ip_address,
            //        comment);

            //    selectedValue = txtNumNonMembersI.Text;
            //    context.OEA_SaveSelection(
            //        iMIS_ID,
            //        (int)OEA.ReportElement.HomemadeNumberOfNonMembers,
            //        OEA.Participation.Unit,
            //        selectedValue,
            //        ip_address,
            //        comment);

            //    selectedValue = txtLaundryI.Text;
            //    context.OEA_SaveSelection(
            //        iMIS_ID,
            //        (int)OEA.ReportElement.HomemadeNumberOfLaundryDetergentBatches,
            //        OEA.Participation.Unit,
            //        selectedValue,
            //        ip_address,
            //        comment);

            //    selectedValue = txtCleanerU.Text;
            //    context.OEA_SaveSelection(
            //        iMIS_ID,
            //        (int)OEA.ReportElement.HomemadeNumberOfCleanerBatches,
            //        OEA.Participation.Unit,
            //        selectedValue,
            //        ip_address,
            //        comment);

            //    selectedValue = txtShampooI.Text;
            //    context.OEA_SaveSelection(
            //        iMIS_ID,
            //        (int)OEA.ReportElement.HomemadeNumberOfShampooBatches,
            //        OEA.Participation.Unit,
            //        selectedValue,
            //        ip_address,
            //        comment);

            //    selectedValue = txtMaskI.Text;
            //    context.OEA_SaveSelection(
            //        iMIS_ID,
            //        (int)OEA.ReportElement.HomemadeNumberOfFaceMaskBatches,
            //        OEA.Participation.Unit,
            //        selectedValue,
            //        ip_address,
            //        comment);

            //    UpdateNumberOfHomemadeBatches();
            //    ClearHomemadeBatchesFormI();
            //}
            //else { }
        }

        private void UpdateNumberOfHomemadeBatches()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();

            int homemadeBathes = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, null).SingleOrDefault().NumberOfPledges);

 
            lblHomemadeBatches.Text = homemadeBathes.ToString();

        }

        private void ClearHomemadeBatchesFormI()
        {
            txtiMISI.Text = "";

            txtNumGirlsI.Text = "";
            txtNumAdultsI.Text = "";
            txtNumNonMembersI.Text = "";

            txtLaundryI.Text = "";
            txtCleanerI.Text = "";
            txtShampooI.Text = "";
            txtMaskI.Text = "";

            
        }

        private void ClearHomemadeBatchesFormU()
        {
            txtiMISU.Text = "";

            txtNumGirlsU.Text = "";
            txtNumAdultsU.Text = "";
            txtNumNonMembersU.Text = "";

            txtLaundryU.Text = "";
            txtCleanerU.Text = "";
            txtShampooU.Text = "";
            txtMaskU.Text = "";

        }

        public string eMAIL { get; set; }
    }
}