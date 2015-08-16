<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="habitat.aspx.cs" Inherits="OEA.habitat" %>

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
  <link rel="stylesheet" href="css/app.css">

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
<form id="habitatForm" name="habitatForm" runat="server">
  <div class="topbar fixed">

    <div class="row header">

      <div class="two columns nsp-logo">
            
        <a href="index.aspx">
          <img src="img/nsp-logo.png" alt="National Service Project" title="National Service Project Logo">
        </a>

      </div>

      <div class="two columns ggc-logo">

        <a href="http://www.girlguides.ca">
          <img src="img/ggc-logo.png" alt="Girl Guides of Canada" title="Girl Guides of Canada">
        </a>

      </div>

      <div class="eight columns">
        
        <nav class="primary">

          <ul class="no-bullet">

            <li>
              <a href="pledge.aspx">
                <i class="icon-pledge" title="Pledge"></i>
                <div class="nav-border"></div>
              </a>
            </li>

            <li>
              <a href="meal.aspx">
                <i class="icon-map-your-meals" title="Map Your Meals"></i>
              </a>
              <div class="nav-border"></div>
            </li>

            <li>
              <a href="homemade.aspx">
                <i class="icon-green-products" title="Homemade Green Products"></i>
                <div class="nav-border"></div>
              </a>
            </li>

            <li>
              <a href="tree.aspx">
                <i class="icon-plant-a-tree" title="Plant a Tree"></i>
                <div class="nav-border"></div>
              </a>
            </li>

            <li>
              <a href="energy.aspx">
                <i class="icon-energy-detective" title="Be an Energy Detective"></i>
                <div class="nav-border"></div>
              </a>
            </li>
            <li>
              <a href="habitat.aspx">
                <i class="icon-animal-habitat" title="Supporting Animal Habitats"></i>
                <div class="nav-border"></div>
              </a>
            </li>
            <li>
              <a href="treasure.aspx">
                <i class="icon-trash-to-treasure" title="Transforming Trash to Treasure"></i>
                <div class="nav-border"></div>
              </a>
            </li>

          </ul>

        </nav>

      </div>

    </div>

  </div>

  <div class="row main">

    <div class="eight columns content">
      
      <h1>Supporting Animal Habitats</h1>
<p>In this activity, girls will learn hands on about the importance of preserving habitats for local native birds and animals as well as how natural spaces can be improved and maintained to ensure healthy and vibrant ecosystems across Canada. Though building animal habitats, preserving or restoring an outdoor space, girls will have direct impact in helping improve the local natural spaces and the lives of various species in their natural community.</p>
<h3>Build This Into The Girls’ Program!</h3>
<ul class="disc">
<li>Sparks: Going Outside Keeper</li>
<li>Brownies: Key to the Living World</li>
<li>Guides: Beyond You</li>
<li>Pathfinders: Our Environment or Creating a Garden</li>
<li>Rangers: Environment, Outdoors and Camping</li>
</ul>
<h4>Resources</h4>
<ul class="disc">
<li><a href="doc/backgrounder-supporting-animal-habitats.pdf" target="_blank">Backgrounder</a></li>
<li><a href="doc/how-to-build-duck-box.pdf" target="_blank">How to: Build a Duck Box</a><br>
  Sixty duck box kits will be available in September, with a maximum of three kits per unit. Awarding of kits will be based on a completed application showing a strong dedication to the project, intent to maintain the boxes after installation and consideration of geographic location to ensure fair awarding across Canada. <strong>Please note there are no guarantees in the receipt of kits.</strong> Those interested should begin by reading through the How to: Build a Duck Box document to get a sense of what is involved, and check back in September for the availability of the application form.</li>
