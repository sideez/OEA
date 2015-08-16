<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pledge.aspx.cs" Inherits="OEA.pledge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<%--<form id="form2" runat="server">--%>
<!--[if gt IE 8]><!--> 
<%--<html class="no-js" lang="en">--%> <!--<![endif]-->

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

  <!--http://localhost:55684/WebService1.asmx -->

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
<form id="pledgeForm" name="pledgeForm" runat="server">
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

    <div class="six columns content">
      
      <h1>Pledge</h1>
      <p>GGC Members and supporters are asked to think about their personal impact on the environment and make a pledge to take action for a better environment. There are two specific actions we are asking Members to make:</p>
    </div>

    <div class="reporting">

       <h3>Total Pledges:<asp:Label ID="lblNumberPledges" runat="server"></asp:Label></h3>
 
      <p>
          <a id="pledgeButton" class="radius success button" data-reveal-id="unitPledgeReport" href="#">Units Pledge Here</a>
        </p>
       <p>
          <a id="pledgeButton" class="radius success button" data-reveal-id="individualPledgeReport" href="#">Individuals Pledge Here</a>
       </p>

    </div>

  </div>

  <div class="row pledge">

    <div class="six columns content">
      
      <h3>Reusable Water Bottles</h3>
      <h5>Total Pledges: <span>
          <asp:Label ID="lblNumberWBPledges" runat="server" Text=""></asp:Label>
          </span></h5>
      <p>Recycling is great, but let’s start with the first “R” – Reduce! Girls and Units are encouraged to think about all the one-use drink bottles they use and pledge to instead use a reusable bottle whenever possible.</p>
      <p>Show the world how GGC reduces waste with one of our reusable drink containers, like this <a href="https://www.thegirlguidestore.ca/product_detail.aspx?ItemNumber=EDmsDOxL%2bT8%3d" target="_blank">fashionable tumbler</a> available from the Girl Guide Store!</p>
      <h4>Resources</h4>
      <ul class="disc">
        <li><a href="doc/backgrounder-bottles-bags.pdf" target="_blank">Why This is Important</a></li>
      </ul>

    </div>

    <div class="six columns content">
    
      <h3>Reusable Shopping Bags</h3>
      <h5>Total Pledges: <span><asp:Label ID="lblNumberSBPledges" runat="server" Text=""></asp:Label></span></h5>
      <p>Whether paper or plastic, one-use bags use a lot of resources and create a lot of waste. Instead, girls and Units will use their crafting skills to “upcycle” their own reusable bags out of old t-shirts, like maybe an old GGC uniform t-shirt or a favourite that they have grown out of.</p>
      <h4>Resources</h4>
      <ul class="disc">
        <li><a href="doc/how-to-upstyle-an-old-tshirt-into-a-reusable-bag.pdf" target="_blank">How to upstyle an old T-shirt into a reusable bag</a></li>
        <li><a href="doc/backgrounder-using-reusable-bottles-and-bags.pdf" target="_blank">Why This is Important</a></li>
      </ul>
      <p><em class="sponsors">Visit our Sponsor:</em></p>
      <a href="http://loblaw.ca/" target="_blank"> <img src="img/loblaw-logo.png" alt="Loblaw"></a>

    </div>  

  </div>

    <!-- Reporting Modal Begin -->

  <div id="unitPledgeReport" class="reveal-modal medium">
   
      <fieldset>

        <legend><h3>Reusable water bottle, shopping bags Report</h3></legend>

        <div class="clearfix">
          
          <div class="six columns">
            <h4>For Units:</h4>

              <asp:Label ID="Label1" Text="Unit iMIS #" runat="server" />
              <asp:TextBox ID="txtiMISU" runat="server"></asp:TextBox>
              <asp:Label Text="# of Girls" runat="server" />
              <asp:TextBox ID="txtNumGirlsU" runat="server"></asp:TextBox>
              <asp:Label Text="# of Adults" runat="server" />
              <asp:TextBox ID="txtNumAdultsU" runat="server"></asp:TextBox>
              <asp:Label Text="# of Non-Members" runat="server" />
              <asp:TextBox ID="txtNumNonMembersU" runat="server"></asp:TextBox>


          </div>

          <div class="six columns">
            <p>I/we pledge to take action for a better environment by:</p>
            <p>
              <label for="waterBottles">
                  <asp:CheckBox ID="chkWaterBottlesU" runat="server" />
               
                <span class="custom checkbox"></span> Using a reusable water bottle whenever possible.
              </label>
            </p>
            <p>
              <label for="shoppingBags">
                  <asp:CheckBox ID="chkShoppingBagsU" runat="server" />
                
                <span class="custom checkbox"></span> Using a reusable shopping bags whenever possible.
              </label>
            </p>
          </div>
          </div>
            <div class="submit-button" style="margin: 14px 15px;">
            <asp:Button ID="btnPledgeRptU" class="button" runat="server" Text="Submit"  onclick="btnPledgeRptU_Click"/> 
      
 </div>

      </fieldset>
      <div class="success_box">All of the fields were successfully validated!</div>
      <div class="error_box"></div>
  
   
  <a class="close-reveal-modal">&#215;</a>
  </div>
  <div id="individualPledgeReport" class="reveal-modal medium">


      <fieldset>

        <legend><h3>Reusable water bottle, shopping bags Report</h3></legend>

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
            <p>I/we pledge to take action for a better environment by:</p>
            <p>
              <label for="waterBottles">
              <asp:CheckBox ID="chkWaterBottlesI" runat="server" />               
                <span class="custom checkbox"></span> Using a reusable water bottle whenever possible.
              </label>
            </p>
            <p>
              <label for="shoppingBags">
              <asp:CheckBox ID="chkShoppingBagsI" runat="server" />           
                <span class="custom checkbox"></span> Using a reusable shopping bags whenever possible.
              </label>
            </p>
          </div>

        </div>

       <%-- <asp:requiredfieldvalidator ID="RequiredfieldvalidatoriMISI" runat="server" 
    errormessage="Individual iMIS# must be a whole number" ControlToValidate="txtiMISI" 
            Display="Dynamic"></asp:requiredfieldvalidator>
            <br />

