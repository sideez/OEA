using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class tree : System.Web.UI.Page
    {
        int report_id = (int)OEA.Report.Tree;
        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");

            if (!this.IsPostBack)
                UpdateNumberOfTreesPlanted();
        }       

        protected void btnTreesRptU_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISU.Text.ToString().Trim();

            string selectedValueNumGirlsU = txtNumGirlsU.Text;
            string selectedValueNumAdultsU = txtNumAdultsU.Text;
            string selectedValueNumNonMembersU = txtNumNonMembersU.Text;

            string selectedValueTreesNumberOfTreesPlantedU  = txtNumTreesU.Text;
            string selectedValueTreesCommunityEventU = chkCommEventU.Checked.ToString();
            string selectedValueTreesTreePlantingGrantU = chkGrantU.Checked.ToString();
            string selectedValueTreesOwnProjectU = chkOwnU.Checked.ToString();
            string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);
    

            //int? validiMIS = context.OEA_VerifyiMIS(iMIS_ID, eMAIL).SingleOrDefault().IMISCount;
            //if (validiMIS.HasValue && validiMIS > 0)
            //{
            //save
            
            
            //if (string.IsNullOrEmpty(iMIS_ID))
            //{
            //    //message to user
            //    if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
            //    {
            //        this.ClientScript.RegisterClientScriptBlock(this.GetType(),"msg","Invalid IMIS ID.");
            //    }
            //    return;
            //}
            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

            
            context.OEA_SaveSelection(
                iMIS_ID,
                (int)OEA.ReportElement.TreesNumberOfGirls,
                OEA.Participation.Unit,
                selectedValueNumGirlsU,
                ip_address,
                comment);

            
            context.OEA_SaveSelection(
                iMIS_ID,
                (int)OEA.ReportElement.TreesNumberOfAdults,
                OEA.Participation.Unit,
                selectedValueNumAdultsU,
                ip_address,
                comment);

           
            context.OEA_SaveSelection(
                iMIS_ID,
                (int)OEA.ReportElement.TreesNumberOfNonMembers,
                OEA.Participation.Unit,
                selectedValueNumNonMembersU,
                ip_address,
                comment);

           
            context.OEA_SaveSelection(
                iMIS_ID,
                (int)OEA.ReportElement.TreesNumberOfTreesPlanted,
                OEA.Participation.Unit,
                selectedValueTreesNumberOfTreesPlantedU,
                ip_address,
                comment);


           
            context.OEA_SaveSelection(
                iMIS_ID,
                (int)OEA.ReportElement.TreesCommunityEvent,
                OEA.Participation.Unit,
                selectedValueTreesCommunityEventU,
                ip_address,
                comment);


           
            context.OEA_SaveSelection(
                iMIS_ID,
                (int)OEA.ReportElement.TreesTreePlantingGrant,
                OEA.Participation.Unit,
                selectedValueTreesTreePlantingGrantU,
                ip_address,
                comment);
            
           
           
            context.OEA_SaveSelection(
                iMIS_ID,
                (int)OEA.ReportElement.TreesOwnProject,
                OEA.Participation.Unit,
                selectedValueTreesOwnProjectU,
                ip_address,
                comment);

            UpdateNumberOfTreesPlanted();
            ClearTreesPlantedFormU();
            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }
        }

        protected void btnTreesRptI_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISI.Text.ToString().Trim();

            string selectedValueNumGirlsI = txtNumGirlsI.Text;
            string selectedValueNumAdultsI = txtNumAdultsI.Text;
            string selectedValueNumNonMembersI = txtNumNonMembersI.Text;

            string selectedValueTreesNumberOfTreesPlantedI = txtNumTreesI.Text;
            string selectedValueTreesCommunityEventI = chkCommEventI.Checked.ToString();
            string selectedValueTreesTreePlantingGrantI = chkGrantI.Checked.ToString();
            string selectedValueTreesOwnProjectI = chkOwnI.Checked.ToString();

            string msg_to_user = string.Empty;
            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);
            
            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

                

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TreesNumberOfGirls,
                    OEA.Participation.Individual,
                    selectedValueNumGirlsI,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TreesNumberOfAdults,
                    OEA.Participation.Individual,
                    selectedValueNumAdultsI,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TreesNumberOfNonMembers,
                    OEA.Participation.Individual,
                    selectedValueNumNonMembersI,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TreesNumberOfTreesPlanted,
                    OEA.Participation.Individual,
                    selectedValueTreesNumberOfTreesPlantedI,
                    ip_address,
                    comment);



                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TreesCommunityEvent,
                    OEA.Participation.Individual,
                    selectedValueTreesCommunityEventI,
                    ip_address,
                    comment);



                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TreesTreePlantingGrant,
                    OEA.Participation.Individual,
                    selectedValueTreesTreePlantingGrantI,
                    ip_address,
                    comment);



                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TreesOwnProject,
                    OEA.Participation.Individual,
                    selectedValueTreesOwnProjectI,
                    ip_address,
                    comment);

                UpdateNumberOfTreesPlanted();
                ClearTreesPlantedFormU();
            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }

            
        }

        private bool Validate_imis_email(
         OEA.DataLayer.OEADataContext context,
         string iMIS_ID,
         string eMAIL,
         out string msg_to_user)
        {
            msg_to_user = string.Empty;

            if (string.IsNullOrEmpty(iMIS_ID))
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

        private void UpdateNumberOfTreesPlanted()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            int trees = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, null).SingleOrDefault().NumberOfPledges);

            lblTreesplanted.Text = trees.ToString();

        }

        private void ClearTreesPlantedFormI()
        {
            txtiMISI.Text = "";

            txtNumGirlsI.Text = "";
            txtNumAdultsI.Text = "";
            txtNumNonMembersI.Text = "";

            txtNumTreesI.Text = "";

            chkCommEventI.Checked = false;
            chkGrantI.Checked = false;
            chkOwnI.Checked = false;


        }

        private void ClearTreesPlantedFormU()
        {
            txtiMISU.Text = "";

            txtNumGirlsU.Text = "";
            txtNumAdultsU.Text = "";
            txtNumNonMembersU.Text = "";

            txtNumTreesU.Text = "";

            chkCommEventU.Checked = false;
            chkGrantU.Checked = false;
            chkOwnU.Checked = false;


        }


        public string eMAIL { get; set; }
    }
}