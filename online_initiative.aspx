<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="online_initiative.aspx.cs" Inherits="OEA.online_initiative" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
  <link rel="stylesheet" href="css/general_foundicons.css">
  <link rel="stylesheet" href="css/general_foundicons_ie7.css">

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
      
      <h1 class="text-center">Online Initiative</h1>
      <div class="row">
        <div class="five columns">
          <iframe width="350" height="200" src="http://www.youtube.com/embed/FVebgsnvdpE" frameborder="0" allowfullscreen=""></iframe>
        </div>
        <div class="seven columns">
          <div class="star-divider text-center">
            <i class="general foundicon-star"></i>
            <i class="general foundicon-star"></i>
            <i class="general foundicon-star"></i>
          </div>
          <h4 class="oi-message text-center">
            For <strong>Operation Earth Action</strong> we are looking to collect images of your pledge and activities to inspire others to do their part!
          </h4>
          <div class="star-divider text-center">
            <i class="general foundicon-star"></i>
            <i class="general foundicon-star"></i>
            <i class="general foundicon-star"></i>
          </div>
        </div>
      </div>
      
      <hr>
      
      <h2 class="text-center">How To Participate</h2>
      <p class="text-center"><strong>Take the following 3 pictures of your Unit as you pledge and do one of the suggested activities!</strong></p>
      <div class="row three-steps">
        <div class="four columns">
          <div class="step text-center">
            <h2>Step 1:</h2>
            <h5>Take a pledge picture</h5>
            <a href="http://www.flickr.com/photos/girlguidesofcan/sets/72157625172450989/" target="_blank"><img src="img/NSP2012_Unit2ndChilliwackGirlGuides_Pledge.jpg" alt="Pledge"></a>
          </div>     
        </div>
        
        <div class="four columns">
          <div class="step text-center">
            <h2>Step 2:</h2>
            <h5>During your activity</h5>
            <a href="http://www.flickr.com/photos/girlguidesofcan/sets/72157625172450989/" target="_blank"><img src="img/NSP2012_Unit2ndChilliwackGirlGuides_Activity.jpg" alt="Activity"></a>
          </div>
          <i class="general foundicon-right-arrow"></i>
        </div>
        
        <div class="four columns">
          <div class="step text-center">
            <h2>Step 3:</h2>
            <h5>Accomplishment Picture</h5>
            <a href="http://www.flickr.com/photos/girlguidesofcan/sets/72157625172450989/" target="_blank"><img src="img/NSP2012_Unit2ndChilliwackGirlGuides_Achieve.jpg" alt="Accomplishment"></a>
          </div>
          <i class="general foundicon-right-arrow"></i>
        </div>
      </div>
      
      <div>
        <br>
        <p class="text-center">
          <a id="photoSubmit" class="radius success button" data-reveal-id="howToSubmit" href="#">How To Submit</a>
          <a class="radius success button" href="http://www.flickr.com/photos/girlguidesofcan/sets/72157625172450989/" target="_blank">View Gallery</a>
        </p>
      </div>

    </div>

  </div>
  
  <div id="howToSubmit" class="reveal-modal medium">
  
    <h1>How to Submit:</h1>
    <p>Submit your 3 pictures by email to <a href="mailto:programs@girlguides.ca">programs@girlguides.ca</a>, including the following information:</p>
    <ul>
      <li>Unit name, City, Province </li>
      <li>Text on Pledge poster</li>
      <li>Name of the NSP activity that the Unit completed</li>
      <li>IR1s signed and with the Unit Guider</li>
      <li>1 - 2 testimonials from the girls participating</li>
      <li>Name of Photographer</li>
    </ul>
    <p><strong>Submission Details:</strong></p>
    <ul class="disc">
      <li>Images submitted can be jpeg, jpg, png, gif</li>
      <li>Total image size should not exceed 6MB</li>
      <li>Pledges can be written and submitted in English or in French</li>
      <li>Submission deadline: 5 PM EST Friday April 19, 2012</li>
      <li>Photo titles:</li>
      <ul class="circle">
        <li>Pledge Picture: NSP2012_Unit[insert name here]_Pledge</li>
        <li>Activity picture: NSP2012_Unit[insert name here]_Activity</li>
        <li>Achievement picture: NSP2012_Unit[insert name here]_Achieve</li>
      </ul>
    </ul>
    
    <a class="close-reveal-modal">&#215;</a>
        
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
