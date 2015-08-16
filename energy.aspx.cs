using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class energy : System.Web.UI.Page
    {
        int report_id = (int)OEA.Report.EnergyDetective;

        protected void Page_Load(object sender, EventArgs e)
        {

            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");

            if (!this.IsPostBack)
                UpdateNumberOfEnergyAuditCount();
        }


        protected void btnEnergyRptU_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISU.Text.ToString().Trim();
            string selectedValueNumGirlsU = txtNumGirlsU.Text;
            string selectedValueNumAdultsU = txtNumAdultsU.Text;
            string selectedValueNumNonMembersU = txtNumNonMembersU.Text;

            string selectedValueEnergyHomeU = chkEnergyHomeU.Checked.ToString();
            string selectedValueEnergyBusU = chkEnergyBusU.Checked.ToString();
            string selectedValueEnergyComU = chkEnergyComU.Checked.ToString();
            string selectedValueEnergyRecU = txtEnergyRecU.InnerText.ToString();
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
                    (int)OEA.ReportElement.EnergyAuditNumberOfGirl,
                    OEA.Participation.Unit,
                    selectedValueNumGirlsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditNumberofAdults,
                    OEA.Participation.Unit,
                    selectedValueNumAdultsU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditNumberOfNonMembers,
                    OEA.Participation.Unit,
                    selectedValueNumNonMembersU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditHomeEnergyAudit,
                    OEA.Participation.Unit,
                    selectedValueEnergyHomeU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditBusinessEnergyAudit,
                    OEA.Participation.Unit,
                    selectedValueEnergyBusU,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditCommunityBuildingEnergyAudit,
                    OEA.Participation.Unit,
                    selectedValueEnergyComU,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditRecommendation,
                    OEA.Participation.Unit,
                    selectedValueEnergyRecU,
                    ip_address,
                    comment);


                UpdateNumberOfEnergyAuditCount();
                ClearEnergyFormU();

            }
            else
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage(msg_to_user));
                }

            }





           
        }

        protected void btnEnergyRptI_Click(object sender, EventArgs e)
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
            string iMIS_ID = txtiMISI.Text.Trim();

            string selectedValueNumGirlsI = txtNumGirlsI.Text;
            string selectedValueNumAdultsI = txtNumAdultsI.Text;
            string selectedValueNumNonMembersI = txtNumNonMembersI.Text;

            string selectedValueEnergyHomeI = chkEnergyHomeI.Checked.ToString();
            string selectedValueEnergyBusI = chkEnergyBusI.Checked.ToString();
            string selectedValueEnergyComI = chkEnergyComI.Checked.ToString();
            string selectedValueEnergyRecI = txtEnergyRecI.InnerText.ToString();
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
                    (int)OEA.ReportElement.EnergyAuditNumberOfGirl,
                    OEA.Participation.Individual,
                    selectedValueNumGirlsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditNumberofAdults,
                    OEA.Participation.Individual,
                    selectedValueNumAdultsI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditNumberOfNonMembers,
                    OEA.Participation.Individual,
                    selectedValueNumNonMembersI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditHomeEnergyAudit,
                    OEA.Participation.Individual,
                    selectedValueEnergyHomeI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditBusinessEnergyAudit,
                    OEA.Participation.Individual,
                    selectedValueEnergyBusI,
                    ip_address,
                    comment);

                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditCommunityBuildingEnergyAudit,
                    OEA.Participation.Individual,
                    selectedValueEnergyComI,
                    ip_address,
                    comment);


                context.OEA_SaveSelection(
                    iMIS_ID,
                    (int)OEA.ReportElement.EnergyAuditRecommendation,
                    OEA.Participation.Individual,
                    selectedValueEnergyRecI,
                    ip_address,
                    comment);


                UpdateNumberOfEnergyAuditCount();
                ClearEnergyFormI();
            }
            else 
            {
                if (!this.ClientScript.IsClientScriptBlockRegistered("msg"))
                {
                    this.ClientScript.RegisterClientScriptBlock(this.GetType(), "msg", Utilities.FormatJavaScriptAlertMessage( msg_to_user));
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

        private void UpdateNumberOfEnergyAuditCount()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();

            int numEnergyAudit = Convert.ToInt32(context.OEA_GetSelectionCount(report_id, null).SingleOrDefault().NumberOfPledges);

            lblEnergyAuditCount.Text = numEnergyAudit.ToString();

        }

      

        private void ClearEnergyFormU()
        {
            txtiMISU.Text = "";

            txtNumGirlsU.Text = "";
            txtNumAdultsU.Text = "";
            txtNumNonMembersU.Text = "";

            chkEnergyBusU.Checked = false;
            chkEnergyHomeU.Checked = false;
            chkEnergyComU.Checked = false;

            txtEnergyRecU.InnerText = "";
            

        }

        private void ClearEnergyFormI()
        {
            txtiMISI.Text = "";
            txtNumGirlsI.Text = "";
            txtNumAdultsI.Text = "";
            txtNumNonMembersI.Text = "";
            chkEnergyBusI.Checked = false;
            chkEnergyHomeI.Checked = false;
            chkEnergyComI.Checked = false;
            txtEnergyRecI.InnerText = "";

        }

        public string eMAIL { get; set; }
    }
}