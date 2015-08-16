<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="OEA.index" %>

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

    <div class="twelve columns content">
      
      <h1>Operation Earth Action</h1>
      <p>The 2012-2013 National Service Project encourages Members to work together and make a difference in the world! Operation Earth Action focuses on doing service for the environment in fun and inspiring ways.</p>
      <p>There are pledges and activities to help girls make a personal impact on the environment:</p>
      <ol>
        <li>Pledge to use reusable: water bottles and/or shopping bags. (Any pledges are considered 1 activity.)</li>
        <li>Take action by completing the following:</li>
        <ul class="disc">
            <li>Map your meal</li>
            <li>Make your own green products</li>
            <li>Plant a tree</li>
            <li>Be an energy detective</li>
        </ul>
      </ol>
      <p>Don’t forget to track your progress through pictures to be part of our supplementary <a href="http://nsp.girlguides.ca/online_initiative.aspx">online "We Pledge" initiative</a>.</p>
      <h4>Who</h4>
      <p>This project is open to all Girl Guides of Canada Members as part of their Unit activities or individual participation. Non-members can also show their support by participating with a Unit activity (e.g. at a tree planting event) or as an individual (with a Guiding Member to use reusable shopping bags).</p>
      <h4>Recognition</h4>
      <p>Earn your Operation Earth Action <a href="https://thegirlguidestore.ca/product_detail.aspx?ItemNumber=vvUZ9%2bmEeWI%3d" target="_blank">crest</a> by doing at least two activities.</p>
      <h4>Help</h4>
      <p><a href="mailto:programs@girlguides.ca">Contact us</a> to connect with a Green Agent near you.</p>
      <h4>Resources</h4>
      <ul class="disc">
        <li><a href="doc/how-to-get-involved.pdf" target="_blank">How to get involved</a></li>
        <li><a href="doc/operation-earth-action.pdf" target="_blank">Operation Earth Action: Complete Package</a></li>
      </ul>

    </div>

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
  
  <!-- Initialize JS Plugins -->
  <script src="js/app.js"></script>

</body>
</html>
