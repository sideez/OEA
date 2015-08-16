<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="treasure-artwork.aspx.cs" Inherits="OEA.treasure_artwork" %>

<!DOCTYPE>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <form id="treasureArtworkForm" runat="server">
  

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

    <div class="twelve columns content">
    
    <h1>Trash to Treasure Artwork</h1>
<p>What can you make from scraps of old newspapers? How  about a plastic water bottle? Here are photos of artwork created by our girl  members that transformed trash into treasure! <a href="nsp-artwork.aspx">Would you like to submit your  artwork photograph?</a> Don&rsquo;t forget to visit our <a href="habitat-artwork.aspx">Build an Animal Habitat  artwork</a> too!</p>

  </div>


  </div>


    </form>

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
  
  <!-- Initialize JS Plugins -->
  <script src="js/app.js"></script>

</body>
</html>