<asp:comparevalidator ID="ComparevalidatoriMISI" runat="server" errormessage="Unit iMIS# must be a whole number" 
    ControlToValidate="txtiMISI" Operator="DataTypeCheck" Type="Integer" 
            Display="Dynamic" ForeColor="Red"></asp:comparevalidator>

             <br />

            <asp:comparevalidator ID="ComparevalidatorNumGirlsI" runat="server" errormessage="# of Girls must be a whole number" 
    ControlToValidate="txtNumGirlsI" Operator="DataTypeCheck" Type="Integer" 
            Display="Dynamic" ForeColor="Red"></asp:comparevalidator>

             <br />

            <asp:comparevalidator ID="ComparevalidatorNumAdultsI" runat="server" errormessage="# of Adults must be a whole number" 
    ControlToValidate="txtNumAdultsI" Operator ="DataTypeCheck" Type="Integer" 
            Display="Dynamic" ForeColor="Red"></asp:comparevalidator>

             <br />

            <asp:comparevalidator ID="ComparevalidatorNumNonMembersI" runat="server" errormessage="# of Non-Members must be a whole number" 
    ControlToValidate="txtNumNonMembersI" Operator="DataTypeCheck" Type="Integer" 
            Display="Dynamic" ForeColor="Red"></asp:comparevalidator>--%>


        <div class="submit-button" style="margin: 14px 15px;">
            <asp:Button ID="btnPledgeRptI" class="button" runat="server" Text="Submit"  onclick="btnPledgeRptI_Click"/> 
                   
        
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
          $('#unitPledgeButton').click(function () {
              $('#unitPledgeReport').reveal();
          });
          $('#individualPledgeButton').click(function () {
              $('#individualPledgeReport').reveal();
          });
      });
  </script>

      <script type="text/javascript">

          var validator = new FormValidator('pledgeForm', [{
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