<li><a href="doc/how-to-support-restore-wetland.pdf" target="_blank">How to: Support/Restore a Wetland</a></li>
<li><a href="doc/alternative-activities-supporting-animal-habitats.pdf" target="_blank">Suggested Alternative Activities</a></li>
</ul>
<p><em class="sponsors">Visit our Sponsor:</em></p>
<a href="http://www.sfiprogram.org/" target="_blank"><img src="img/sfi-logo.png" alt="Sustainable Forestry Initiative"></a>
    </div>

    <div class="four columns">

      <!-- Reporting Form Button and Counter -->

      <h4>Log your actions starting September!</h4>

      <!--
      <div class="reporting">

        <h3>Batches Made:<asp:Label ID="lblHomemadeBatches" runat="server" Text="Label"></asp:Label></h3>      
        
        <p>
          <a id="homemadeButton" class="radius success button" data-reveal-id="unitHomemadeReport" href="#">Units Report Here</a>
        </p>
        <p>
          <a id="homemadeButton" class="radius success button" data-reveal-id="individualHomemadeReport" href="#">Individuals Report Here</a>
        </p>

      </div>
    
      <div class="side-image">
        <img id="homemade-image3" src="img/homemade-image3.png" alt="Homemade Products">
        <img id="homemade-image1" src="img/homemade-image1.png" alt="Homemade Products">
        <img id="homemade-image2" src="img/homemade-image2.png" alt="Homemade Products">
      </div>

    </div> -->

  </div> 

  <!-- Reporting Modal Begin -->

  
  <!-- Reporting Modal End -->
  
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
  
  <!-- Initialize JS Plugins -->
  <script src="js/app.js"></script>

 <script type="text/javascript">
     $(document).ready(function () {
         $('#unitHomemadeButton').click(function () {
             $('#unitHomemadeReport').reveal();
         });
         $('#individualHomemadeButton').click(function () {
             $('#individualHomemadeReport').reveal();
         });
     });
  </script>

      <script type="text/javascript">

          var validator = new FormValidator('homemadeForm', [{
              name: 'txtiMISU',
              display: 'iMIS #',
              rules: 'numeric'
          }, {
              name: 'txtNumGirlsU',
              display: '# of Girls',
              rules: 'numeric'
          }, {
              name: 'txtNumAdultsU',
              display: '# of Adults',
              rules: 'numeric'
          }, {
              name: 'txtNumNonMembersU',
              display: '# of Non-Members',
              rules: 'numeric'
          }, {
              name: 'txtLaundryU',
              display: 'Laundry detergent',
              rules: 'numeric'
          }, {
              name: 'txtCleanerU',
              display: 'All-purpose cleaner',
              rules: 'numeric'
          }, {
              name: 'txtShampooU',
              display: 'Shampoo',
              rules: 'numeric'
          }, {
              name: 'txtMaskU',
              display: 'Mask',
              rules: 'numeric'
          }, {
              name: 'txtiMISI',
              display: 'iMIS #',
              rules: 'numeric'
          }, {
              name: 'txtNumGirlsI',
              display: '# of Girls',
              rules: 'numeric'
          }, {
              name: 'txtNumAdultsI',
              display: '# of Adults',
              rules: 'numeric'
          }, {
              name: 'txtNumNonMembersI',
              display: '# of Non-Members',
              rules: 'numeric'
          }, {
              name: 'txtLaundryI',
              display: 'Laundry detergent',
              rules: 'numeric'
          }, {
              name: 'txtCleanerI',
              display: 'All-purpose cleaner',
              rules: 'numeric'
          }, {
              name: 'txtShampooI',
              display: 'Shampoo',
              rules: 'numeric'
          }, {
              name: 'txtMaskI',
              display: 'Mask',
              rules: 'numeric'
          }], function (errors, event) {
              var SELECTOR_ERRORS = $('.error_box'),
                SELECTOR_SUCCESS = $('.success_box');

              if (errors.length > 0) {
                  SELECTOR_ERRORS.empty();

                  for (var i = 0, errorLength = errors.length; i < errorLength; i++) {
                      SELECTOR_ERRORS.append(errors[i].message + '<br />');
                  }

                  SELECTOR_SUCCESS.css({ display: 'none' });
                  SELECTOR_ERRORS.fadeIn(200);

                  if (event && event.preventDefault) {
                      event.preventDefault();
                  }

              } else {
                  SELECTOR_ERRORS.css({ display: 'none' });
                  SELECTOR_SUCCESS.fadeIn(200);
              }

          });
    
    </script>

  </form>

</body>
</html>
