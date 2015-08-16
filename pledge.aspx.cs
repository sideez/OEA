using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class pledge : System.Web.UI.Page
    {
        int report_id = (int)OEA.Report.BagsBottlesPledge; 

        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");
          
            if(!this.IsPostBack)
                UpdateNumberOfPledges();
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
        protected void btnPledgeRptU_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISU.Text.ToString().Trim();

            string selectedValueNumGirlsU = txtNumGirlsU.Text; 
            string selectedValueNumAdultsU = txtNumAdultsU.Text;
            string selectedValueNumNonMembersU = txtNumNonMembersU.Text;

            string selectedPledgePledgeWaterBottleU = chkWaterBottlesU.Checked.ToString();
            string selectedPledgePledgeShoppingBagU = chkShoppingBagsU.Checked.ToString();

             string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);
            //validate that at least one number is entered
            //validate the size of rec

            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgePledgeWaterBottle,
                    OEA.Participation.Unit,
                    selectedPledgePledgeWaterBottleU,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgeNumberOfGirls,
                    OEA.Participation.Unit,
                    selectedValueNumGirlsU,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgeNumberOfAdults,
                    OEA.Participation.Unit,
                    selectedValueNumAdultsU,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgeNumberOfNonMembers,
                    OEA.Participation.Unit,
                    selectedValueNumNonMembersU,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgePledgeShoppingBag,
                    OEA.Participation.Unit,
                    selectedPledgePledgeShoppingBagU,
                    ip_address,
                    comment);

                UpdateNumberOfPledges();
                ClearPledgeFormU();
            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }
            
        }

        protected void btnPledgeRptI_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISI.Text.ToString().Trim();

            string selectedValueNumGirlsI = txtNumGirlsI.Text;
            string selectedValueNumAdultsI = txtNumAdultsI.Text;
            string selectedValueNumNonMembersI = txtNumNonMembersI.Text;

            string selectedPledgePledgeWaterBottleI = chkWaterBottlesI.Checked.ToString();
            string selectedPledgePledgeShoppingBagI = chkShoppingBagsI.Checked.ToString();

            string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);
            //validate that at least one number is entered
            //validate the size of rec

            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

                string selectedValue = chkWaterBottlesU.Checked.ToString();
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgePledgeWaterBottle,
                    OEA.Participation.Individual,
                    selectedPledgePledgeWaterBottleI,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgeNumberOfGirls,
                    OEA.Participation.Individual,
                    selectedValueNumGirlsI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgeNumberOfAdults,
                    OEA.Participation.Individual,
                    selectedValueNumAdultsI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgeNumberOfNonMembers,
                    OEA.Participation.Individual,
                    selectedValueNumNonMembersI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.PledgePledgeShoppingBag,
                    OEA.Participation.Individual,
                    selectedPledgePledgeShoppingBagI,
                    ip_address,
                    comment);

                UpdateNumberOfPledges();
                ClearPledgeFormU();
            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }
            
        }

        private void UpdateNumberOfPledges()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            int pledges = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, null).SingleOrDefault().NumberOfPledges);

            lblNumberPledges.Text = pledges.ToString();

            int pledgesWB = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, 4).SingleOrDefault().NumberOfPledges);

            int pledgesSB = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, 5).SingleOrDefault().NumberOfPledges);

            lblNumberSBPledges.Text = pledgesSB.ToString();
            lblNumberWBPledges.Text = pledgesWB.ToString();
           
            
        }

        private void ClearPledgeFormI()
        {
            txtiMISI.Text ="";

            txtNumGirlsI.Text = "";           
            txtNumAdultsI.Text = "";
            txtNumNonMembersI.Text = "";
            chkShoppingBagsI.Checked = false;
            chkWaterBottlesI.Checked = false;

        }

        private void ClearPledgeFormU()
        {
            txtiMISU.Text = "";

            txtNumGirlsU.Text = "";
            txtNumAdultsU.Text = "";
            txtNumNonMembersU.Text = "";
            chkShoppingBagsU.Checked = false;
            chkWaterBottlesU.Checked = false;

        }



        public string eMAIL { get; set; }
    }
}