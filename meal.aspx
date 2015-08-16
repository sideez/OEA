<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="meal.aspx.cs" Inherits="OEA.meal" %>

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
 
  

    <script type="text/javascript" language="javascript">
        function substractU() {
            var num1 = document.getElementById('txtMeal1U');
            var num2 = document.getElementById('txtMeal2U');
            if (num1.value !== '')
                if (num2.value !== '') {
                    document.getElementById('txtDistanceSavedU').value = parseInt(num1.value, 0) - parseInt(num2.value, 0);
                }
            }

            function substractI() {
                var num1 = document.getElementById('txtMeal1I');
                var num2 = document.getElementById('txtMeal2I');
                if (num1.value !== '')
                    if (num2.value !== '') {
                        document.getElementById('txtDistanceSavedI').value = parseInt(num1.value, 0) - parseInt(num2.value, 0);
                    }
            }
    </script>  


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
<form id="mealForm" name="mealForm" runat="server">

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
      
      <h1>Map your Meal</h1>
<p>In this activity, girls will investigate where their everyday food comes from. Girls and Units are encouraged to reach out to local grocers, farmers, and food producers to learn about the food local to their community and to Canada. Armed with this knowledge, they will shrink the "food miles" of a typical meal.</p>
<h3>Build This Into The Girls’ Program!</h3>
<ul class="disc">
<li>Sparks: Being Healthy or In My Community</li>
<li>Brownies: Key to My Community or Key to Active Living</li>
<li>Guides: Beyond You</li>
<li>Pathfinders: Getting Food on the Table</li>
<li>Rangers: Environment, Outdoors and Camping</li>
</ul>
<h4>Resources</h4>
<ul class="disc">
<li><a href="doc/how-to-map-your-meal.pdf" target="_blank">How To</a></li>
<li><a href="doc/getting-started--how-to-map-your-meal.pdf" target="_blank">Getting Started</a></li>
<li><a href="doc/why-this-is-important-backgrounder-map-your-meal.pdf" target="_blank">Why This is Important</a></li>
</ul>
<!-- <p><em class="sponsors">Visit our Sponsor:</em></p>
<a href="http://www.sobeyssustainability.com/en/home.aspx" target="_blank"><img src="img/sobeys-logo.png" alt="Sobeys"></a> -->

    </div>

    <div class="four columns">

      <!-- Reporting Form Button and Counter -->

      <div class="reporting">

        <h3>Kilometers Saved:</h3>
        <h3><asp:Label ID="lblMapMealDistanceSaved" runat="server" Text="Label"></asp:Label></h3>
        <p>
          <a id="mealButton" class="radius success button" data-reveal-id="unitMealReport" href="#">Units Report Here</a>
        </p>
        <p>
          <a id="mealButton" class="radius success button" data-reveal-id="individualMealReport" href="#">Individuals Report Here</a>
        </p>

      </div>      
    
      <div class="side-image">
        <img id="meal-image" src="img/meal-image.png" alt="Map Your Meal">
      </div>

    </div>

  </div>

  <!-- Reporting Modal Begin -->

  <div id="unitMealReport" class="reveal-modal medium">
    
 
      <fieldset>

        <legend><h3>Map your Meal Report</h3></legend>

        <div class="clearfix">
          
          <div class="six columns">
            <h4>For Units:</h4>

    <asp:Label ID="Label1" Text="Unit iMIS #" runat="server" />
    <asp:TextBox ID="txtiMISU" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" Text="# of Girls" runat="server" />
    <asp:TextBox ID="txtNumGirlsU" runat="server"></asp:TextBox>
    <asp:Label ID="Label4" Text="# of Adults" runat="server" />
    <asp:TextBox ID="txtNumAdultsU" runat="server"></asp:TextBox>
    <asp:Label ID="Label5" Text="# of Non-Members" runat="server" />
    <asp:TextBox ID="txtNumNonMembersU" runat="server"></asp:TextBox>

          </div>

          <div class="six columns">
            <h4>Meals (in kilometers):</h4>

        <asp:Label ID="Label6" Text="Meal #1 (KM)" runat="server" />
        <asp:TextBox ID="txtMeal1U" runat="server" onchange="substractU();"></asp:TextBox>        
        <asp:Label ID="Label7" Text="Meal #1 (KM)" runat="server" />
        <asp:TextBox ID="txtMeal2U" runat="server" onchange="substractU();"></asp:TextBox> 
        <h4 style="color: #00a74e;">Total Distance saved:</h4> 
            <asp:Label ID="lblTotalDistanceSavedU" runat="server"></asp:Label>            
            <asp:TextBox ID="txtDistanceSavedU" runat="server"></asp:TextBox>
   
          </div>
  
        </div>

        <div class="submit-button" style="margin: 14px 15px;">

          <asp:Button class="button" ID="btnMealRptU" runat="server" Text="Submit" onclick="btnMealRptU_Click"/>
          
        </div>

      </fieldset>
      <div class="success_box">All of the fields were successfully validated!</div>
      <div class="error_box"></div>
   

    <a class="close-reveal-modal">&#215;</a>

  </div>

  <div id="individualMealReport" class="reveal-modal medium">

   
      <fieldset>

        <legend><h3>Map your Meal Report</h3></legend>

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
            <h4>Meal (in kilometers):</h4>

            <asp:Label Text="Meal #1 (KM)" runat="server" />
            <asp:TextBox ID="txtMeal1I" runat="server"  onchange="substractI();"></asp:TextBox>
            <asp:Label Text="Meal #2 (KM)" runat="server" />
            <asp:TextBox ID="txtMeal2I" runat="server"   onchange="substractI();"></asp:TextBox>
          <h4 style="color: #00a74e;">Total Distance Saved:</h4> 
            <asp:Label ID="lblTotalDistanceSavedI" runat="server"></asp:Label>
            <asp:TextBox ID="txtDistanceSavedI" runat="server" ></asp:TextBox>
          </div>
         

        </div>

        <div class="submit-button" style="margin: 14px 15px;">

          <asp:Button ID="btnMealRptI" class="button" runat="server" Text="Submit"  onclick="btnMealRptI_Click" />
          
        </div>

      </fieldset>
      <div class="success_box">All of the fields were successfully validated!</div>
      <div class="error_box"></div>
  
    <a class="close-reveal-modal">&#215;</a>

  </div> <!-- Reporting Modal End -->  

  
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
          $('#unitMealButton').click(function () {
              $('#unitMealReport').reveal();
          });
          $('#individualMealButton').click(function () {
              $('#individualMealReport').reveal();
          });
      });
  </script>

      <script type="text/javascript">

          var validator = new FormValidator('mealForm', [{
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
              name: 'txtMeal1U',
              display: 'Meal 1',
              rules: 'numeric'
          }, {
              name: 'txtMeal2U',
              display: 'Meal 2',
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
              name: 'txtMeal1I',
              display: 'Meal 1',
              rules: 'numeric'
          }, {
              name: 'txtMeal2I',
              display: 'Meal 2',
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
