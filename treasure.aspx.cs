using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class treasure : System.Web.UI.Page
    {
        int report_id = (int)OEA.Report.TrashToTreasure;

        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");

            if (!this.IsPostBack)
                UpdateNumberOfItemsTransformed();
        }

        protected void btnTreasureRptU_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISU.Text.ToString().Trim();
            string selectedValueNumGirlsU = txtNumGirlsU.Text;
            string selectedValueNumAdultsU = txtNumAdultsU.Text;
            string selectedValueNumNonMembersU = txtNumNonMembersU.Text;

            string selectedValueTreasureNumDryerBallsU = txtDryerBallsU.Text;
            string selectedValueTreasureNumPaperSeedU = txtPaperSeedU.Text;
            string selectedValueTreasureNumSwapEventsU = txtSwapEventsU.Text;
            string selectedValueTreasureNumToteBagsU = txtToteBagsU.Text;
            string selectedValueTreasureNumCardsWrappingPaperU = txtCardsWrappingPaperU.Text;
            string selectedValueTreasureOtherU = txtOtherU.InnerText.ToString();

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
                    (int)OEA.ReportElement.TrashToTreasureNumberOfGirl,
                    OEA.Participation.Unit,
                    selectedValueNumGirlsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberofAdults,
                    OEA.Participation.Unit,
                    selectedValueNumAdultsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfNonMembers,
                    OEA.Participation.Unit,
                    selectedValueNumNonMembersU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberofDryBalls,
                    OEA.Participation.Unit,
                    selectedValueTreasureNumDryerBallsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfPaperSeed,
                    OEA.Participation.Unit,
                    selectedValueTreasureNumPaperSeedU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfSwapEvents,
                    OEA.Participation.Unit,
                    selectedValueTreasureNumSwapEventsU,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfToteBags,
                    OEA.Participation.Unit,
                    selectedValueTreasureNumToteBagsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfCardsWrappingPaper,
                    OEA.Participation.Unit,
                    selectedValueTreasureNumCardsWrappingPaperU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureOther,
                    OEA.Participation.Unit,
                    selectedValueTreasureOtherU,
                    ip_address,
                    comment);


                UpdateNumberOfItemsTransformed();
                ClearTreasureFormU();

            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }






        }

        protected void btnTreasureRptI_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISI.Text.Trim();

            string selectedValueNumGirlsI = txtNumGirlsI.Text;
            string selectedValueNumAdultsI = txtNumAdultsI.Text;
            string selectedValueNumNonMembersI = txtNumNonMembersI.Text;

            string selectedValueTreasureNumDryerBallsI = txtDryerBallsI.Text;
            string selectedValueTreasureNumPaperSeedI = txtPaperSeedI.Text;
            string selectedValueTreasureNumSwapEventsI = txtSwapEventsI.Text;
            string selectedValueTreasureNumToteBagsI = txtToteBagsI.Text;
            string selectedValueTreasureNumCardsWrappingPaperI = txtCardsWrappingPaperI.Text;
            string selectedValueTreasureOtherI = txtOtherI.InnerText.ToString();

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
                    (int)OEA.ReportElement.TrashToTreasureNumberOfGirl,
                    OEA.Participation.Individual,
                    selectedValueNumGirlsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberofAdults,
                    OEA.Participation.Individual,
                    selectedValueNumAdultsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfNonMembers,
                    OEA.Participation.Individual,
                    selectedValueNumNonMembersI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberofDryBalls,
                    OEA.Participation.Individual,
                    selectedValueTreasureNumDryerBallsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfPaperSeed,
                    OEA.Participation.Individual,
                    selectedValueTreasureNumPaperSeedI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfSwapEvents,
                    OEA.Participation.Individual,
                    selectedValueTreasureNumSwapEventsI,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfToteBags,
                    OEA.Participation.Individual,
                    selectedValueTreasureNumToteBagsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureNumberOfCardsWrappingPaper,
                    OEA.Participation.Individual,
                    selectedValueTreasureNumCardsWrappingPaperI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.TrashToTreasureOther,
                    OEA.Participation.Individual,
                    selectedValueTreasureOtherI,
                    ip_address,
                    comment);


                UpdateNumberOfItemsTransformed();
                ClearTreasureFormI();
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

        private void UpdateNumberOfItemsTransformed()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();

            int numTrashToTreasure = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, null).SingleOrDefault().NumberOfPledges);

            lblTrashToTreasureCount.Text = numTrashToTreasure.ToString();

        }



        private void ClearTreasureFormI()
        {
            txtiMISI.Text = "";

            txtNumGirlsI.Text = "";
            txtNumAdultsI.Text = "";
            txtNumNonMembersI.Text = "";

            txtDryerBallsI.Text = "";
            txtPaperSeedI.Text = "";
            txtSwapEventsI.Text = "";
            txtToteBagsI.Text = "";
            txtCardsWrappingPaperI.Text = "";
            txtOtherI.InnerText = "";

        }

        private void ClearTreasureFormU()
        {
            txtiMISU.Text = "";

            txtNumGirlsU.Text = "";
            txtNumAdultsU.Text = "";
            txtNumNonMembersU.Text = "";

            txtDryerBallsU.Text = "";
            txtPaperSeedU.Text = "";
            txtSwapEventsU.Text = "";
            txtToteBagsU.Text = "";
            txtCardsWrappingPaperU.Text = "";
            txtOtherU.InnerText = "";
        }

        public string eMAIL { get; set; }
    }
}