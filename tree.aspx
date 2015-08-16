<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tree.aspx.cs" Inherits="OEA.tree" %>

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
<form id="treeForm" name="treeForm" runat="server">
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
      
      <h1>Plant a Tree</h1>
<p>Tree planting is a powerful and compelling learning experience for girls, offering a hands-on way to raise their awareness of environmental issues while transforming green spaces in their communities. This activity will help bring girls and nature closer together as they make their communities greener and more liveable.</p>
<p>You can participate through:</p>
<ul class="disc">
<li>TD Tree Days (September 2012)</li>
<li>GGC TD FEF Tree Planting Grant</li>
<li>Your own tree planting project</li>
</ul>
<h3>Build This Into The Girls’ Program!</h3>
<ul class="disc">
<li>Sparks: Going Outside</li>
<li>Brownies: Key to the Living World</li>
<li>Guides: Beyond You</li>
<li>Pathfinders: Our Environment</li>
<li>Rangers: Environment, Outdoors and Camping</li>
</ul>
<h4>Resources</h4>
<ul class="disc">
<li><a href="https://www.girlguides.ca/GGC/Programs/Specialized_Programming/Tree_Planting/GGC/Programs/Specialized_Programming/Tree_Planting.aspx" target="_blank">How To</a></li>
<li><a href="doc/why-this-is-important-backgrounder-planting-a-tree.pdf" target="_blank">Why This is Important</a></li>
</ul>
<p><em class="sponsors">Visit our Sponsor:</em></p>
<a href="http://www.fef.td.com/" target="_blank"><img src="img/td-logo.png" alt="TD FEF"></a>

    </div>

    <div class="four columns">

      <!-- Reporting Form Button and Counter -->

      <div class="reporting">

        
        <h3>Trees Planted:<asp:Label ID="lblTreesplanted" runat="server" Text="Label"></asp:Label></h3>

        <p>
          <a id="treeButton" class="radius success button" data-reveal-id="unitTreeReport" href="#">Units Report Here</a>
        </p>
        <p>
          <a id="treeButton" class="radius success button" data-reveal-id="individualTreeReport" href="#">Individuals Report Here</a>
        </p>

      </div>
    
      <div class="side-image">
        <img id="tree-image" src="img/tree-image.png" alt="Plant a Tree">
      </div>

    </div>

  </div>

  <!-- Reporting Modal Begin -->

  <div id="unitTreeReport" class="reveal-modal medium">
    

      <fieldset>

        <legend><h3>Plant a Tree Report</h3></legend>

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


                <h4># of Trees Planted:</h4>
                
            <asp:Label Text="# of trees" runat="server" />
            <asp:TextBox ID="txtNumTreesU" runat="server"></asp:TextBox>

          </div>                  

          <div class="six columns">
            <p>Was your tree planting part of:</p>
            <p>
              <label for="TD">
                  <asp:CheckBox ID="chkCommEventU" runat="server" />               
                <span class="custom checkbox"></span> A large community event(e.g. TD Tree day)
              </label>
            </p>
                       
            <p>
              <label for="Grant">
                  <asp:CheckBox ID="chkGrantU" runat="server" />               
                <span class="custom checkbox"></span>A GGC TD FEF Tree Planting Grant
              </label>
            </p>

            <p>
              <label for="Own">
                  <asp:CheckBox ID="chkOwnU" runat="server" />               
                <span class="custom checkbox"></span>Your own tree planting project
              </label>
            </p>


          </div> 
          
                             

         </div>

          <div class="submit-button" style="margin: 14px 15px;">

          <asp:Button ID="btnTreesRptU"  class="button" runat="server" Text="Submit" onclick="btnTreesRptU_Click" />
         
        </div>

      </fieldset>
      <div class="success_box">All of the fields were successfully validated!</div>
      <div class="error_box"></div>


    <a class="close-reveal-modal">&#215;</a>

  </div>

  <div id="individualTreeReport" class="reveal-modal medium">


      <fieldset>

        <legend><h3>Plant a Tree Report</h3></legend>

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


               <h4># of Trees Planted:</h4>
              <asp:Label Text="# of trees" runat="server" />
            <asp:TextBox ID="txtNumTreesI" runat="server"></asp:TextBox>     


          </div>    
                    
         

          <div class="six columns">
            <p>Was your treee planting part of:</p>
            <p>
              <label for="TD">
                  <asp:CheckBox ID="chkCommEventI" runat="server" />               
                <span class="custom checkbox"></span> A large community event(e.g. TD Tree day)
              </label>
            </p>
                       
            <p>
              <label for="Grant">
                  <asp:CheckBox ID="chkGrantI" runat="server" />               
                <span class="custom checkbox"></span>A GGC TD FEF Tree Planting Grant
              </label>
            </p>

            <p>
              <label for="Own">
                  <asp:CheckBox ID="chkOwnI" runat="server" />               
                <span class="custom checkbox"></span>Your own tree planting project
              </label>
            </p>


          </div>
<%--<asp:comparevalidator ID="ComparevalidatoriMISI" runat="server" errormessage="Unit iMIS# must be a whole number" 
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
            Display="Dynamic" ForeColor="Red"></asp:comparevalidator>
            </br>

            <asp:comparevalidator ID="ComparevalidatorNumTreesI" runat="server" errormessage="# of Non-Members must be a whole number" 
    ControlToValidate="txtNumTreesI" Operator="DataTypeCheck" Type="Integer" 
            Display="Dynamic" ForeColor="Red"></asp:comparevalidator>
            
            
            --%>

        </div>

        <div class="submit-button" style="margin: 14px 15px;">
          <asp:Button ID="btnTreesRptI" class="button" runat="server" Text="Submit"  onclick="btnTreesRptI_Click"/>       
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
          $('#unitTreeButton').click(function () {
              $('#unitTreeReport').reveal();
          });
          $('#individualTreeButton').click(function () {
              $('#individualTreeReport').reveal();
          });
      });
  </script>

      <script type="text/javascript">

          var validator = new FormValidator('treeForm', [{
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
              name: 'txtNumTreesU',
              display: '# of Trees',
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
              name: 'txtNumTreesI',
              display: '# of Trees',
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
