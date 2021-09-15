<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Wishtopia</title>
        <!-- core CSS -->
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link rel='stylesheet' href='https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.css'>
<link rel='stylesheet' href='https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick-theme.css'>

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--         <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">-->

        <!-- Main css -->
        <link rel="stylesheet" href="css/style.css">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.transitions.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <!--          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <!--        <link rel="stylesheet" href="css/modal.css">-->
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
         <link href="css/menu.css" rel="stylesheet">
         
         <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Livvic">
<!--<link rel="stylesheet" href="./style.css">-->

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" href="images/logo.png">

        <style>
        
.slick-slider {
  margin: 30px auto 50px;
}

.slick-prev,
.slick-next {
  color: black;
  opacity: 1;
  height: 40px;
  width: 40px;
  margin-top: -20px;
}
.slick-prev path,
.slick-next path {
  fill: rgba(255, 255, 255, 0.4);
}
.slick-prev:hover path,
.slick-next:hover path {
  fill: #000000;
}

.slick-prev {
  left: -35px;
}

.slick-next {
  right: -35px;
}

.slick-prev:before,
.slick-next:before {
  content: none;
}

.slick-dots li button:before {
  color: rgba(255, 255, 255, 0.4);
  opacity: 1;
  font-size: 8px;
}

.slick-dots li.slick-active button:before {
  color: #000000;
}

.quote-container {
  min-height: 200px;
  color: #000000;
  font-size: 36px;
  margin: 0 20px;
  position: relative;
}
.quote-container:hover {
  cursor: -webkit-grab;
  cursor: grab;
}
.quote-container .portrait {
  position: absolute;
  top: 0;
  bottom: 0;
  margin: auto;
  height: 140px;
  width: 140px;
  overflow: hidden;
}
.quote-container .portrait img {
  display: block;
  height: auto;
  width: 100%;
}
.quote-container .quote {
  position: relative;
  z-index: 600;
  padding: 40px 0 40px 180px;
  margin: 0;
  font-size: 20px;
  font-style: italic;
  line-height: 1.4 !important;
 // font-family: Calibri;
  color: black;
}
.quote-container .quote p {
  position: relative;
  margin-bottom: 20px;
}
.quote-container .quote p:first-child:before {
  content: '\201C';
  color: rgba(255, 255, 255, 0.44);
  font-size: 7.5em;
  font-weight: 700;
  opacity: 1;
  position: absolute;
  top: -.4em;
  left: -.2em;
  text-shadow: none;
  z-index: -10;
}
.quote-container .quote cite {
  display: block;
  font-size: 14px;
}
.quote-container .quote cite span {
  font-size: 16px;
  font-style: normal;
  letter-spacing: 1px;
  text-transform: uppercase;
}

.dragging .quote-container {
  cursor: -webkit-grabbing;
  cursor: grabbing;
}

