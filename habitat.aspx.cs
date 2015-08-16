using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class habitat : System.Web.UI.Page
    {
        int report_id = (int)OEA.Report.HabitatPreservation;

        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");

            if (!this.IsPostBack)
                UpdateNumberOfHabitatPreservations();
        }

        protected void btnHabitatRptU_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISU.Text.ToString().Trim();
            string selectedValueNumGirlsU = txtNumGirlsU.Text;
            string selectedValueNumAdultsU = txtNumAdultsU.Text;
            string selectedValueNumNonMembersU = txtNumNonMembersU.Text;

            string selectedValueHabitatNumberOfDuckBoxesU = txtDuckBoxesU.Text;
            string selectedValueHabitatNumberOfWetlandsU = txtWetlandsU.Text;
            string selectedValueHabitatNumberOfBatBoxesU = txtBatBoxesU.Text;
            string selectedValueHabitatNumberOfGardenOutdoorU = txtGardenOutdoorU.Text;
            string selectedValueHabitatNumberOfToadAbodesU = txtToadAbodesU.Text;
            string selectedValueHabitatOtherU = txtOtherU.InnerText.ToString();
            
            string msg_to_user = string.Empty;

            bool valid_imis_email = Validate_imis_email(context, iMIS_ID, eMAIL, out msg_to_user);
            //validate that at least one number is entered
            //validate the size of rec

            if (valid_imis_email)
            {
                string ip_address = Utilities.GetIPAddress();
                string comment = "geo";

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfGirl,
                    OEA.Participation.Unit,
                    selectedValueNumGirlsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberofAdults,
                    OEA.Participation.Unit,
                    selectedValueNumAdultsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfNonMembers,
                    OEA.Participation.Unit,
                    selectedValueNumNonMembersU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfDuckBoxes,
                    OEA.Participation.Unit,
                    selectedValueHabitatNumberOfDuckBoxesU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfWetlands,
                    OEA.Participation.Unit,
                    selectedValueHabitatNumberOfWetlandsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfBatBoxes,
                    OEA.Participation.Unit,
                    selectedValueHabitatNumberOfBatBoxesU,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfGardenOutdoor,
                    OEA.Participation.Unit,
                    selectedValueHabitatNumberOfGardenOutdoorU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                   iMIS_ID,
                   (int)OEA.ReportElement.HabitatPreservationNumberOfToadAbodes,
                   OEA.Participation.Unit,
                   selectedValueHabitatNumberOfToadAbodesU,
                   ip_address,
                   comment);

                context.OEA_SaveSelection(
                  iMIS_ID,
                  (int)OEA.ReportElement.HabitatPreservationOther,
                  OEA.Participation.Unit,
                  selectedValueHabitatOtherU,
                  ip_address,
                  comment);

                UpdateNumberOfHabitatPreservations();
                ClearHabitatFormU();

            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }






        }

        protected void btnHabitatRptI_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISI.Text.Trim();

            string selectedValueNumGirlsI = txtNumGirlsI.Text;
            string selectedValueNumAdultsI = txtNumAdultsI.Text;
            string selectedValueNumNonMembersI = txtNumNonMembersI.Text;

            string selectedValueHabitatNumberOfDuckBoxesI = txtDuckBoxesI.Text;
            string selectedValueHabitatNumberOfWetlandsI = txtWetlandsI.Text;
            string selectedValueHabitatNumberOfBatBoxesI = txtBatBoxesI.Text;
            string selectedValueHabitatNumberOfGardenOutdoorI = txtGardenOutdoorI.Text;
            string selectedValueHabitatNumberOfToadAbodesI = txtToadAbodesI.Text;
            string selectedValueHabitatOtherI = txtOtherI.InnerText.ToString();

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
                    (int)OEA.ReportElement.HabitatPreservationNumberOfGirl,
                    OEA.Participation.Individual,
                    selectedValueNumGirlsI,
                    ip_address,
                     comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberofAdults,
                    OEA.Participation.Individual,
                    selectedValueNumAdultsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfNonMembers,
                    OEA.Participation.Individual,
                    selectedValueNumNonMembersI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfDuckBoxes,
                    OEA.Participation.Individual,
                    selectedValueHabitatNumberOfDuckBoxesI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfWetlands,
                    OEA.Participation.Individual,
                    selectedValueHabitatNumberOfWetlandsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfBatBoxes,
                    OEA.Participation.Individual,
                    selectedValueHabitatNumberOfBatBoxesI,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.HabitatPreservationNumberOfGardenOutdoor,
                    OEA.Participation.Individual,
                    selectedValueHabitatNumberOfGardenOutdoorI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                   iMIS_ID,
                   (int)OEA.ReportElement.HabitatPreservationNumberOfToadAbodes,
                   OEA.Participation.Individual,
                   selectedValueHabitatNumberOfToadAbodesI,
                   ip_address,
                   comment);

                context.OEA_SaveSelection(
                  iMIS_ID,
                  (int)OEA.ReportElement.HabitatPreservationOther,
                  OEA.Participation.Individual,
                  selectedValueHabitatOtherI,
                  ip_address,
                  comment);


                UpdateNumberOfHabitatPreservations();
                ClearHabitatFormI();
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

            if(validiMIS.HasValue && validiMIS > 0)
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

        private void UpdateNumberOfHabitatPreservations()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();

            int numHabitatPreservation = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, null).SingleOrDefault().NumberOfPledges);

            lblHabitatPreservationCount.Text = numHabitatPreservation.ToString();

        }



        private void ClearHabitatFormI()
        {
            txtiMISI.Text = "";

            txtNumGirlsI.Text = "";
            txtNumAdultsI.Text = "";
            txtNumNonMembersI.Text = "";

            txtDuckBoxesI.Text = "";
            txtWetlandsI.Text = "";
            txtBatBoxesI.Text = "";
            txtGardenOutdoorI.Text = "";
            txtToadAbodesI.Text = "";
            txtOtherI.InnerText = "";
            
        }

        private void ClearHabitatFormU()
        {
            txtiMISU.Text = "";

            txtNumGirlsU.Text = "";
            txtNumAdultsU.Text = "";
            txtNumNonMembersU.Text = "";

            txtDuckBoxesU.Text = "";
            txtWetlandsU.Text = "";
            txtBatBoxesU.Text = "";
            txtGardenOutdoorU.Text = "";
            txtToadAbodesU.Text = "";
            txtOtherU.InnerText = "";
        }

        public string eMAIL { get; set; }

    }
}