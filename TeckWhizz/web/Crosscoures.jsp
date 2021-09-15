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
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--         <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">-->

        <!-- Main css -->
<!--        <link rel="stylesheet" href="css/style.css">-->
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
/*            * {
                box-sizing: border-box;
            }*/





            .image-container {
                height:auto;
                width: 100%;
            }

            @media (max-width: 480px) {
                height: 310px;
            }

            @media (max-width: 375px) {
                height: 275px;
            }

            @media (max-width: 320px) {
                height: 240px;
            }

            .image-container img {
                max-height: 100%;
                object-fit: contain;
                max-width: 100%;
                display: block;
                margin: 0 auto;
            }



            .tab {
                display: none;
            }

            button {
                background-color: #4CAF50;
                color: #ffffff;
                border: none;
                padding: 10px 20px;
                font-size: 17px;
                font-family: Raleway;
                cursor: pointer;
            }

            button:hover {
                opacity: 0.8;
            }

            #prevBtn {
/*                background-color: #4CAF50;*/
                float: left;

                margin-top:1%;


            }


            #nextBtn
            {

                float: right;
              margin-top: 1%;
                
            
            }

            table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}
th
{
   background-image:linear-gradient(to right, #5c72ff, #8c3fff);
   color: white;
}
th, td {
  text-align: center;
  word-wrap: break-word;
  padding: 8px;
}
            /* Make circles that indicate the steps of the form: */
            .step {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbbbbb;
                border: none;  
                border-radius: 50%;
                display: inline-block;
                opacity: 0.5;
            }

            .step.active {
                opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            .step.finish {
                background-color: #4CAF50;
            }
        </style>
        
      

    </head><!--/head-->

    <body id="home" class="homepage">

      <header id="header">
          <%@include file="Menu.jsp" %>
        </header><!--/header-->

    
 
        <section id="f2f" >
             <div class="container">

            <div class="section-header">
                <div class="clear20"></div>	
                <h2 class="section-title text-center wow fadeInDown"> Crash Course</h2>
               
                <!--                    <p class="text-center wow fadeInDown"> under Constrcution</p>-->
           
             </div>
                 
     <!-- First Row -->           
                         
    <div class="competitiveExamsPlansContainer"> 

<div class="competitiveExamsPlans">
    
    <a class="jee c_exam js-home-sign-up-btn" href="Phonics.jsp">
<div class="productLogo">
<div class="productLogoImage">
    <img class=" horizontal-logo" height="40px" width="40px" src="images/logo.png" alt="">
</div>
<div class="productName">
<p class="productNameText">&nbsp; WishTopia</p>
</div>
</div>
<div class="productImageWeb">
<img class="productImage" srcset="images/cc/c1.jpeg,
                                images/cc/c1.jpeg 2x" alt="">
</div>
<div class="productImageMweb">
<img class="productImage" srcset="images/cc/c1.jpeg,
                                images/cc/c1.jpeg 2x" alt="">
</div>
<h1 class="contentText">Kiddy Phonic</h1>

<div class="exploreButton">
<div>Click Here </div>
<img class="exploreArrow" src="images/cc/arrrow.svg">
</div>
</a>

    
<!--    <a class="jee c_exam js-home-sign-up-btn" onclick="if (!window.__cfRLUnblockHandlers) return false; signUpPage()">
<div class="productLogo">
<div class="productLogoImage">
</div>
<div class="productName">
<p class="productNameText">JEE</p>
</div>
</div>
<div class="productImageWeb">
<img class="productImage" srcset="images/cc/c2.jpg,
                                images/cc/c2.jpg 2x" alt="">
</div>
<div class="productImageMweb">
<img class="productImage" srcset="images/cc/c2.jpg,
                                images/cc/c2.jpg 2x" alt="">
</div>
<h1 class="contentText">Masterclass to</h1>
<h1 class="featureText">crack <span class="jeeText">JEE</span></h1>
<div class="exploreButton">
<div>Explore </div>
<img class="exploreArrow" src="images/cc/arrrow.svg">
</div>
</a>-->
    
    
    
<!--     <a class="jee c_exam js-home-sign-up-btn" onclick="if (!window.__cfRLUnblockHandlers) return false; signUpPage()">
<div class="productLogo">
<div class="productLogoImage">
    <img class=" horizontal-logo" height="40px" width="40px" src="images/logo.png" alt="">
</div>
<div class="productName">
<p class="productNameText">&nbsp; WishTopia</p>
</div>
</div>
<div class="productImageWeb">
<img class="productImage" srcset="images/cc/c7.jpg,
                                images/cc/c7.jpg 2x" alt="">
</div>
<div class="productImageMweb">
<img class="productImage" srcset="images/cc/c7.jpg,
                                images/cc/c7.jpg 2x" alt="">
</div>
<h1 class="contentText">Masterclass to</h1>
<h1 class="featureText">crack <span class="jeeText">JEE</span></h1>
<div class="exploreButton">
<div>Explore </div>
<img class="exploreArrow" src="images/cc/arrrow.svg">
</div>
</a>-->

</div>
    </div>            
                 
                 
                 
                 
                 
     <!-- Second Row -->               
                 
                 
<!--       <div class="competitiveExamsPlansContainer"> 

<div class="competitiveExamsPlans">
    
<a class="jee c_exam js-home-sign-up-btn" onclick="if (!window.__cfRLUnblockHandlers) return false; signUpPage()">
<div class="productLogo">
<div class="productLogoImage">
</div>
<div class="productName">
<p class="productNameText">JEE</p>
</div>
</div>
<div class="productImageWeb">
    <img class="productImage"  srcset="images/cc/c4.jpg,
                                images/cc/c4.jpg" >
</div>
<div class="productImageMweb">
<img class="productImage" srcset="images/cc/c4.jpg,
                                images/cc/c4.jpg 2x">
</div>
<h1 class="contentText">Masterclass to</h1>
<h1 class="featureText">crack <span class="jeeText">JEE</span></h1>
<div class="exploreButton">
<div>Explore </div>
<img class="exploreArrow" src="//static-cf.toppr.com/marketing/efa0954/images/home/jeeExplore.svg">
</div>
</a>

    
    <a class="jee c_exam js-home-sign-up-btn" onclick="if (!window.__cfRLUnblockHandlers) return false; signUpPage()">
<div class="productLogo">
<div class="productLogoImage">
</div>
<div class="productName">
<p class="productNameText">JEE</p>
</div>
</div>
<div class="productImageWeb">
<img class="productImage" srcset="images/cc/c5.jpeg,
                                images/cc/c5.jpeg 2x" alt="Toppr 360 illustration">
</div>
<div class="productImageMweb">
<img class="productImage" srcset="images/cc/c5.jpeg,
                               images/cc/c5.jpeg 2x" alt="Toppr 360 illustration">
</div>
<h1 class="contentText">Masterclass to</h1>
<h1 class="featureText">crack <span class="jeeText">JEE</span></h1>
<div class="exploreButton">
<div>Explore </div>
<img class="exploreArrow" src="//static-cf.toppr.com/marketing/efa0954/images/home/jeeExplore.svg">
</div>
</a>
    
    
    
     <a class="jee c_exam js-home-sign-up-btn" onclick="if (!window.__cfRLUnblockHandlers) return false; signUpPage()">
<div class="productLogo">
<div class="productLogoImage">
</div>
<div class="productName">
<p class="productNameText">JEE</p>
</div>
</div>
<div class="productImageWeb">
<img class="productImage" srcset="images/cc/c6.jpg,
                                images/cc/c6.jpg 2x" alt="Toppr 360 illustration">
</div>
<div class="productImageMweb">
<img class="productImage" srcset="images/cc/c6.jpg,
                                images/cc/c6.jpg 2x" alt="Toppr 360 illustration">
</div>
<h1 class="contentText">Masterclass to</h1>
<h1 class="featureText">crack <span class="jeeText">JEE</span></h1>
<div class="exploreButton">
<div>Explore </div>
<img class="exploreArrow" src="//static-cf.toppr.com/marketing/efa0954/images/home/jeeExplore.svg">
</div>
</a>

</div>
    </div>            -->
                
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
                 
            <div class="clear20"></div>
             
                 
               </div>
            
          
            
        </section>
        
        
        
     


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        





      









  


                        
                        
                        
                        
     
    
                   
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        

    
    
    
    
    
    
    
    

 
    <section id="ctaf">
       <%@include file="Footer.jsp" %>

    </section>
    <!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    $(document).ready(function () {
    $('.navbar-collapse ul li a').on('click', function() { 
   
        $("#bs-example-navbar-collapse-1").attr("aria-expanded","false");
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
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/login.js"></script>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script  src="js/slider.js"></script>


    <script src="js/jquery.inputLettering.js"></script>

    <script type="text/javascript">
                                function CheckSubOthers(val) {
                                    // alert(val);
// var element=document.getElementById('sub');
                                    var txtsub = document.getElementById('txtsub');
                                    if (val == 'Others')
                                        txtsub.style.display = 'block';
                                    else
                                        txtsub.style.display = 'none';
                                }

                                function CheckCall(val) {
                                    // alert(val);
// var element=document.getElementById('sub');
                                    var txtsub = document.getElementById('txtcall');
                                    if (val == 'Yes' || val == 'yes')
                                        txtsub.style.display = 'block';
                                    else
                                        txtsub.style.display = 'none';
                                }



                                
                               var input = document.getElementById( 'file-input' );
                               var input1 = document.getElementById( 'file-input1' );
var infoArea = document.getElementById( 'file-upload-filename' );
var infoArea1 = document.getElementById( 'file-upload-filename1' );
input.addEventListener( 'change', showFileName );
//input1.addEventListener( 'change', showFileName1() );

function showFileName( event ) {
  
  // the change event gives us the input it occurred in 
  var input = event.srcElement;
  
  // the input has an array of files in the `files` property, each one has a name that you can use. We're just using the name here.
  var fileName = input.files[0].name;
  
  // use fileName however fits your app best, i.e. add it into a div
  infoArea.textContent = 'File name: ' + fileName;
}

//function showFileName1( event ) {
//  
//  // the change event gives us the input it occurred in 
//  var input1 = event.srcElement;
//  
//  // the input has an array of files in the `files` property, each one has a name that you can use. We're just using the name here.
//  var fileName = input1.files[0].name;
//  
//  // use fileName however fits your app best, i.e. add it into a div
//  infoArea1.textContent = 'File name: ' + fileName;
//}

    </script>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
 <script src="js/jquery.inputLettering.js"></script>

    <script type="text/javascript">

        $(function() {
           
//             $('#phoneInput').letteringInput() 
            $('#phoneInput').letteringInput({
                inputClass: 'letter',
                onLetterKeyup: function($item, event) {

                    console.log('$item:', $item);
                    console.log('event:', event);
                },
                onSet: function($el, event, value) {
                    console.log('element:', $el);
                    console.log('event:', event);
                    console.log('value:', value);
                }
            });
        });
        
 

    </script>
    


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>
        <script  src="js/menu.js"></script>
<script>
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
</body>
</html>