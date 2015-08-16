using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OEA
{
    public class Utilities
    {
        public static string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string sIPAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            if (string.IsNullOrEmpty(sIPAddress))
            {
                return context.Request.ServerVariables["REMOTE_ADDR"];
            }
            else
            {
                string[] ipArray = sIPAddress.Split(new Char[] { ',' });
                return ipArray[0];
            }
        }

        public static bool ValidateISMI(string iMIS_ID, string eMAIL, out string message)
        {
            bool ret = true;
            message = "";
            if (string.IsNullOrEmpty(iMIS_ID))
            {
                ret = false;
                message = "IMSI ID must be provided.";
            }
            if (ret && iMIS_ID.Length>10)
            {
                ret = false;
                message = "IMSI ID is invalid, please provide a valid IMSI ID.";
            }

            if (ret)
            {
                OEA.DataLayer.OEADataContext context = new DataLayer.OEADataContext();
                int? validiMIS = context.OEA_VerifyiMIS(iMIS_ID, eMAIL).SingleOrDefault().IMISCount;
                if (!validiMIS.HasValue || validiMIS < 1)
                {
                    ret = false;
                    message = "IMSI ID is invalid, please provide a valid IMSI ID.";
                }
            }
            return ret;

        }

        public static string FormatJavaScriptAlertMessage(string message)
        {
            return "<script>alert ('" + message.Replace('\'', '`') + "');</script>";
        }
        public static string FormatJavaScriptAlertMessageAndClickButton(string message, string button_id)
        {
            return "<script>alert ('" + message.Replace('\'', '`') + "');var btn = document.getElementById(" + button_id + ");if (btn) btn.click();</script>";
        }

        public static string eMAIL { get; set; }
    }

    public enum Report
    {
        BagsBottlesPledge = 1,
        Tree = 2,
        MapYourMeal = 3,
        HomeCleaning = 4,
        EnergyDetective = 5,
        HabitatPreservation = 6,
        TrashToTreasure = 7
    }

    public static class Participation
    {
        public static char? Individual = 'I';
        public static char? Unit = 'U';
    }

public enum ReportElement
{

    PledgeNumberOfGirls = 1,
    PledgeNumberOfAdults = 2,
    PledgeNumberOfNonMembers = 3,
    PledgePledgeWaterBottle = 4,
    PledgePledgeShoppingBag = 5,

    TreesNumberOfGirls = 8,
    TreesNumberOfAdults = 9,
    TreesNumberOfNonMembers = 10,
    TreesNumberOfTreesPlanted = 12,
    TreesCommunityEvent = 13,
    TreesTreePlantingGrant = 14,
    TreesOwnProject = 15,

    MapMealNumberOfGirls = 16,
    MapMealNumberOfAdults = 17,
    MapMealNumberOfNonMembers = 18,
    MapMealMeal1Kilometers = 19,
    MapMealMeal2Kilometers = 20,

    HomemadeNumberOfGirls = 21,
    HomemadeNumberOfAdults = 22,
    HomemadeNumberOfNonMembers = 23,
    HomemadeNumberOfLaundryDetergentBatches = 24,
    HomemadeNumberOfCleanerBatches = 27,
    HomemadeNumberOfShampooBatches = 29,
    HomemadeNumberOfFaceMaskBatches = 30,

    EnergyAuditNumberOfGirl = 31,
    EnergyAuditNumberofAdults = 32,
    EnergyAuditNumberOfNonMembers = 33,
    EnergyAuditHomeEnergyAudit = 34,
    EnergyAuditBusinessEnergyAudit = 38,
    EnergyAuditCommunityBuildingEnergyAudit = 39,
    EnergyAuditRecommendation = 40,

    HabitatPreservationNumberOfGirl = 41,
    HabitatPreservationNumberofAdults = 42,
    HabitatPreservationNumberOfNonMembers = 43,
    HabitatPreservationNumberOfDuckBoxes = 44,
    HabitatPreservationNumberOfWetlands = 45,
    HabitatPreservationNumberOfBatBoxes = 46,
    HabitatPreservationNumberOfGardenOutdoor = 47,
    HabitatPreservationNumberOfToadAbodes = 48,
    HabitatPreservationOther = 49,

    TrashToTreasureNumberOfGirl = 50,
    TrashToTreasureNumberofAdults = 51,
    TrashToTreasureNumberOfNonMembers = 52,
    TrashToTreasureNumberofDryBalls = 53,
    TrashToTreasureNumberOfPaperSeed = 54,
    TrashToTreasureNumberOfSwapEvents = 55,
    TrashToTreasureNumberOfToteBags = 56,
    TrashToTreasureNumberOfCardsWrappingPaper = 57,
    TrashToTreasureOther = 58

    }

}