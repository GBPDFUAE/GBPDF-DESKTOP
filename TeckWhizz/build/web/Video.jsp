<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - Responsive Video</title>
  <link rel='stylesheet' href='https://vjs.zencdn.net/c/video-js.css'><link rel="stylesheet" href="assets/css/video.css">

</head>
<body>
<!-- partial:index.partial.html -->
<!--<h2>YouTube</h2>
<div class="video-wrapper">
    <iframe src="https://www.youtube.com/embed/Zhawgd0REhA" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>
</div>

<h2>Vimeo</h2>
<div class="video-wrapper">
    <iframe src="https://player.vimeo.com/video/34854116?badge=0" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
</div>-->

<h2>Video.js</h2>
<div class="video-wrapper video-wrapper-narrow">
    <video class="video-js vjs-default-skin" height="100" width="100" controls poster="http://video-js.zencoder.com/oceans-clip.png" data-setup="{}" id="video-one">
        <source src="http://192.168.43.91:8080/teckmob/ch.mp4" type='video/mp4' />  
      
    </video>
</div>
<!-- partial -->
  <script src='https://vjs.zencdn.net/c/video.js'></script>
</body>
</html>
