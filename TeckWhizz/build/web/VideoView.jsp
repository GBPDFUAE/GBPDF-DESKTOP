<%-- 
    Document   : Login
    Created on : Jul 14, 2020, 10:43:15 PM
    Author     : RedBoxz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<title>Wishtopia</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="assets/css/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=sora">
   <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/mob.css">
<style>
body,h1 {font-family: "sora", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('assets/images/bg1.jpeg');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}
</style>
<link rel='stylesheet' href='https://vjs.zencdn.net/c/video-js.css'><link rel="stylesheet" href="assets/css/video.css">
<body>

    <!-- Sidebar (hidden by default) -->
<!--<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:30%;min-width:180px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">X</a>
  <a href="#"  class="w3-bar-item w3-button">Profile</a>
  <a href="#" class="w3-bar-item w3-button">About</a>
</nav>-->

<!-- Top menu -->
<div class="w3-top">
  <div class="w3-white w3-xlarge" style="width:100%;margin:auto">
      <div class="w3-button w3-padding-16 w3-left" ><a href="ch1.jsp"><img src="assets/icons/back.png" alt="logo"width="40" height="30"></a></div>
      <div class="w3-right w3-padding-16"><a href="#"><img src="assets/icons/bell.png" alt="logo" width="35" height="45">&nbsp;</a></div>
<!--      <div class="w3-center w3-padding-16">Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>-->

  <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="70" height="30">&nbsp;&nbsp;&nbsp;</div>  
  </div>
</div>
  
<div class="bgimg w3-display-container w3-animate-opacity w3-text-white" >
    
  <div class="w3-display-topleft w3-padding-large w3-xlarge">
<!--      <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">-->

          </nav>
  </div>
    <div class="w3-display-middle" >
      <div class="card "style="padding-bottom: 30%;padding-top:  30%;overflow-y: auto;" >
          <section>
            <center>
                           
                <div class="video-wrapper video-wrapper-narrow">
    <video class="video-js vjs-default-skin" height="200" width="100" controls poster="http://video-js.zencoder.com/oceans-clip.png" data-setup="{}" id="video-one">
        <source src="http://dizinely.com/videos/MS-Paint.mp4" type='video/mp4' />  
      
    </video>
</div>
                                        
                                           </center>
      </section>   
                            </div>
                                             
      </div>
   
  </div>
<!--  <div class="w3-display-bottomleft w3-padding-large">
    Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
  </div>-->
 <%@include file="FixedBottomMenu.jsp" %>
<!--
       <div class="navbar">
            <a href="#home" class="active"><img src="assets/icons/pay.png" width="35" height="30"/></a>
            <a href="#news"><img src="assets/icons/liveclass.png" width="35" height="30"/></a>
            <a href="#contact"><img src="assets/icons/support.png" width="35" height="30"/></a>
        </div>-->
      </div>
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/common.js"></script>
        <script src='https://vjs.zencdn.net/c/video.js'></script>
        <script type="text/javascript">
           $('#image').click(function(){
	$('#myfile').click()
})
   function w3_open() {
  window.history.back();
}
        </script>
</body>
</html>

