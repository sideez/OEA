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
<form id="habitatForm" name="habitatForm" runat="server">
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
        Sixty duck box kits will be available in September, with a maximum of three kits per unit. Awarding of kits will be based on a completed application showing a strong dedication to the project, intent to maintain the boxes after installation and consideration of geographic location to ensure fair awarding across Canada. <strong>Please note there are no guarantees in the receipt of kits.</strong> Those interested should begin by reading through the How to: Build a Duck Box document to get a sense of what is involved.</li>
      <li><a href="doc/how-to-simplified-duck-box-instructions.pdf" target="_blank">How to build a duck box: Simplified Version</a></li>
      <li><a href="doc/duck-box-application.pdf" target="_blank">Duck Box Application</a></li>
      <li><a href="doc/how-to-support-restore-a-wetland.pdf" target="_blank">How to: Support/Restore a Wetland</a></li>
      <li><a href="doc/alternative-activities-supporting-animal-habitats.pdf" target="_blank">Suggested Alternative Activities</a></li>
      </ul>
      <p><em class="sponsors">Visit our Sponsor:</em></p>
      <a href="http://www.sfiprogram.org/" target="_blank"><img src="img/sfi-logo.png" alt="Sustainable Forestry Initiative"></a>

    </div>

    <div class="four columns">

        <div class="reporting">

            <h3 align="left">Habitats Built/Supported:<asp:Label ID="lblHabitatPreservationCount" runat="server" Text="Label"></asp:Label></h3>      
        
            <p>
              <a id="habitatButtonU" class="radius success button" data-reveal-id="unitHabitatReport" href="#">Units Report Here</a>
            </p>
            <p>
              <a id="habitatButtonI" class="radius success button" data-reveal-id="individualHabitatReport" href="#">Individuals Report Here</a>
            </p>

        </div>

    </div>

  </div>

  <!-- Reporting Modal Begin -->

  <div id="unitHabitatReport" class="reveal-modal medium">
    
   
    <fieldset>

      <legend><h3>Animal Habitat Report</h3></legend>

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

          <h4># of Habitats Built/Supported:</h4>
          <asp:Label Text="Duck Boxes" runat="server" />
          <asp:TextBox ID="txtDuckBoxesU" runat="server"></asp:TextBox>
          <asp:Label Text="Wetlands" runat="server" />
          <asp:TextBox ID="txtWetlandsU" runat="server"></asp:TextBox>
          <asp:Label Text="Bat Boxes" runat="server" />
          <asp:TextBox ID="txtBatBoxesU" runat="server"></asp:TextBox>
          <asp:Label Text="Garden/Outdoor Spaces Certified" runat="server" />
          <asp:TextBox ID="txtGardenOutdoorU" runat="server"></asp:TextBox>
          <asp:Label Text="Toad Abodes" runat="server" />
          <asp:TextBox ID="txtToadAbodesU" runat="server"></asp:TextBox>
          <asp:Label Text="Other" runat="server" />
          <textarea ID="txtOtherU" runat="server" cols="20" rows="2"></textarea>
          <asp:Label Text="# of Other Habitats Built" runat="server" />
          <asp:TextBox ID="txtOtherHabitatsU" runat="server"></asp:TextBox>
         
        </div>    

      </div>

      <div class="submit-button" style="margin: 14px 15px;">

          <asp:Button class="button" ID="btnHabitatRptU" runat="server" Text="Submit"  onclick="btnHabitatRptU_Click"/>
        
      </div>

    </fieldset>

    <div class="success_box">All of the fields were successfully validated!</div>
    <div class="error_box"></div>
 

    <a class="close-reveal-modal">&#215;</a>

  </div>

  <div id="individualHabitatReport" class="reveal-modal medium">

   
    <fieldset>

      <legend><h3>Animal Habitat Report</h3></legend>

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

          <h4># of Habitats Built/Supported:</h4>
          <asp:Label Text="# of Duck Boxes" runat="server" />
          <asp:TextBox ID="txtDuckBoxesI" runat="server"></asp:TextBox>
          <asp:Label Text="# of Wetlands" runat="server" />
          <asp:TextBox ID="txtWetlandsI" runat="server"></asp:TextBox>
          <asp:Label Text="# of Bat Boxes" runat="server" />
          <asp:TextBox ID="txtBatBoxesI" runat="server"></asp:TextBox>
          <asp:Label Text="# of Garden/Outdoor Spaces Certified" runat="server" />
          <asp:TextBox ID="txtGardenOutdoorI" runat="server"></asp:TextBox>
          <asp:Label Text="# of Toad Abodes" runat="server" />
          <asp:TextBox ID="txtToadAbodesI" runat="server"></asp:TextBox>
          <asp:Label Text="Other" runat="server" />
          <textarea ID="txtOtherI" runat="server" cols="20" rows="2"></textarea>
          <asp:Label Text="# of Other Habitats Built" runat="server" />
          <asp:TextBox ID="txtOtherHabitatsI" runat="server"></asp:TextBox>              
                           
        </div>

      </div>

      <div class="submit-button" style="margin: 14px 15px;">

       <asp:Button ID="btnHabitatRptI" class="button" runat="server" Text="Submit"  onclick="btnHabitatRptI_Click" />
       
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
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/foundation.min.js"></script>
  <script type="text/javascript" src="js/validate.min.js"></script>
  
  <!-- Initialize JS Plugins -->
  <script type="text/javascript" src="js/app.js"></script>

 <script type="text/javascript">
     $(document).ready(function () {
         $('#unitHabitatButton').click(function () {
             $('#unitHabitatReport').reveal();
         });
         $('#individualHabitatButton').click(function () {
             $('#individualHabitatReport').reveal();
         });
     });
  </script>

      <script type="text/javascript">

          var validator = new FormValidator('habitatForm', [{
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
              name: 'txtDuckBoxesU',
              display: 'Duck Boxes',
              rules: 'numeric'
          }, {
              name: 'txtWetlandsU',
              display: 'Wetlands',
              rules: 'numeric'
          }, {
              name: 'txtBatBoxesU',
              display: 'Bat Boxes',
              rules: 'numeric'
          }, {
              name: 'txtGardenOutdoorU',
              display: 'Garden Outdoor',
              rules: 'numeric'
          }, {
              name: 'txtToadAbodesU',
              display: 'Toad Abodes',
              rules: 'numeric'
          }, {
              name: 'txtOtherU',
              display: 'Other',
              rules: 'alpha_numeric'
          }, {
              name: 'txtOtherHabitatsU',
              display: '# of Other Habitats Built',
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
              name: 'txtDuckBoxesI',
              display: 'Duck Boxes',
              rules: 'numeric'
          }, {
              name: 'txtWetlandsI',
              display: 'Wetlands',
              rules: 'numeric'
          }, {
              name: 'txtBatBoxesI',
              display: 'Bat Boxes',
              rules: 'numeric'
          }, {
              name: 'txtGardenOutdoorI',
              display: 'Garden Outdoor',
              rules: 'numeric'
          }, {
              name: 'txtToadAbodesI',
              display: 'Toad Abodes',
              rules: 'numeric'
          }, {
              name: 'txtOtherI',
              display: 'Other',
              rules: 'alpha_numeric'
          }, {
              name: 'txtOtherHabitatsI',
              display: '# of Other Habitats Built',
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