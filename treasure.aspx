﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="treasure.aspx.cs" Inherits="OEA.treasure" %>

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
<form id="treasureForm" name="treasureForm" runat="server">
  <div class="row header">

    <div class="two columns nsp-logo-nav">
          
      <div class="left">
        
        <a href="index.aspx">
          <img src="img/new-nsp-logo.png" alt="National Service Project" title="National Service Project Logo">
        </a>

      </div>  

    </div>

    <div class="five columns nsp-project-title">
      <h3>National Service Project:</h3>
      <h4>Operation Earth Action</h4>
    </div>

    <div class="five columns text-right title-sponsor">

      <a href="http://www.girlguides.ca">
        <img src="img/152px-ggc-logo.png" alt="Girl Guides of Canada" title="Girl Guides of Canada">
      </a>
      
      <a href="http://www.td.ca">
        <img src="img/200px-td-logo.png" alt="TD Friends of the Environment" title="TD Friends of the Environment">
      </a>

    </div>

  </div>

  <div class="row nav-bg">
    
    <nav class="twelve columns primary">

        <ul class="no-bullet">

          <li>
            <a href="pledge.aspx">
              <i class="icon-pledge" title="Pledge"></i>
              <!-- <p class="nav-title">Pledge</p> -->
              <div class="nav-border"></div>
            </a>
          </li>

          <li>
            <a href="meal.aspx">
              <i class="icon-map-your-meals" title="Map Your Meals"></i>
              <!-- <p class="nav-title">Map Your Meal</p> -->
              <div class="nav-border"></div>
            </a>
          </li>

          <li>
            <a href="homemade.aspx">
              <i class="icon-green-products" title="Homemade Green Products"></i>
              <!-- <p class="nav-title">Homemade Green Products</p> -->
              <div class="nav-border"></div>
            </a>
          </li>

          <li>
            <a href="tree.aspx">
              <i class="icon-plant-a-tree" title="Plant a Tree"></i>
              <!-- <p class="nav-title">Plant a Tree </p> -->
              <div class="nav-border"></div>
            </a>
          </li>

          <li>
            <a href="energy.aspx">
              <i class="icon-energy-detective" title="Be an Energy Detective"></i>
              <!-- <p class="nav-title">Be an Energy Detective</p> -->
              <div class="nav-border"></div>
            </a>
          </li>
          <li>
            <a href="habitat.aspx">
              <i class="icon-animal-habitat" title="Supporting Animal Habitats"></i>
              <!-- <p class="nav-title">Supporting Animal Habbitat</p> -->
              <div class="nav-border"></div>
            </a>
          </li>
          <li>
            <a href="treasure.aspx">
              <i class="icon-trash-to-treasure" title="Transforming Trash to Treasure"></i>
              <!-- <p class="nav-title">Transforming Trash to Treasure</p> -->
              <div class="nav-border"></div>
            </a>
          </li>

        </ul>

      </nav>

  </div>

  <div class="row main">

  <div class="eight columns content">
      
    <h1>Transforming Trash to Treasure</h1>
