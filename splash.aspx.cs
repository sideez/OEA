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
        int report_id_pledge = (int)OEA.Report.BagsBottlesPledge;
        int report_id_meal = (int)OEA.Report.MapYourMeal;
        int report_id_homemade = (int)OEA.Report.HomeCleaning;

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

            decimal MapMealDistanceSaved = context.OEA_GetSelectionCount(report_id_meal, null).SingleOrDefault().NumberOfPledges;
            decimal MapMealNumberOne = context.OEA_GetSelectionCount(report_id_meal, 16).SingleOrDefault().NumberOfPledges;
            decimal MapMealNumberTwo = context.OEA_GetSelectionCount(report_id_meal, 17).SingleOrDefault().NumberOfPledges;

            int homemadeBathes = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, null).SingleOrDefault().NumberOfPledges);
            int laundryDetergent = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 24).SingleOrDefault().NumberOfPledges);
            int allPurposeCleaner = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 27).SingleOrDefault().NumberOfPledges);
            int shampoo = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 29).SingleOrDefault().NumberOfPledges);
            int faceMask = Convert.ToInt32(context.OEA_GetSelectionCount(report_id_homemade, 30).SingleOrDefault().NumberOfPledges);

            lblNumberWBPledges.Text = pledgesWB.ToString();
            lblNumberSBPledges.Text = pledgesSB.ToString();

            lblMapMealDistanceSaved.Text = MapMealDistanceSaved.ToString();
            lblMapMealNumberOne.Text = MapMealNumberOne.ToString();
            lblMapMealNumberTwo.Text = MapMealNumberTwo.ToString();

            lblHomemadeBatches.Text = homemadeBathes.ToString();
            lblLaundryDetergent.Text = laundryDetergent.ToString();
            lblAllPurposeCleaner.Text = allPurposeCleaner.ToString();
            lblShampoo.Text = shampoo.ToString();
            lblFaceMask.Text = faceMask.ToString();

        }
    }
}