using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class meal : System.Web.UI.Page
    {
        int report_id = (int)OEA.Report.MapYourMeal;

        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");
            if (!this.IsPostBack)
                UpdateMapMealDistanceSaved();
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
                //validation
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
        protected void btnMealRptU_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISU.Text.ToString().Trim();

            string selectedValueNumGirlsU = txtNumGirlsU.Text;
            string selectedValueNumAdultsU = txtNumAdultsU.Text;
            string selectedValueNumNonMembersU = txtNumNonMembersU.Text;

            string selectedValueMapMealMeal1Kilometers = txtMeal1U.Text;
            string selectedValueMapMealMeal2Kilometers = txtMeal2U.Text;

             string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);
            //va,idate that at kleast one number is entered
            //validate the size of rec

            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

              
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealNumberOfGirls,
                    OEA.Participation.Unit,
                    selectedValueNumGirlsU,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealNumberOfAdults,
                    OEA.Participation.Unit,
                    selectedValueNumAdultsU,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealNumberOfNonMembers,
                    OEA.Participation.Unit,
                    selectedValueNumNonMembersU,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealMeal1Kilometers,
                    OEA.Participation.Unit,
                    selectedValueMapMealMeal1Kilometers,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealMeal2Kilometers,
                    OEA.Participation.Unit,
                    selectedValueMapMealMeal2Kilometers,
                    ip_address,
                    comment);

                UpdateMapMealDistanceSaved();
                ClearMapMealFormU();

            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }


            

        }

        protected void btnMealRptI_Click(object sender, EventArgs e)
        {

            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISI.Text.ToString().Trim();

            string selectedValueNumGirlsI = txtNumGirlsI.Text;
            string selectedValueNumAdultsI = txtNumAdultsI.Text;
            string selectedValueNumNonMembersI = txtNumNonMembersI.Text;

            string selectedValueMapMealMeal1Kilometers = txtMeal1I.Text;
            string selectedValueMapMealMeal2Kilometers = txtMeal2I.Text;

            string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);
            //va,idate that at kleast one number is entered
            //validate the size of rec

            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress(); ;
                string comment = "geo";

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealNumberOfGirls,
                    OEA.Participation.Individual,
                    selectedValueNumGirlsI,
                    ip_address,
                    comment);

               
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealNumberOfAdults,
                    OEA.Participation.Individual,
                    selectedValueNumAdultsI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealNumberOfNonMembers,
                    OEA.Participation.Individual,
                    selectedValueNumNonMembersI,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealMeal1Kilometers,
                    OEA.Participation.Individual,
                    selectedValueMapMealMeal1Kilometers,
                    ip_address,
                    comment);

                
                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.MapMealMeal2Kilometers,
                    OEA.Participation.Individual,
                    selectedValueMapMealMeal2Kilometers,
                    ip_address,
                    comment);

                UpdateMapMealDistanceSaved();
                ClearMapMealFormU();

            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }

            
        }

        private void UpdateMapMealDistanceSaved()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();

            decimal MapMealDistanceSaved = context.OEA_GetSelectionCount(report_id,null).SingleOrDefault().NumberOfPledges;

            lblMapMealDistanceSaved.Text = MapMealDistanceSaved.ToString();

        }

        

        private void ClearMapMealFormU()
        {
            txtiMISU.Text = "";

            txtNumGirlsU.Text = "";
            txtNumAdultsU.Text = "";
            txtNumNonMembersU.Text = "";

            txtMeal1U.Text = "";
            txtMeal2U.Text = "";

            lblTotalDistanceSavedU.Text = "";
            txtDistanceSavedU.Text = "";

           

        }

        private void ClearMapMealFormI()
        {
            txtiMISI.Text = "";

            txtNumGirlsI.Text = "";
            txtNumAdultsI.Text = "";
            txtNumNonMembersI.Text = "";

            txtMeal1I.Text = "";
            txtMeal2I.Text = "";

            
            lblTotalDistanceSavedI.Text = "";
            txtDistanceSavedI.Text = "";



        }


        public string eMAIL { get; set; }
    }
}