.octogon {
  -webkit-clip-path: polygon(50% 0%, 38.11% 6.7%, 24.99% 6.72%, 18.06% 18.44%, 6.7% 25%, 6.56% 38.64%, 0% 50%, 6.7% 61.89%, 6.7% 75%, 18.44% 81.94%, 25% 93.3%, 38.64% 93.44%, 50% 100%, 61.88% 93.3%, 75% 93.3%, 81.94% 81.56%, 93.3% 74.9%, 93.44% 61.36%, 100% 50%, 93.3% 38.11%, 93.3% 25%, 81.56% 18.06%, 74.96% 6.7%, 61.36% 6.56%, 50% 0%);
  clip-path: url(#octogon);
  height: 140px;
  width: 140px;
}

@-webkit-keyframes gradient {
  0% {
    background-position: 5% 0%;
  }
  50% {
    background-position: 96% 100%;
  }
  100% {
    background-position: 5% 0%;
  }
}
@keyframes gradient {
  0% {
    background-position: 5% 0%;
  }
  50% {
    background-position: 96% 100%;
  }
  100% {
    background-position: 5% 0%;
  }
}



.SignUpForm_signUpCnt__U0O4H {
    font-family: Livvic;
    width: 480px;
    border-radius: 24px;
    box-shadow: 0 3px 6px 0 rgba(0,0,0,.16);
   // background-color: #fff;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 16px ;
    
 
	
	}
.Banner_signUpForm__3cQIT {
    position: absolute;
    top: 15%;
    right: 2%;
    float: right;
}

.Banner_infoCtn__klABN {
    position: absolute;
    top: 15%;
    left: 3%;
}
.Banner_infoCtn__klABN .Banner_p1__3x5SR {
    text-shadow: 0 1px 3px rgba(0,0,0,.24);
    font-size: 32px;
/*    font-weight: 700;*/
    line-height: 1.34;
    color: #2d2d2d;
}


.Banner_infoCtn__klABN .Banner_p2__x0Z6I {
    text-shadow: 0 1px 3px rgba(253,136,71,.24);
    font-size: 20px;
/*    font-weight: 700;*/
    line-height: 1.34;
    color: #fd6529;
    padding: 6px 0;
}
.Banner_infoCtn__klABN .Banner_p3__4WmGN {
    width: 500px;
    font-size: 14px;
    line-height: 1.36;
    color: #000;
    padding: 8px ;
     border-radius: 16px;
    box-shadow: 0 3px 16px 0 rgba(0,0,0,.16);
}
.LiveStats_cnt__2IbYm {
    font-family: inherit;
    min-width: 84%;
    padding: 8px ;
    border-radius: 16px;
    box-shadow: 0 3px 16px 0 rgba(0,0,0,.16);
    background-color: #fff;  
    align-items: center;
    justify-content: space-evenly;
}

.abt
{
 background:  url(images/abt/abtbg.png) ;
/*    background-position: center center; 
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:100% 100%;*/

   height: auto;
   color: #FFF;
    background-position: center;
    background-size: cover;
    
   
}

.abtl
{
 background:  url(images/abt/11.png) ;
/*    background-position: center center; 
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size:100% 100%;*/

   height: auto;
   color: #FFF;
    background-position: center;
    background-size: cover;
    
   
}
        </style>



    </head><!--/head-->

    <body id="home" class="car2bg"  >

     <header id="header">
          <%@include file="Menu.jsp" %>
        </header><!--/header-->


        
        
        
        
        
        
         <section id="f2f" >
         <div class="Banner_signUpForm__3cQIT">
        
        <div class="SignUpForm_signUpCnt__U0O4H abt">
            <h2 style="color: #FFF;">About us</h2>
            <h4 style="color: #FFF;font-weight: normal">
                WISHTOPIA, Since inception, we have advanced the learning curve for students and educators with curated and innovative educational content and resources. Our solutions cater to everyone from children learning their first words to teachers looking to advance their knowledge and skills.
             </h4>      
 <h4 style="color: #FFF;font-weight: normal">
we are impacting, improving and enriching lives and helping to protect our planet for future generations. </h4>
        </div>
         </div>
             
             <div class="Banner_infoCtn__klABN">
                 <h4 class="Banner_p1__3x5SR "><span class="Banner_highlight__3m42-"> </span>
                     India's most learning platform. </h4>
                 
                 <h4 class="Banner_p2__x0Z6I ">Face to Face personalized Online classes from Top 1% Teachers. </h4>
                 <div class="clear80"></div>
                 <div class="Banner_p3__4WmGN abtl"><h4 style="color: #4d4d4d;font-weight: normal">Maths, Science,
                         English, Mental Ability, Maths Olympiad  | Classes 1 to 10 | CBSE,ICSE,IB &amp; Metric </h4></div>
             </div>
        
<div class="clear100"></div>
            

         </section>
        <div class="clear100"></div>
        <section id="f2f" >
             <div class="LiveStats_cnt__2IbYm ">
                 <center><h2>Our Features </h2></center>
                 <h4 style="color: #4d4d4d;font-weight: normal">WISHTOPIA's online tuition it helps the students in a better way to understand the concepts of various subjects, 
 to excel in their exams. We provide online home tuition for English, Maths, 
Science, and other important areas of study for students of grades 1 to 10. Our classes are designed with the entire 
focus on the conceptual clarity of students through face-to-face learning </h4>
                   <div class="clear10"></div>
                   <ul>
                       <li>1. A maximum of 3 students in each batch ensures that each child gets appropriate and focused attention from teachers. </li>
                         <li>2. 1 to 1 session are also available on special request.  </li>
                           <li>3. Personalized assessment tests linked with online tuition classes make it possible for you to track your child's progress in different topics of English, Math, and Science covered in the class. </li>
                   </ul>
             </div>
        </section>
        
        
       <div class="clear10"></div>
       
        <section id="f2f" >
             <div class="LiveStats_cnt__2IbYm ">
                 <center><h2>Benefits of wishtopis online class </h2></center>
                 <pre> <h4 style="font-weight: normal">
1. Face-to-face LIVE online tuition: Small batch size of maximum 3 students ensures two-way communication and better learning.
1 to 1 session are also available on special request. 

2.  Unlimited practice tests: Scientifically designed tests to track granular level learning outcomes of each student.

3.  Right batchmates: Students of the same grade and same board having similar learning needs to ensure maximum class engagement.

4.  Convenient and safe: No more travel worries and time wastage. With easy access to class recordings, watch lectures at your convenience.

5.  Instant doubt solving: Availability of expert teachers and certified subject matter experts for better guidance and instant doubt clarifications.
           </h4>       </pre>
<!--                 <p style="color: #000;">WISHTOPIA's online tuition it helps the students in a better way to understand the concepts of various subjects, 
 to excel in their exams. We provide online home tuition for English, Maths, 
Science, and other important areas of study for students of grades 1 to 10. Our classes are designed with the entire 
focus on the conceptual clarity of students through face-to-face learning </h4><br/>
                   <div class="clear10"></div>
                   <ul>
                       <li>1. A maximum of 3 students in each batch ensures that each child gets appropriate and focused attention from teachers. </li>
                         <li>2. 1 to 1 session are also available on special request.  </li>
                           <li>3. Personalized assessment tests linked with online tuition classes make it possible for you to track your child's progress in different topics of English, Math, and Science covered in the class. </li>
                   </ul>-->
             </div>
        </section>
       
        <div class="clear10"></div>
       
        <section id="f2f" >
            <center> <h2>Our Teams</h2></center>
             <div class="LiveStats_cnt__2IbYm ">
               
                 <table>
                     <tr>
                         <td><img src="images/abt/mohan.png" height="200px" width="200px"/> </td>
                      <td></td>
                      <td>
                          
                            <h4 style="padding-left: 40px;color: #4d4d4d;font-weight: normal"> "Mohan, the founder of WISHTOPIA LEARNINGS, has built an organization that is recognized for its visionary role 
in bringing the benefits of Information Technology, towads education."  </h4>
                      </td>
                     </tr>
                 </table>

             </div>
            
             <div class=" ">
               
                 <table>
                     <tr>
                         <td>
                            <h4 style="padding-left: 40px;color: #4d4d4d;font-weight: normal"> "Sasi is an accomplished HR professional with over 5 years of work experience in Human Resource Management.   </h4>
            <h4 style="padding-left: 40px;color: #4d4d4d;font-weight: normal">Her expertise has spread across roles in talent acquisition, performance management, talent development and mobility, people engagement and employer branding. She has been with wishtopia from the inception. 
She leads the HR role at wishtopia today." </h4> 
                              </td>
                      <td></td>
                      <td>
                          
                           <img src="images/abt/sasi.png" height="250px" width="250px"/>
                      </td>
                     </tr>
                 </table>

             </div>
            
            
             <div class="LiveStats_cnt__2IbYm ">
               
                 <table>
                     <tr>
                         <td><img src="images/abt/jai.png" height="200px" width="200px"/> </td>
                      <td></td>
                      <td>
                          
                            <h4 style="padding-left: 40px;color: 4d4d4d;font-weight: normal"> "Forward Thinker and Continuous Learner, . He extends himself to execute fresh ideas  </h4>
            <h4 style="padding-left: 40px;color: 4d4d4d;font-weight: normal">JAI manages the company?s long-term technological vision, and ensures that our end users can leverage the process 
and technological edge that the company continuously strives to achieve" </h4>
                      </td>
                     </tr>
                 </table>

             </div>
            
            
                 <div class=" ">
               
                 <table>
                     <tr>
                         <td>
                              <h4 style="padding-left: 40px;color: 4d4d4d;font-weight: normal"> "Rajesh,Quiet and Creative, His eyes are gifted to look at things in another perspective. As the tech lead, he holds the 
team together without much effort. </h4>
            <h4 style="padding-left: 40px;color: 4d4d4d;font-weight: normal">Going beyond limits to create something extravaganza is his style.Anything new, the team learns it from him." </h4>
            
                              </td>
                      <td></td>
                      <td>
                          
                          <img src="images/abt/raj.png" height="200px" width="200px"/>
                      </td>
                     </tr>
                 </table>

             </div>
        </section>
<div class="clear100"></div>
 
        


<!--        <section id="f2f" >
             <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">Our Portfolio</h2>

                    </div>
            
            
      
        <div class='content'>
  <div class='slider single-item'>
    <div class='quote-container'>
     
      <div class=''>
          <blockquote style="border-left:none">
              <h4 style="padding-left: 40px;color: black"> &nbsp;<b>WISHTOPIA</b>, Since inception, we have advanced the learning curve for students and educators with curated and 
innovative educational content and resources. Our solutions cater to everyone from children learning their 
first words to teachers looking to advance their knowledge and skills.  </h4>
          <h4 style="padding-left: 40px;color: black">we are impacting, improving and enriching lives and helping to protect our planet for future generations. </h4>

        </blockquote>
          
      </div>
        
    </div>
  </div>
        </div>
            
        <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">Our Team</h2>

                    </div>    
      <div class='content'>
          <div class='slider single-item'>
    <div class='quote-container'>
      
      <div class=''>
        <blockquote style="border-left:none">
            <h4 style="padding-left: 40px;color: black"> &nbsp;Mohan, the founder of WISHTOPIA LEARNINGS, has built an organization that is recognized for its visionary role 
in bringing the benefits of Information Technology, towads education.  </h4>
          
            <cite style="color: black">
            <span>Mohan</span>
            <br>
            the founder of WISHTOPIA LEARNINGS
           
          </cite>
        </blockquote>
      </div>
    </div>
      
      
              
               <div class='quote-container' style="color: black">
      
      <div class=''>
  <blockquote style="border-left:none;color: black">
            <h4 style="padding-left: 40px;color: black"> &nbsp;Sasi is an accomplished HR professional with over 5 years of work experience in Human Resource Management.   </h4>
            <h4 style="padding-left: 40px;color: black">Her expertise has spread across roles in talent acquisition, performance management, talent development and mobility, people engagement and employer branding. She has been with wishtopia from the inception. 
She leads the HR role at wishtopia today. </h4>
            
          <cite>
            <span>JayaKumarBalan</span>
            <br>
            He is responsible for establishing and directing wishtopia's internal systems.
           
          </cite>
        </blockquote>
      </div>
    </div>
      
      <div class='quote-container' style="color: black">
      
      <div class=''>
        <blockquote style="border-left:none;color: black">
            <h4 style="padding-left: 40px;color: black"> &nbsp;"Forward Thinker and Continuous Learner", . He extends himself to execute fresh ideas  </h4>
            <h4 style="padding-left: 40px;color: black">JAI manages the company?s long-term technological vision, and ensures that our end users can leverage the process 
and technological edge that the company continuously strives to achieve </h4>
            
          <cite>
            <span>JayaKumarBalan</span>
            <br>
            He is responsible for establishing and directing wishtopia's internal systems.
           
          </cite>
        </blockquote>
      </div>
    </div>
      
           
      <div class='quote-container' style="color: black">
      
      <div class=''>
        <blockquote style="border-left:none;color: black">
            <h4 style="padding-left: 40px;color: black"> &nbsp;"Quiet and Creative", His eyes are gifted to look at things in another perspective. As the tech lead, he holds the 
team together without much effort. </h4>
            <h4 style="padding-left: 40px;color: black">Going beyond limits to create something extravaganza is his style.Anything new, the team learns it from him. </h4>
            
          <cite>
            <span>Rajesh</span>
            <br>
            He is responsible for establishing and directing wishtopia's internal systems.
           
          </cite>
        </blockquote>
      </div>
    </div>
       
  </div>
</div>
<svg>
  <defs>
    <clipPath clipPathUnits='objectBoundingBox' id='octogon'>
      <h4olygon points='0.50001 0.00000, 0.61887 0.06700, 0.75011 0.06721, 0.81942 0.18444, 0.93300 0.25001, 0.93441 0.38641, 1.00000 0.49999, 0.93300 0.61887, 0.93300 0.75002, 0.81556 0.81944, 0.74999 0.93302, 0.61357 0.93444, 0.50001 1.00000, 0.38118 0.93302, 0.24998 0.93302, 0.18056 0.81556, 0.06700 0.74899, 0.06559 0.61359, 0.00000 0.49999, 0.06700 0.38111, 0.06700 0.25001, 0.18440 0.18058, 0.25043 0.06700, 0.38641 0.06559, 0.50001 0.00000'></polygon>
    </clipPath>
  </defs>
</svg>
        </section>-->






































































        <section id="ctaf">
          <%@include file="Footer.jsp" %>

        </section>
        <!--/#footer-->

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $('.navbar-collapse ul li a').on('click', function() {

                                                    $("#bs-example-navbar-collapse-1").attr("aria-expanded", "false");
                                                    $("#bs-example-navbar-collapse-1").removeClass("in");
                                                });
                                            });
        </script>
        <!--        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>-->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/mousescroll.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
       
      
     
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdn.jsdelivr.net/jquery.slick/1.5.0/slick.min.js'></script>



       

<!--        <script type="text/javascript">

       var prevButton = '<button type="button" data-role="none" class="slick-prev" aria-label="prev"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" version="1.1"><h4ath fill="#FFFFFF" d="M 16,16.46 11.415,11.875 16,7.29 14.585,5.875 l -6,6 6,6 z" /></svg></button>',
    nextButton = '<button type="button" data-role="none" class="slick-next" aria-label="next"><svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><h4ath fill="#FFFFFF" d="M8.585 16.46l4.585-4.585-4.585-4.585 1.415-1.415 6 6-6 6z"></path></svg></button>';

$('.single-item').slick({
  infinite: true,
  dots: true,
  autoplay: true,
  autoplaySpeed: 4000,
  speed: 1000,
  cssEase: 'ease-in-out',
  prevArrow: prevButton,
  nextArrow: nextButton
});

$('.quote-container').mousedown(function(){
  $('.single-item').addClass('dragging');
});
$('.quote-container').mouseup(function(){
  $('.single-item').removeClass('dragging');
});
                                       

        </script>-->
      
      

    </body>
</html>