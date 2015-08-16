<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="OEA.splash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8" />

  <!-- Set the viewport width to device width for mobile -->
  <meta name="viewport" content="width=device-width" />

  <title>National Service Project - Operation Earth Action</title>
  
  <!-- Included CSS Files (Uncompressed) -->
  <link rel="stylesheet" href="css/foundation.css">
  
  <!-- Included CSS Files (Compressed) -->
  <!--
  <link rel="stylesheet" href="css/foundation.min.css">
  -->
  <link rel="stylesheet" href="css/app4.css">

  <script src="js/modernizr.foundation.js"></script>

  <!-- IE Fix for HTML5 Tags -->
  <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

      <script type="text/javascript">

          var _gaq = _gaq || [];
          _gaq.push(['_setAccount', 'UA-7664117-8']);
          _gaq.push(['_trackPageview']);

          (function () {
              var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
              ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
              var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
          })();

</script>

<script type="text/javascript">
    function recordOutboundLink(link, category, action) {
        _gat._getTrackerByName()._trackEvent(category, action);
        setTimeout('document.location = "' + link.href + '"', 100);
    }
</script>

</head>
<body>
<form id="energyForm" name="energyForm" runat="server">

  <div class="splash-container">

    <div class="splash-infographic">
    
      <!-- Start Header Row -->
      
      <div class="row">

        <div class="six columns">
          <div class="logo-box national-box">
            <a href="http://www.girlguides.ca">
              <i class="logo"></i>
            </a>
            <p class="sub-title right enter-site"><a href="http://www.nationalserviceproject.ca">Enter Site</a></p>
            <div class="row">
              <div class="two columns">
                <a href="http://www.nationalserviceproject.ca">
                  <img style="width: 68px;" src="img/new-nsp-logo.png" alt="National Service Project">
                </a>
              </div>
              <div class="ten columns"> 
                <h4 class="nsp-title"><a href="http://www.nationalserviceproject.ca">National Service Project:</a></h4>
                <h3 class="sub-title"><a href="http://www.nationalserviceproject.ca">Operation Earth Action</a></h3>
              </div>
            </div>
          </div>
        </div>

        <div class="six columns">
          <div class="text-center logo-box sponsor-box">
            <h3>Presenting Sponsor</h3>
            <img src="img/td-logo.jpg">
          </div>
        </div>

      </div> 

      <!-- End Header Row -->

      <!-- Start Old Activities Row -->

      <div class="row">

        <!-- Start Map Your Meals and Green Products Info -->

        <div class="three columns">
          <div class="text-center info-box activities map-your-meals">
            <div class="row">
              <div class="four columns">
                <i class="icon-map-your-meals"></i>
              </div>
              <div class="eight columns">
                <h4 class="splash-title">Map Your<br>Meals</h4>
              </div>
            </div>
            <span class="counter"><asp:Label ID="lblMapMealDistanceSaved" runat="server" Text=""></asp:Label></span>
            <p class="counter-caption">Kilometers Saved</p>
            <ul class="no-bullet">
              <li>
                Meal #1:
                <span><asp:Label ID="lblMapMealNumberOne" runat="server" Text=""></asp:Label></span>
                KM
              </li>
              <li>
                Meal #2:
                <span><asp:Label ID="lblMapMealNumberTwo" runat="server" Text=""></asp:Label></span>
                KM
              </li>
            </ul>
            <div class="action-btn">
              <a href="meal.aspx">Take Action</a>
            </div>
          </div>
        </div>

        <div class="three columns">
          <div class="text-center info-box activities green-products">
            <div class="row">
              <div class="four columns">
                <i class="icon-green-products"></i>
              </div>
              <div class="eight columns">
                <h4 class="splash-title">Green<br>Products</h4>
              </div>
            </div>
            <span class="counter"><asp:Label ID="lblHomemadeBatches" runat="server" Text=""></asp:Label></span>
            <p class="counter-caption">Batches Made</p>
            <ul class="no-bullet">
              <li>
                Laundry Detergent:
                <span class="detail-counter"><asp:Label ID="lblLaundryDetergent" runat="server" Text=""></asp:Label></span> 
              </li>
              <li>
                All-purpose Cleaner:
                <span><asp:Label ID="lblAllPurposeCleaner" runat="server" Text=""></asp:Label></span>
              </li>
              <li>
                Shampoo:
                <span><asp:Label ID="lblShampoo" runat="server" Text=""></asp:Label></span>
              </li>
              <li>
                Face Mask:
                <span><asp:Label ID="lblFaceMask" runat="server" Text=""></asp:Label></span>
              </li>
            </ul>
            <div class="action-btn">
              <a href="homemade.aspx">Take Action</a>
            </div>
          </div>
        </div> 

        <!-- End Map Your Meals and Green Products Info -->

        <!-- Start Plant a Tree and Energy Detective Info -->
        
        <div class="three columns">
          <div class="text-center info-box activities plant-a-tree">
            <div class="row">
              <div class="four columns">
                <i class="icon-plant-a-tree"></i>
              </div>
              <div class="eight columns">
                <h4 class="splash-title">Plant a<br>Tree</h4>
              </div>
            </div>
            <span class="counter"><asp:Label ID="lblTreesplanted" runat="server" Text=""></asp:Label></span>
            <p class="counter-caption">Trees Planted</p>
            <ul class="no-bullet">
              <li>
                Community Event:
                <span><asp:Label ID="lblCommunityEvent" runat="server" Text=""></asp:Label></span>
              </li>
              <li>
                GGC TD EFE Grant:
                <span><asp:Label ID="lblTDEvent" runat="server" Text=""></asp:Label></span>
              </li>
              <li>
                Own Project:
                <span><asp:Label ID="lblOwnProject" runat="server" Text=""></asp:Label></span>
              </li>
            </ul>
            <div class="action-btn">
              <a href="tree.aspx">Take Action</a>
            </div>
          </div>
        </div>

        <div class="three columns">
          <div class="text-center info-box activities energy-detective">
            <div class="row">
              <div class="four columns">
                <i class="icon-energy-detective"></i>
              </div>
              <div class="eight columns">
                <h4 class="splash-title">Energy<br>Detective</h4>
              </div>
            </div>
            <span class="counter"><asp:Label ID="lblEnergyAuditCount" runat="server" Text=""></asp:Label></span>
            <p class="counter-caption">Audits Completed</p>
            <ul class="no-bullet">
              <li>
                Home Audits:
                <span><asp:Label ID="lblHomeAuditCount" runat="server" Text=""></asp:Label></span> 
              </li>
              <li>
                Business Audits:
                <span><asp:Label ID="lblBusinessAuditCount" runat="server" Text=""></asp:Label></span>
              </li>
              <li>
                Community Audits:
                <span><asp:Label ID="lblCommunityAuditCount" runat="server" Text=""></asp:Label></span>
              </li>
            </ul>
            <div class="action-btn">
              <a href="energy.aspx">Take Action</a>
            </div>
          </div>
        </div>

        <!-- End Plant a Tree and Energy Detective Info -->

      </div> <!-- End Old Activities Row -->

      <!-- Start New Activities and Pledge Row -->

      <div class="row">

        <!-- Start Animal Habitat and Trash to Treasure Info -->

        <div class="three columns">
          <div class="text-center info-box animal-habitat">
            <div class="row">
              <div class="four columns">
                <i class="icon-animal-habitat"></i>
              </div>
              <div class="eight columns">
                <h4 class="splash-title">Animal<br>Habitats</h4>
              </div>
            </div>
            <span class="counter">0</span>
            <div class="click-me">
              <a class="radius large button" href="http://nsp.girlguides.ca/habitat.aspx">Take Action</a>
            </div>
            <p class="counter-caption">Habitats Built</p>
            <ul class="no-bullet">
              <li>
                Duck Box:
                <span class="detail-counter">0</span> 
              </li>
              <li>
                Wetlands:
                <span>0</span>
              </li>
              <li>
                Bat Boxes:
                <span>0</span>
              </li>
              <li>
                Garden/Outdoor Spaces:
                <span>0</span>
              </li>
              <li>
                Toad/Abodes:
                <span>0</span>
              </li>
              <li>
                Other:
                <span>0</span>
              </li>
            </ul>
            <div class="action-btn">
              <a href="habitat.aspx">Take Action</a>
            </div>
          </div>
        </div>

        <div class="three columns">
          <div class="text-center info-box trash-to-treasure">
            <div class="row">
              <div class="four columns">
                <i class="icon-trash-to-treasure"></i>
              </div>
              <div class="eight columns">
                <h4 class="splash-title">Trash to<br>Treasure</h4>
              </div>
            </div>
            <span class="counter">0</span>
            <div class="click-me">
              <a class="radius large button" href="http://nsp.girlguides.ca/tresure.aspx">Take Action</a>
            </div>
            <p class="counter-caption">Items Transformed</p>
            <ul class="no-bullet">
              <li>
                Dryer Balls:
                <span class="detail-counter">0</span> 
              </li>
              <li>
                Paper/Seed Paper:
                <span>0</span>
              </li>
              <li>
                Swap Events:
                <span>0</span>
              </li>
              <li>
                Bags:
                <span>0</span>
              </li>
              <li>
                Cards/Wrapping Paper:
                <span>0</span>
              </li>
              <li>
                Other:
                <span>0</span>
              </li>
            </ul>
            <div class="action-btn">
              <a href="treasure.aspx">Take Action</a>
            </div>
          </div>
        </div> 

        <!-- End Animal Habitat and Trash to Treasure Info -->

        <!-- Start Pledge Info -->

        <div class="three columns">
          <div class="text-center info-box water-bottles">
            <h4 class="splash-title">Reusable<br>Water Bottles</h4>
            <div class="click-me">
              <a class="radius large button" href="http://nsp.girlguides.ca/pledge.aspx">Pledge Now</a>
            </div>
            <ul class="icon-counter">
              <li>
                <i class="icon-water-bottle"></i>
              </li>
              <li>
                <span class="pledge-counter"><asp:Label ID="lblNumberWBPledges" runat="server" Text=""></asp:Label></span>
              </li>
            </ul>
            <p class="counter-caption">Total Pledges</p>
            <div class="action-btn">
              <a href="pledge.aspx">Take Action</a>
            </div>
          </div>
          
          <!-- Start History Button -->
          <div>
            <a class="button splash-btn" href="history.aspx">About NSP</a>
          </div>
          <!-- End History Button -->

        </div>
        
        <div class="three columns">

          <div class="text-center info-box shopping-bags">
            <h4 class="splash-title">Reusable<br>Shopping Bags</h4>
            <div class="click-me">
              <a class="radius large button" href="http://nsp.girlguides.ca/pledge.aspx">Pledge Now</a>
            </div>
            <ul class="no-bullet icon-counter">
              <li>
                <i class="icon-shopping-bag"></i>
              </li>
              <li>
                <span class="pledge-counter"><asp:Label ID="lblNumberSBPledges" runat="server" Text=""></asp:Label></span>
              </li>
            </ul>
            <p class="counter-caption">Total Pledges</p>
            <div class="action-btn">
              <a href="pledge.aspx">Take Action</a>
            </div>
          </div>
          
          <!-- Start NSP Artwork Button -->
          <div>
            <a class="button splash-btn" href="nsp-artwork.aspx">NSP Artwork</a>
          </div>
          <!-- End NSP Artwork Button -->

        </div>

        <!-- End Pledge Info -->

      </div> <!-- End New Activities and Pledge Row -->

      <!-- Start Footer -->

      <div class="row">
        <div class="twelve columns">
          <div class="logo-box national-box text-center footer">
            <a href="http://www.nationalserviceproject.ca">
            Enter Site
            </a>
          </div>
        </div>
      </div> <!-- End Footer -->
    
    </div> <!-- End splash-infographic div -->

  </div>
  
  
  <!-- Included JS Files (Uncompressed) -->
  <!--
  
  <script src="js/jquery.js"></script>
  
  <script src="js/jquery.foundation.mediaQueryToggle.js"></script>
  
  <script src="js/jquery.foundation.forms.js"></script>
  
  <script src="js/jquery.foundation.reveal.js"></script>
  
  <script src="js/jquery.foundation.orbit.js"></script>
  
  <script src="js/jquery.foundation.navigation.js"></script>
  
  <script src="js/jquery.foundation.buttons.js"></script>
  
  <script src="js/jquery.foundation.tabs.js"></script>
  
  <script src="js/jquery.foundation.tooltips.js"></script>
  
  <script src="js/jquery.foundation.accordion.js"></script>
  
  <script src="js/jquery.placeholder.js"></script>
  
  <script src="js/jquery.foundation.alerts.js"></script>
  
  <script src="js/jquery.foundation.topbar.js"></script>
  
  -->
  
  <!-- Included JS Files (Compressed) -->
  <script src="js/jquery.js"></script>
  <script src="js/foundation.min.js"></script>
  <script src="js/validate.min.js"></script>
  <script src="js/jquery.queryloader2.js"></script>
  
  <!-- Initialize JS Plugins -->
  <script src="js/app.js"></script>

   </form>
</body>
</html>