<p>Building on the idea that &quot;one person's trash is another&rsquo;s  treasure&quot;, girls are challenged to find new ways to use items and materials  they might otherwise consider throwing away. By finding new purposes and uses for things they no longer want, the three R's are given practical meaning. Girls will learn hands-on about the impact of cutting down on waste and how simple steps can have a major environmental impact while spending little money in completing their activities.</p>
<h3>Build This Into The Girls' Program!</h3>
<ul class="disc">
<li>Sparks: In My Community Keeper</li>
<li>Brownies: Key to My Community or Key to the Living World</li>
<li>Guides: Beyond You</li>
<li>Pathfinders: Our Environment</li>
<li>Rangers: Environment, Outdoors and Camping</li>
</ul>
<h4>Resources</h4>
<ul class="disc">
<li><a href="doc/backgrounder-transforming-trash-to-treasure.pdf" target="_blank">Backgrounder</a></li>
<li><a href="doc/how-to-wool-dryer-balls.pdf" target="_blank">How to: Make Wool Dryer Balls</a></li>
<li><a href="doc/alternative-activities-trash-to-treasure.pdf" target="_blank">Suggested Alternative Activities</a></li>
</ul>

    </div>

    <div class="four columns">

      <!-- Reporting Form Button and Counter -->

      <!-- <h4>Log your actions starting September!</h4> -->

      
      <div class="reporting">

        <h3>Items Transformed:<asp:Label ID="lblTrashToTreasureCount" runat="server" Text="Label"></asp:Label></h3>      
        
        <p>
          <a id="treasureButton" class="radius success button" data-reveal-id="unitTreasureReport" href="#">Units Report Here</a>
        </p>
        <p>
          <a id="treasureButton" class="radius success button" data-reveal-id="individualTreasureReport" href="#">Individuals Report Here</a>
        </p>

      </div>
    
      <!--
      <div class="side-image">
        <img id="homemade-image3" src="img/homemade-image3.png" alt="Homemade Products">
        <img id="homemade-image1" src="img/homemade-image1.png" alt="Homemade Products">
        <img id="homemade-image2" src="img/homemade-image2.png" alt="Homemade Products">
      </div>
      -->

    </div>

  </div> 

  <!-- Reporting Modal Begin -->

  <div id="unitTreasureReport" class="reveal-modal medium">
    
   
      <fieldset>

        <legend><h3>Trash to Treasure Report</h3></legend>

        <div class="clearfix">
          
          <div class="six columns">
            <h4>For Units:</h4>
    
    <asp:Label Text="Unit iMIS #" runat="server" />        
    <asp:TextBox ID="txtiMISU" runat="server"></asp:TextBox>
    <asp:Label Text="# of Girls" runat="server" />
    <asp:TextBox ID="txtNumGirlsU" runat="server"></asp:TextBox>
    <asp:Label Text="# of Adults" runat="server" />
    <asp:TextBox ID="txtNumAdultsU" runat="server"></asp:TextBox>
    <asp:Label Text="# of Non-Members" runat="server" />
    <asp:TextBox ID="txtNumNonMembersU" runat="server"></asp:TextBox>
          </div>

          <div class="six columns">
            <h4># of Items Transformed:</h4>

        <asp:Label Text="Dryer Balls Made" runat="server" />
        <asp:TextBox ID="txtDryerBallsU" runat="server"></asp:TextBox>
        <asp:Label Text="Paper/Seed Paper Made" runat="server" />
        <asp:TextBox ID="txtPaperSeedU" runat="server"></asp:TextBox>
        <asp:Label Text="Swap Events Hosted" runat="server" />
        <asp:TextBox ID="txtSwapEventsU" runat="server"></asp:TextBox>
        <asp:Label Text="Tote Bags Made" runat="server" />
        <asp:TextBox ID="txtToteBagsU" runat="server"></asp:TextBox>
        <asp:Label Text="Cards and Wrapping Paper Made" runat="server" />
        <asp:TextBox ID="txtCardsWrappingPaperU" runat="server"></asp:TextBox>
        <asp:Label Text="Other" runat="server" />
        <textarea ID="txtOtherU" runat="server" cols="20" rows="2"></textarea>
        <asp:Label Text="# of Other Items" runat="server" />
        <asp:TextBox ID="txtOtherItemsU" runat="server"></asp:TextBox>
           
          </div>    



        </div>

        <div class="submit-button" style="margin: 14px 15px;">

            <asp:Button class="button" ID="btnTreasureRptU" runat="server" Text="Submit"  onclick="btnTreasureRptU_Click"/>
          
        </div>

      </fieldset>
      <div class="success_box">All of the fields were successfully validated!</div>
      <div class="error_box"></div>
   

    <a class="close-reveal-modal">&#215;</a>

  </div>

  <div id="individualTreasureReport" class="reveal-modal medium">

   
      <fieldset>

        <legend><h3>Trash to Treasure Report</h3></legend>

        <div class="clearfix">
          
          <div class="six columns">
            <h4>For Individuals:</h4>

            
                <asp:Label Text="Personal iMIS #" runat="server" />
              <asp:TextBox ID="txtiMISI" runat="server"></asp:TextBox>
                <asp:Label Text="# of Girls" runat="server" />
              <asp:TextBox ID="txtNumGirlsI" runat="server"></asp:TextBox>
                <asp:Label Text="# of Adults" runat="server" />
              <asp:TextBox ID="txtNumAdultsI" runat="server"></asp:TextBox>
                <asp:Label Text="# of Non-Members" runat="server" />
              <asp:TextBox ID="txtNumNonMembersI" runat="server"></asp:TextBox>

          </div>

          <div class="six columns">
            <h4># of Items Transformed:</h4>

        <asp:Label Text="# of Dryer Balls Made" runat="server" />
        <asp:TextBox ID="txtDryerBallsI" runat="server"></asp:TextBox>
        <asp:Label Text="# of Paper/Seed Paper Made" runat="server" />
        <asp:TextBox ID="txtPaperSeedI" runat="server"></asp:TextBox>
        <asp:Label Text="# of Swap Events Hosted" runat="server" />
        <asp:TextBox ID="txtSwapEventsI" runat="server"></asp:TextBox>
        <asp:Label Text="# of Tote Bags Made" runat="server" />
        <asp:TextBox ID="txtToteBagsI" runat="server"></asp:TextBox>
        <asp:Label Text="# of Cards and Wrapping Paper Made" runat="server" />
        <asp:TextBox ID="txtCardsWrappingPaperI" runat="server"></asp:TextBox>
        <asp:Label Text="Other" runat="server" />
        <textarea ID="txtOtherI" runat="server" cols="20" rows="2"></textarea>
        <asp:Label Text="# of Other Items" runat="server" />
        <asp:TextBox ID="txtOtherItemsI" runat="server"></asp:TextBox>               
                             
          </div>
         

        </div>

        <div class="submit-button" style="margin: 14px 15px;">
         <asp:Button ID="btnTreasureRptI" class="button" runat="server" Text="Submit" onclick="btnTreasureRptI_Click" />
         
        </div>

      </fieldset>
      <div class="success_box">All of the fields were successfully validated!</div>
      <div class="error_box"></div>
   

    <a class="close-reveal-modal">&#215;</a>

  </div>
  
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
         $('#unitTreasureButton').click(function () {
             $('#unitTreasureReport').reveal();
         });
         $('#individualTreasureButton').click(function () {
             $('#individualTreasureReport').reveal();
         });
     });
  </script>

      <script type="text/javascript">

          var validator = new FormValidator('treasureForm', [{
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
              name: 'txtDryerBallsU',
              display: 'Dryer Balls Made',
              rules: 'numeric'
          }, {
              name: 'txtPaperSeedU',
              display: 'Paper/Seed Paper Made',
              rules: 'numeric'
          }, {
              name: 'txtSwapEventsU',
              display: 'Swap Events Hosted',
              rules: 'numeric'
          }, {
              name: 'txtToteBagsU',
              display: 'Tote Bags Made',
              rules: 'numeric'
          }, {
              name: 'txtCardsWrappingPaperU',
              display: 'Cards and Wrapping Paper Made',
              rules: 'numeric'
          }, {
              name: 'txtOtherU',
              display: 'Other',
              rules: 'aplha_numeric'
          }, {
              name: 'txtOtherItemsU',
              display: '# of Other Items',
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
              name: 'txtDryerBallsI',
              display: 'Dryer Balls Made',
              rules: 'numeric'
          }, {
              name: 'txtPaperSeedI',
              display: 'Paper/Seed Paper Made',
              rules: 'numeric'
          }, {
              name: 'txtSwapEventsI',
              display: 'Swap Events Hosted',
              rules: 'numeric'
          }, {
              name: 'txtToteBagsI',
              display: 'Tote Bags Made',
              rules: 'numeric'
          }, {
              name: 'txtCardsWrappingPaperI',
              display: 'Cards and Wrapping Paper Made',
              rules: 'numeric'
          }, {
              name: 'txtOtherI',
              display: 'Other',
              rules: 'aplha_numeric'
          }, {
              name: 'txtOtherItemsI',
              display: '# of Other Items',
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
