<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nsp-artwork.aspx.cs" Inherits="OEA.nsp_artwork" %>

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
    <form id="nspArtworkForm" runat="server">
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

<h1>Artwork Submissions</h1>
<p>Do you have a wonderful imagination? Show us!</p>
<p>Our National Service Project: <a href="http://nsp.girlguides.ca/index.aspx">Operation Earth Action</a> has  two new activities and we&rsquo;re looking for artwork from girl members to help us promote  them across Canada. We want everyone to learn about and <a href="http://nsp.girlguides.ca/habitat.aspx">support animal habitats</a>,  and to transform <a href="http://nsp.girlguides.ca/treasure.aspx">trash to treasure</a>. Which activity will you do? Maybe both?  Well, here&rsquo;s your next challenge:</p>
<h4><strong>Supporting  Animal Habitats</strong></h4>
<p>Have you ever imagined what your bedroom would look like  if you were a duck? Would the wallpaper look like trails of breadcrumbs? What  would your bedroom look like if you were a toad? Would the rug be a great big lily  pad?</p>
<p>Use your imagination and draw a picture of what you think  a duck, frog or bat&rsquo;s bedroom would look like. Email us a photo of your drawing  so that we can share it online with everyone! We&rsquo;ll collect all of the amazing  drawings, and together we will wallpaper our own online duck house. </p>
<p><a class="button" href="habitat-artwork.aspx">Submit Animal Habitat Artwork</a></p>
<h4><strong>Transforming  Trash to Treasure</strong></h4>
<p>What can you make from scraps of old newspapers? How  about a plastic water bottle? Use your imagination to see recycled material as more  than &lsquo;just&rsquo; trash, and turn it into treasure! Make jewellery, a picture frame  or artwork out of it and send us a photo of your treasure so that we can share  it online with everyone! Together we&rsquo;ll fill our online pirate chest with  photos of all of your treasures.</p>
<p><a class="button" href="treasure-artwork.aspx">Submit Trash to Treasure Artwork</a></p>

<h4><strong>Submission  instructions:</strong></h4>
<ul class="disc">
  <li>All  submissions must:</li>
  <ul class="circle">
    <li>Include your first and last name, age, branch  level and city.</li>
    <li>Photos should be submitted as jpeg files that  are no larger than 6 MB</li>
    <li>Ensure photos are clear and in focus so that  we can see the artwork</li>
    <li>Please do not include yourself (the artist)  in the photo</li>
  </ul>
  <li>Email  your electronic or scanned photos to <a href="mailto:submissions@girlguides.ca">submissions(@)girlguides(dot)ca</a></li>
  <li>Deadline:  5 PM EST, Earth Day, April 22, 2014</li>
</ul>
<p><strong>Note: </strong></p>
<ul class="disc">
  <li>Supporting Animal Habitat drawings can be  made using any medium (crayons, pencil crayons, markers, paint)</li>
  <li>Trash to Treasure crafts must be made from  materials generally found in the recycling bin or in the trash. Please do not  mail in the actual craft.</li>
  <li>If you do not have access to a scanner or  digital camera, we will accept habitat drawings or treasure photographs by mail  to the following address:</li>
</ul>
<blockquote><strong>Attn:  NSP Year 2 Team<br>
  c/o  Girl Guides of Canada –Guides du Canada<br>
  50  Merton Street<br>
  Toronto  Ontario M4S 1A3</strong></blockquote>

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
