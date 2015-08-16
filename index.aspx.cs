using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OEA
{
    public partial class splash : System.Web.UI.Page
    {
        int _report_id_pledge = (int)OEA.Report.BagsBottlesPledge;
        int report_id_meal = (int)OEA.Report.MapYourMeal;
        int report_id_homemade = (int)OEA.Report.HomeCleaning;
        int report_id_trees = (int)OEA.Report.Tree;
        int report_id_energy = (int)OEA.Report.EnergyDetective;

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime d = DateTime.Now;
            String s = d.ToString("yyyyMMdd-HHmmss");

            if (!this.IsPostBack)
                UpdateNspData();
        }

        private void UpdateNspData()
        {
            OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();

            int pledgesWB = Convert.ToInt32(context.OEA_GetSelectionCount(_report_id_pledge, 4).SingleOrDefault().NumberOfPledges);
            int pledgesSB = Convert.ToInt32(context.OEA_GetSelectionCount(_report_id_pledge, 5).SingleOrDefault().NumberOfPledges);

            lblNumberWBPledges.Text = pledgesWB.ToString();
            lblNumberSBPledges.Text = pledgesSB.ToString();

            int MapMealDistanceSaved = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_meal, null).SingleOrDefault().NumberOfPledges);
            int MapMealNumberOne = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_meal, 19).SingleOrDefault().NumberOfPledges);
            int MapMealNumberTwo = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_meal, 20).SingleOrDefault().NumberOfPledges);

            lblMapMealDistanceSaved.Text = MapMealDistanceSaved.ToString();
            lblMapMealNumberOne.Text = MapMealNumberOne.ToString();
            lblMapMealNumberTwo.Text = MapMealNumberTwo.ToString();

            int homemadeBathes = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, null).SingleOrDefault().NumberOfPledges);
            int laundryDetergent = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 24).SingleOrDefault().NumberOfPledges);
            int allPurposeCleaner = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 27).SingleOrDefault().NumberOfPledges);
            int shampoo = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 29).SingleOrDefault().NumberOfPledges);
            int faceMask = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 30).SingleOrDefault().NumberOfPledges);

            lblHomemadeBatches.Text = homemadeBathes.ToString();
            lblLaundryDetergent.Text = laundryDetergent.ToString();
            lblAllPurposeCleaner.Text = allPurposeCleaner.ToString();
            lblShampoo.Text = shampoo.ToString();
            lblFaceMask.Text = faceMask.ToString();

            int trees = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_trees, null).SingleOrDefault().NumberOfPledges);
            int communityEvent = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_trees, 13).SingleOrDefault().NumberOfPledges);
            int tdEvent = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_trees, 14).SingleOrDefault().NumberOfPledges);
            int ownProject = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_trees, 15).SingleOrDefault().NumberOfPledges);

            lblTreesplanted.Text = trees.ToString();
            lblCommunityEvent.Text = communityEvent.ToString();
            lblTDEvent.Text = tdEvent.ToString();
            lblOwnProject.Text = ownProject.ToString();

            int numEnergyAudit = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_energy, null).SingleOrDefault().NumberOfPledges);
            int homeEnergyAudit = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_energy, 34).SingleOrDefault().NumberOfPledges);
            int businessEnergyAudit = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_energy, 38).SingleOrDefault().NumberOfPledges);
            int communityEnergyAudit = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_energy, 39).SingleOrDefault().NumberOfPledges);

            lblEnergyAuditCount.Text = numEnergyAudit.ToString();
            lblHomeAuditCount.Text = homeEnergyAudit.ToString();
            lblBusinessAuditCount.Text = businessEnergyAudit.ToString();
            lblCommunityAuditCount.Text = communityEnergyAudit.ToString();

        }
    }
}