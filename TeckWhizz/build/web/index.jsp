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
     
        <link rel="stylesheet" href="css/style.css">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.transitions.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
     
        <link href="css/main.css" rel="stylesheet">

        <link href="css/menu.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">

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
            .arrow {
                border: solid black;
                border-width: 0 3px 3px 0;
                display: inline-block;
                padding: 3px;
            }

            .up {
                transform: rotate(-135deg);
                -webkit-transform: rotate(-135deg);
            }

            #myBtn {
                display: none;
                position: fixed;
                bottom: 20px;
                right: 30px;
                z-index: 99;
                font-size: 18px;
                border: none;
                outline: none;
                background-color: red;
                color: white;
                cursor: pointer;
                padding: 15px;
                border-radius: 90px;
            }

            #myBtn:hover {
                background-color: #555;
            }
            /*  dropdown-menu {
              display: block !important;
            }*/
        </style>



    </head><!--/head-->

    <body id="home" class="homepage">
        <div class="bootstrap">
            <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="arrow up up-arrow"></i></button>

            <header id="header">

                <nav class="navbar navbar-expand-md navbar-dark bg-header">
                    <div class="container-fluid" style="width: 100%">
                        <a class="navbar-brand" href="index.jsp">
                            <img class="logo horizontal-logo" src="images/logo.png" alt="wishtopia">
                        </a>
                        <div class="mobliemenu">
                            <button  class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                        <div style="float: right">
                            <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                                <ul class="navbar-nav ml-auto " >
                                    <li class="nav-item"> <a class="nav-link" href="#home">Home</a></li>
<!--                                      <li class="nav-item dropdown">
                                          <a class="nav-link dropdown-toggle" href="index.jsp" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Home
                                        </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                         <a class="dropdown-item" href="aboutus.jsp">About Us</a>
                                        <div class="dropdown-divider"></div>
                                        

                                        

                                    </div>
                                      </li>-->
                                    <li class="nav-item"> <a class="nav-link" href="#askdubt">Ask Doubt</a></li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Tuition
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                            <a class="dropdown-item" href="#register">Student Registration</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="#teacher">Bacome a Teacher</a>

                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="FindTutormain.jsp">Find a Tutor</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="EnrolledTuition">Entrolled Tution</a>
                                        </div>
                                    </li>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Crash Course
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                            <a class="dropdown-item" href="Crosscoures.jsp">Crash Course</a>
                                            <div class="dropdown-divider"></div>
                                            <a class="dropdown-item" href="LanguageLearning.jsp">Languages</a>

                                        </div>
                                    </li>
                                  <!--   <li class="nav-item"> <a class="nav-link" href="LearMore.jsp">Learn More</a></li>
                                   <li class="nav-item"> <a class="nav-link" href="#get-in-touch">Contact Us</a></li>-->

    <li class="nav-item dropdown">
                                          <a class="nav-link dropdown-toggle" href="index.jsp" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            More
                                        </a>
                                     <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
                                         <a class="dropdown-item" href="aboutus.jsp">About Us</a>
                                         
                                        <div class="dropdown-divider"></div>
                                        
                                        <a class="dropdown-item" href="index.jsp#get-in-touch">Contact Us</a>
                                        

                                    </div>
                                      </li>
                                </ul>


                                <div class="btnLoginGroup" >
                                    <a href="#teacher"><button  type="button" class="btnbecome">
                                        tutor&nbsp;signup
                                        </button></a>
                                    <a href="Login.jsp"> <button  type="button" class="btnLogin">
                                        Login
                                        </button></a>

                                    <a href="#register"> <button  type="button" class="btnLogin" >
                                        Signup
                                        </button></a>
                                </div>

                            </div>
                        </div>


                    </div>
                </nav>
                
                
                  <%       try {
                    String cmsg = request.getAttribute("cmsg").toString();
                    System.out.println(cmsg);
                    if (cmsg != null || cmsg.equalsIgnoreCase("") == false) {%>
                    <script type="text/javascript">
                        alert('<%=cmsg%>');
                    </script>
                    
            <%}

                } catch (Exception ex) {
                }
            %>
                <!--            <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
                                <div class="container">
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                        <a class="navbar-brand logo" href="index.jsp"><img src="images/logo.png" alt="logo"></a>
                                    </div>
                
                                     menu
                
                                         <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                          <ul class="nav navbar-nav navbar-right" style="color: #FFF">
                                            <li class="scroll"><a data-toggle="collapse" data-target=".in" href="#home">Home</a></li>
                                            <li class="scroll"><a href="#f2f">Face To Face</a></li>
                                            <li class="scroll"><a href="#whykids">Why Wishtopia</a></li>
                                            <li class="scroll"><a href="Crosscoures.jsp">Crash Course</a></li>
                                             <li class="dropdown" >
                            <a   onblur="ldwnmenuout()"  onclick="ldwnmenu()">
                                Study Area <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" id="ldwnmnu" style="display: none;" >
                                <li><a href="Crosscoures.jsp">Crash Course</a></li>
                
                                <li><a href="LanguageLearning.jsp">Language Learning</a>
                                <li><a href="ProgrammingLanguage.jsp">Progamming Language</a>
                                </li>
                                          <li><a href="#register">Registeration</a>
                                          </li>
                
                            </ul>
                        </li>
                                            <li class="scroll"><a href=#tution>Tution</a></li>
                                            
                                             <ul class="dropdown-menu">
                                   <li><a href="project.html">AAAA</a></li>
                                   <li><a href="#">BBB</a></li>
                                   <li><a href="#">CCC</a></li>
                                   <li><a href="#">DDD</a></li>
                                </ul>
                <li class="dropdown" >
                    <a href="#"  onblur="dwnmenuout()"  onclick="dwnmenu()()">
                                   Become a Teacher <b class="caret"></b>
                                </a>
                     <ul class="dropdown-menu" id="dwnmnu" style="display: none;" >
                         <li><a href="#whykids">Why Wishtopia</a></li>
                         
                          <li><a href="#teacher">Steps Involved</a>
                          </li>
                          <li><a href="#register">Registeration</a>
                          </li>
                          
                        </ul>
                      </li>
                                                     
                <%
                    String louser = "";
                    try {
                        louser = request.getSession().getAttribute("sname").toString();
                        if (louser != null || louser.equalsIgnoreCase("") == false) {
                %>                 
         
         
           <li class="scroll"><a href="Askmydoubts">Ask Doubt</a></li>
         
         
                <%
                        }
                    } catch (Exception ex) {
                    }

                    if (louser.equalsIgnoreCase("")) {
                %>
                
                                            <li class="scroll"><a href="#askdubt">Ask Doubt</a></li>
                                            
                <%
                    }

                %>
                <li class="scroll"><a href="#teacher">Become a Teacher</a></li>
                 <ul>
                     <li class="scroll"><a href="#teacher">Become a Teacher</a></li>
                     
                     
                 </ul>
                 <li class="scroll"><a href="#counsling">Counselling</a></li>
                <li class="scroll"><a href="LearMore.jsp">Learn More</a></li>
                <li class="scroll"><a href="#get-in-touch">Contact us</a></li>         
                 
                 <li class="scroll"><a  class="cd-signin" href="#register">Login </a></li>

            </ul>
        </div>


    </div>/]
</nav>-->




                <!--/nav-->
            </header><!--/header-->

            <section id="main-slider">
                <div class="owl-carousel">
                    <div class="item" style="background-image: url(images/slider/slider1.png); ">
                        <div class="slider-inner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="carousel-content">
                                            <h2>&nbsp;</h2>

                                            <div class="col-md-3"></div>
                                            <div class="col-md-3">
                                                <div class="clearS70"></div>
                                                <a class="btn btn-startLearning btn-round-lg" href="#register">Start Learning</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!--/.item-->
                    <div class="item" style="background-image: url(images/slider/slider1.png);">
                        <div class="slider-inner">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div class="carousel-content">
                                            <h2>&nbsp;</h2>

                                            <div class="col-md-3"></div>
                                            <div class="col-md-3">
                                                <div class="clearS70"></div>
                                                <a class="btn btn-startLearning btn-round-lg" href="#register">Start Learning</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.owl-carousel-->
            </section>




            <section id="f2f">
                <div class="container">
                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">Face to Face online class</h2>

                    </div>
                    <div class="row">
                        <div class="col-sm-6 wow fadeInLeft">

                            <img class="img-responsive" src="images/f2f.jpeg" alt="">
                        </div>
                        <div class="col-sm-6">




                            <div class="media service-box wow fadeInRight">
                                <div class="pull-left">
                                    <i class="fa fa-laptop"></i>
                                </div>
                                <div class="media-body"><br/>
                                    <h4 class="media-heading">Live Face to Face online class by top teachers in India</h4>
                                    <p>&nbsp;</p>
                                </div>
                            </div>

                            <div class="media service-box wow fadeInRight">
                                <div class="pull-left">
                                    <i class="fa fa-child"></i>
                                </div>
                                <div class="media-body"><br/>
                                    <h4 class="media-heading">For Children's of NEW AGE  Parents</h4>
                                    <p>&nbsp;</p>
                                </div>
                            </div>

                            <div class="media service-box wow fadeInRight">
                                <div class="pull-left">

                                </div>
                                <div class="media-body">

                                    <a class="btn btn-primary-pur btn-round-lg" href="#get-in-touch">Book a Free Course</a>
                                </div>
                            </div>




                        </div>
                    </div>
                </div>
            </section>



            <!-- dialogu -->

            <%       try {
                    String smsg = request.getAttribute("success").toString();
                    if (smsg != null || smsg.equalsIgnoreCase("") == false) {%>
            <div id="myModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Wishtopia</h4>
                        </div>
                        <div class="modal-body">
                            <h3>Added Successfully</h3>
                        </div>
                    </div>
                </div>
            </div>

            <%}

                } catch (Exception ex) {
                }
            %>
            
            
            
            





















            <section id="whykids">
                <div class="container">
                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">Why Wishtopia?</h2>

                    </div>
                    <div class="liveclsbg img-responsive">

                        <div class="row text-center">
                            <div class="features">
                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                                    <div class="media service-box text-center">

                                        <div >
                                            <img src="images/liveclass/l1.png"  height="100" width="100"/> 
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Teaching Model</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->

                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <img src="images/liveclass/l2.png"  height="100" width="100"/>  
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Live Class</h2>
                                        </div>
                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->

                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <img src="images/liveclass/l3.png"  height="100" width="100"/> 
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Clasess Per Convenient</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->

                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <img src="images/liveclass/l4.png"  height="100" width="100"/>  
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Clear Your Doubts 24x7</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->

                            </div>
                        </div>

                        <div class="row text-center">
                            <div class="features">
                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <img src="images/liveclass/l5.png"  height="100" width="100"/>     
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Learn New & Gain Experience</h2>
                                        </div>
                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->

                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <img src="images/liveclass/l6.png"  height="100" width="100"/>     
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Career Guidance</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        <div>
                                            <img src="images/liveclass/l7.png"  height="100" width="100"/>      
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Personal Attention</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        <div>
                                            <img src="images/liveclass/l8.png"  height="100" width="100"/> 
                                            <div class="clear10"></div>
                                            <h2 class="whytl">Recorded Class</h2>
                                        </div>
                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>

                            </div>
                            <!--/.col-md-4-->
                        </div>

                    </div>


                </div>



            </section>


<!--            <section id="kidlrn" >

                <div class="container" >

                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">  What your kids will learn ?</h2>

                    </div>
                    <div class="row">
                        <div class="row text-center ">
                            <div class="features">
                                <div class="col-xs-1 col-xs-12">
                                    <div class="clear20"></div>				
                                    <div class="clear"></div>
                                </div>



                                <div class="col-md-2 col-sm-2 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        
                  
                                        <div class="tweet_pink">
<div class="tweet_wrapper">
<div class="tweet_pink_title">Top 10</div>
<div class="tweet_pink_desc">Hottest Startups</div>
<div class="tweet_desc_pink">CB Insights 2015</div>
<div class="trophy_img_pink">
<picture>
<source srcset="images/kidslearn/kidslrn1.pngg,images/kidslearn/kidslrn1.png 2x">

<img src="images/kidslearn/kidslrn1.png" alt="Trophy 12">
<div class="clear10"></div>
<div class="tweet_pink_title">Logic </div>
</picture>
</div>
</div>
                                        </div>                                   
                                        <div >
                                            <img src="images/kidslearn/kidslrn1.png"  height="100" width="100" />    </a> 
                                            <div class="clear10"></div>
                                            <h2 class="kidslr">Logic</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>               


                                <div class="col-md-2 col-sm-2 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <a href="#"> <img src="images/kidslearn/kidslrn3.png"  height="100" width="100" />    </a>  
                                            <div class="clear10"></div>
                                            <h2 class="kidslr">Structure</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>



                                <div class="col-md-2 col-sm-2 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <a href="#"> <img src="images/kidslearn/kidslrn4.png"  height="100" width="100" />    </a>    
                                            <div class="clear10"></div>
                                            <h2 class="kidslr">Creative Thinking</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-2 col-sm-2 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <a href="#"> <img src="images/kidslearn/kidslrn5.png"  height="100" width="100" />    </a>  
                                            <div class="clear10"></div>
                                            <h2 class="kidslr">Sequencing</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>


                                <div class="col-md-2 col-sm-2 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                    <div class="media service-box text-center">
                                        <div >
                                            <a href="#"> <img src="images/kidslearn/kidslrn2.png"  height="100" width="100" />    </a>      
                                            <div class="clear10"></div>
                                            <h2 class="kidslr">Algorithmic Thinking</h2>
                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>




                            </div>
                        </div>


                    </div>
                </div>
            </section>-->











       


<div class="clear20"></div>

            <section id="ourprecss">
                <div class="container ourprocessbg">
                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">OUR PROMISES TO YOU</h2>

                    </div>
                    <div class=" img-responsive">

                        <div class="row text-center">
                            <div class="features">
                                <div class="col-md-2 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                                    <div class="media service-box text-center">

                                        <div class="optlcontainer">

                                        </div>

                                        <div class="media-body ">

                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                                    <div class="media service-box text-center ourpromisebg">

                                        <div class="optlcontainer">
                                            <img src="images/ourprocess/P3.png"  /> 


                                        </div>

                                        <div class="media-body ">
                                            <h3 class="optl"  >We Hire Only Experts</h3>
                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->

                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                                    <div class="media service-box text-center ourpromisebg">
                                        <div class="optlcontainer ">
                                            <img src="images/ourprocess/P2.png"  /> 


                                        </div>
                                        <div class="media-body ">
                                            <h3 class="optl"> quality of standards</h3>
                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->

                                <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
                                    <div class="media service-box text-center ourpromisebg">
                                        <div class="optlcontainer ">
                                            <img src="images/ourprocess/P1.png"  /> 


                                        </div>

                                        <div class="media-body ">
                                            <h3 class="optl">Not Statisfied, just call or email us</h3>
                                        </div>
                                    </div>
                                </div><!--/.col-md-4-->



                            </div>
                        </div>



                    </div>


                </div>


            </section>




            <section id="register" class="">
                <div class="container ">

                    <!--                <div class="section-header">
                                        <h2 class="section-title text-center wow fadeInDown">About Us</h2>
                                        <p class="text-center wow fadeInDown"> under Constrcution</p>
                                    </div>-->

                    <div class="clear10"></div>
                    <div class="row">

                        <!--                            <h1>REGISTER HERE</h1>-->
                        <div class="section-header">
                            <h2 class="section-title text-center wow fadeInDown">REGISTER HERE</h2>

                        </div>

                        <div class="form ">

                            <ul class="tab-group">
                                <li class="lli ltab active"><a href="#signup">Sign Up</a></li>
                                <li class="lli ltab "><a href="#login">LogIn</a></li>
                            </ul>

                            <div class="tab-content bgreimg">
                                <div id="signup" >   

                                    <form action="Register" method="post">

                                        <!--          <div class="top-row">-->
                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Student Name:<span class="req">*</span>
                                                                                </label>-->
                                            <input type="text" required  placeholder="Student Name" name="stud_name" pattern="([^\s][A-za-z\s]+)"
                                                   autocomplete="off" />
                                        </div>

                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Mobile Number :<span class="req">*</span>
                                                                                </label>-->
                                            <input type="tel" placeholder="Mobile Number" required name="mno"  pattern="^\d{10}$"  title="Enter valid Mobile Number" autocomplete="off"/>
                                        </div>
                                        <!--          </div>-->

                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Email Address<span class="req">*</span>
                                                                                </label>-->
                                            <input type="email" placeholder="Email" required name="email"  autocomplete="off"/>
                                        </div>


                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Pin code :<span class="req">*</span>
                                                                                </label>-->
                                            <input type="text" placeholder="Pincode" minlength="6"  required name="pincode"  pattern="[0-9]{6}" title="Format: 6 digits Pincode"   autocomplete="off"/>
                                        </div>

                                        <div class="field-wrap">
                                            <!--            <label class="lbl">
                                                          Standard<span class="req">*</span>
                                                        </label>-->
                                            <select style="border-radius:20px;"   name="cls">
                                                <option value="select" selected="">select </option>
                                                <option value="nur">NURSERY </option>
                                                <option value="jkg">JUNIOR KG </option>
                                                <option value="skg">SENIOR KG </option>
                                                <% for (int i = 1; i <= 12; i++) {
                                                        String cls = "Class " + i;
                                                %>
                                                <option value="<%=cls%>"><%=cls%></option>
                                                <%
                                                    }
                                                %>
                                            </select>  
                                        </div>

                                        <button type="submit" class="button  btn-primary-pur button-block"/>Get Started</button>

                                    </form>

                                </div>

                                <div id="login">   
                                    <h1>Welcome Back!</h1>

                                    <form action="Authetication" method="post">

                                        <!--            <div class="field-wrap">
                                                    <label class="lbl">
                                                      Mobile Number<span class="req">*</span>
                                                    </label>
                                                    <input type="tel"required autocomplete="off"/>
                                                  </div>
                                        -->


                                        <div class="field-wrap">

                                            <div id="phoneInput">

                                                <div class="field-wrapper">

                                                    <center> <label class="lbl">
                                                            Mobile Number<span class="req"></span>
                                                        </label></center><br/>
                                                    <div class="form-group phone">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1"autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1"autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                    </div>
                                                </div>
                                            </div> </div>

                                        <center>
                                            <div class="field-wrap">
                                                <!--                                    <label class="lbl">
                                                                                        Mobile Number :<span class="req">*</span>
                                                                                    </label>-->
                                                <center>
                                                    <input type="password" placeholder="Enter Password" class="inputLoginpwd" required name="pwd"   autocomplete="off"/>
                                                </center>
                                            </div>
                                        </center>
                                        <div class="field-wrapforget">
                                            <p class="forgot"><a style="color: #E7202E" href="forgetPassword.jsp">Forgot Password ?</a></p>
                                        </div>
                                        <button class="button button-block"/>LogIn</button>

                                    </form>

                                </div>

                            </div><!-- tab-content -->

                        </div> <!-- /form -->
                        <!-- partial -->


                    </div>
                </div>
            </section>





            <!-- Teacher signup-->
            <section id="teacher">
                <div class="container3">

                  
                       

                        <%
                            try {
                                String msg = request.getAttribute("teachermsg").toString();
                                if (msg != null || msg.equalsIgnoreCase("") == false) {%>
                        <div class="alert success">
                            <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span> 
                            <strong>Success!</strong> <%=msg%>.
                        </div>

                        <%}

                            } catch (Exception ex) {
                            }
                        %>


                   
                    <form method="POST"  action="AddTeacher" class="register-form" id="register-form">

                        <!-- One "tab" for each step in the form: -->
                       
                        <div class="tab " >
                            <div class="teacherbg">
                                <div class="section-header">
                                    
                                    <div class="clear10"></div>
                                     <h2 class="section-title text-center wow fadeInDown">  TUTOR REGISTRATION </h2>
                                   
                                </div>
                                <div class="signup-content"  >
                                    <!--                                        <div class="signup-img">
                                                                                <div class="clear100"></div>
                                                                                <img src="images/4.png" alt="">
                                                                                <div class="signup-img-content">
                                                                                    <h2>Register now </h2>
                                                                                    <p>while seats are available !</p>
                                                                                </div>
                                                                            </div>-->
                                    <div class="signup-form">

                                        <div class="form-row">

                                            <div class="form-group">
                                                <div class="form-input">
                                                    <label for="first_name" class="required">Full Name</label>
                                                    <input type="text" name="fname" class="inp" id="first_name" onkeypress="return (event.charCode > 64 &&
                                                                    event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)" required="" />
                                                </div>


<div class="clear10"></div>
                                                <div class="form-input">
                                                    <label for="phone_number" class="required">Phone number</label>
                                                    <input type="text" name="phone_number" class="inp" required=""  pattern="^\d{10}$" title="Enter Mobile Number" id="phone_number" />
                                                </div>

<div class="clear10"></div>
                                                <div class="form-radio">
                                                    <div class="label-flex">
                                                        <label for="sex">Gender </label>

                                                    </div>
                                                    <div class="form-radio-group">            
                                                        <div class="form-radio-item">
                                                            <input type="radio"  name="sex" id="Male" value="MALE" checked>
                                                            <label for="Male">Male</label>
                                                            <span class="check"></span>
                                                        </div>
                                                        <div class="form-radio-item">
                                                            <input type="radio" name="sex" id="Female" style=" border: 1px solid #ffcc33;" value="FEMALE">
                                                            <label for="Female">Female</label>
                                                            <span class="check"></span>
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="form-select">
                                                    <div class="label-flex">
                                                        <label for="meal_preference">Subject Export</label>

                                                    </div>
                                                    <div class="select-list">
                                                        <select name="sub" class="inp" id="meal_preference">
                                                            <option value="Tamil">Tamil</option>
                                                            <option value="English">English</option>
                                                            <option value="Hindi">Hindi</option>
                                                            <option value="French">French</option>
                                                            <option value="Kindergarten">Kindergarten</option>
                                                            <option value="Maths">Maths</option>
                                                            <option value="Science">Science</option>
                                                            <option value="History">History</option>
                                                            <option value="Economics">Economics</option>
                                                            <option value="Others">Others</option>
                                                        </select>
                                                    </div>
                                                </div>


                                            </div>
                                            <div class="form-group">
                                                <div class="form-select">
                                                    <div class="form-input">
                                                        <label for="email" class="required">Email</label>
                                                        <input type="text" name="email" class="inp" id="email" required="" />
                                                    </div>
                                                    <div class="clear10"></div>
                                                    <div class="form-input">
                                                        <label for="dob" class="required">Date Of Birth</label>
                                                        <input type="date" name="dob" class="inp"  class="datepicker" placeholder="Date Of Birth"/>
                                                    </div>
                                                </div>
                                                <div class="clear10"></div>
                                                <div class="form-radio">
                                                    <div class="label-flex">
                                                        <label for="sex">Martial Status </label>
                                                    </div>
                                                    <div class="form-radio-group">            
                                                        <div class="form-radio-item">
                                                            <input type="radio" name="matstus" id="Married" value="Married" checked>
                                                            <label for="Married">Married</label>
                                                            <span class="check"></span>
                                                        </div>
                                                        <div class="form-radio-item">
                                                            <input type="radio" name="matstus" id="Single" value="Single">
                                                            <label for="Single">Single</label>
                                                            <span class="check"></span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="form-input">
                                                    <label for="refcode">Referral Code(Optional)</label>
                                                    <input type="text"  class="inp" name="refcode"  />
                                                </div>

                                            </div>
                                        </div>
                                        <div class="donate-us">
                                            <div class="label-flex">
                                                <label for="degree">Higher Educational Qualification </label>

                                            </div>
                                            <div class="form-radio-group">            
                                                <div class="form-radio-item">
                                                    <input type="radio" name="degree" id="bd" value="Bachelor Degree" checked="">
                                                    <label for="bd">Bachelor's Degree</label>
                                                    <span class="check"></span>
                                                </div>
                                                <div class="form-radio-item">
                                                    <input type="radio" name="degree" value="Master Degree Or Above" id="md">
                                                    <label for="md">Master Degree Or Above</label>
                                                    <span class="check"></span>
                                                </div>
                                                <div class="form-radio-item">
                                                    <input type="radio" name="degree" value="Not a Grade" id="ng">
                                                    <label for="ng">Not a Grade</label>
                                                    <span class="check"></span>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group">
                                                    <div class="form-input">
                                                        <label for="phone_number" class="required">Pin code</label>
                                                        <input type="text" name="pincode" inputmode="numeric" pattern="[0-9]{6}" title="Enter Valid Pincode" class="inp" required=""  pattern="[0-9]{6}" onkeypress="if (this.value.length == 6 && event.charCode > 47 && event.charCode < 58)
                                                                    return false;"/>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-md-12">

                                                <div class="col-sm-1 ">   
                                                    <div class="pull-right">
                                                        <input type="checkbox" required="" value=""/>
                                                    </div>
                                                </div>
                                                <div class="col-sm-11">   
                                                    <div class="pull-left" style="padding-top: -5px">
                                                        <span> Read the <a href="RefundPolicy.jsp">Terms&amp;Conditions</a></span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                          <div class="clear20"></div>

                                        <div class="form-submit">
                                            <input type="submit" value="Submit" class="submit " id="submit" name="Submit" />
                                            <div class="clear40"></div>
                                             <div class="clear10"></div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
 <div class="tab image-container" style="padding-left: 30px;"> 


                            <img src="images/teacher/1.png"  />
                        </div>
                        <div class="tab image-container" style="padding-left: 30px;">

                            <div class="section-header">
                                <!--                        <h2 class="section-title text-center wow fadeInDown">  Steps involved for Teaching</h2>-->

                            </div>
                            <img src="images/teacher/2.png" class="img-responsive" />

                        </div>
                    </form>



<div class="clear20"></div>
                    <!-- 67B5B4-->
 <span class="btnccfooter ">
                                            <a href="javascript:void(0)" onclick="nextPrev(1)" id="nxt"  ><img src="images/cc/next.png" height="50" width="50"/>
                                               
                                            </a>
                                        </span>
<!--                    <button type="button" id="prevBtn" class="btn btn-primary btn-round-lg"  onclick="nextPrev(-1)">Previous</button>-->

  <span class="btnccfooterleft">
                                            <a href="javascript:void(0)"  id="prev"   onclick="nextPrev(-1)"><img src="images/cc/prev.png" height="50" width="50"/>
                                                
                                            </a>
                                        </span>
<!--                    <button type="button"   id="nextBtn" class="btn btn-primary btn-round-lg"  onclick="nextPrev(1)">Next</button>-->


                    <!-- Circles which indicates the steps of the form: -->
                    <div style="text-align:center;margin-top:20px;">
                        <span class="step"></span>
                        <span class="step"></span>
                        <span class="step"></span>
                        <!--                    <span class="step"></span>-->
                    </div>



                </div>


            </section>







            <section id="tution" class="tutionbg">
                <div class="container">

                    <div class="section-header">

                        <h2 class="section-title text-center wow fadeInDown">Tuition Registration</h2>

                        <%
                            try {
                                String msg = request.getAttribute("tutionmsg").toString();
                                if (msg != null || msg.equalsIgnoreCase("") == false) {%>
                        <div class="alert success">
                            <span class="closebtn" onclick="this.parentElement.style.display = 'none';">&times;</span> 
                            <strong>Success!</strong> <%=msg%>.
                        </div>

                        <%}

                            } catch (Exception ex) {
                            }
                        %>

                        <!--                    <p class="text-center wow fadeInDown"> under Constrcution</p>-->
                    </div>







                    <form action="tution" method="POST">
                        <div class="row">
                            <!--                <div class="col-xs-2 col-xs-12">
                            
                                            </div>-->
                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>						


                                <label for="first_name" class="required">Student Name</label>
                                <input  id="contnum"  type="text"  name="sname" class="" required=""   /> 

                                <div class="clear"></div>
                            </div>


                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>	

                                <label for="first_name" class="required">Contact Number</label>                      

                                <input  id="contnum"  type="text"  name="contnum" class="" required=""  pattern="^\d{10}$" title="Enter Valid Mobile Number" />

                            </div>




                        </div>

                        <div class="row">
                            <!--                <div class="col-xs-2 col-xs-12">
                            
                                            </div>-->
                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>						


                                <label for="first_name" class="required">Pincode</label>
                                <input  id="contnum"  type="text"  name="pincode" class="" required=""  pattern="[0-9]{6}" title="Enter 6 digit pincode"  /> 

                                <div class="clear"></div>
                            </div>


                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>	

                                <label for="first_name" >Email(Optional)</label>                      

                                <input  id="contnum"  type="email"  name="email" class=""    />


                            </div>




                        </div>

                        <div class="row">
                            <!--                <div class="col-xs-2 col-xs-12">
                            
                                            </div>-->
                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>						


                                <label for="first_name" class="required">Board</label>
                                <Select   class="" name="brd">
                                    <option value="CBSE">Select </option>
                                    <option value="CBSE">CBSE </option>
                                    <option value="ICSE">ICSE </option>
                                    <option value="IB">IB </option>
                                    <option value="IGCSE">IGCSE </option>
                                    <option value="STB">STATE BOARD </option>


                                </select>   


                                <div class="clear"></div>
                            </div>


                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>	

                                <!--                        <label for="first_name" class="required">Timing</label>                      -->

                                <!--                        <input  id="contnum"  type="time"  name="time" class=""  required=""  placeholder="" />-->
                                <div class="col-xs-3 col-xs-3">
                                    <label for="first_name" class="required">Start Time</label> 
                                    <!--                                    <input  id="hrs"  type="time"  name="stme" class=""  required=""  placeholder="" />-->
                                    <div class="time-icon">
                                        <input type="text" class="form-control" placeholder="--:-- --" onblur="addTutionTime(this.value)" name="stme" id="datetimepicker3">
                                    </div>

                                </div>

                                <div class="col-xs-3 col-xs-3">
                                    <label for="first_name" class="required">End Time</label> 
                                    <input  id="endtime"  class="form-control" type="text"   name="etme" readonly=""  placeholder="" />
                                </div>             

                            </div>




                        </div>


                        <div class="row">
                            <!--                <div class="col-xs-2 col-xs-12">
                            
                                            </div>-->
                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>						


                                <label for="first_name" class="required">Standard</label>
                                <Select   class="" name="cls">

                                    <option value="nur">Select </option>
                                    <option value="jkg">JUNIOR KG </option>
                                    <option value="skg">SENIOR KG </option>
                                    <% for (int i = 1; i <= 12; i++) {
                                            String cls = "Class " + i;
                                    %>
                                    <option value="<%=cls%>"><%=cls%></option>
                                    <%
                                        }
                                    %>
                                </select>   


                                <div class="clear"></div>
                            </div>


                            <div class="col-xs-6 col-xs-12">

                                <div class="clear10"></div>	

                                <label for="first_name" class="required">Subject</label>
                                <select name="sub"  class="" id="meal_preference"  onchange="CheckSubOthers(this.value);">
                                    <option value="CBSE">Select </option>
                                    <option value="Tamil">Tamil</option>
                                    <option value="English">English</option>
                                    <option value="Hindi">Hindi</option>
                                    <option value="French">French</option>
                                    <option value="Kindergarten">Kindergarten</option>
                                    <option value="Maths">Maths</option>
                                    <option value="Science">Science</option>
                                    <option value="History">History</option>
                                    <option value="Economics">Economics</option>
                                    <option value="Statistics">Statistics</option>
                                    <option value="Botany">Botany</option>
                                    <option value="Zoology">Zoology</option>
                                    <option value="Physics">Physics</option>
                                    <option value="Chemistry">Chemistry</option>
                                    <option value="Accountancy">Accountancy</option>
                                    <option value="Business Math">Business Math</option>
                                    <option value="Others">Others</option>
                                </select>
                                <div class="clear"></div>

                                <input style="display: none" id="txtsub"  type="text"  name="txtsub" class=""   placeholder="Subject Name" />


                            </div>




                        </div>


                        <div class="row text-center ">
                            <div class="col-xs-4 col-xs-12"></div>
                            <div class="col-xs-4 col-xs-12">



                                <div class="clear40"></div>	
                                <input type="submit"  class="btn btn-startLearning" value="Submit" />

                            </div>

                            <div class="col-xs-2 col-xs-12">

                            </div>
                        </div>

                    </form>


                    <div class="row">



                        <div class="col-xs-12 col-xs-12">
                            <div class="clear20"></div>	
                        </div>
                    </div>
                </div>
            </section><!--/#askdout-->
















            <!--        Askdoubt before Login-->
            <section id="askdubt">
                <div class="container card">

                    <div class="section-header">

                        <h2 class="section-title text-center wow fadeInDown">Ask Doubt</h2>
                        <!--                    <p class="text-center wow fadeInDown"> under Constrcution</p>-->
                    </div>

                    <div class="row text-center">
                        <div class="features">


                            <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                <div class="media service-box text-center">
                                    <div >
                                        <a href="Register.jsp"  > <img src="images/askdoubt/ad1.png" class="img-responsive"  />    </a>      
                                    </div>

                                    <div class="media-body ">

                                    </div>
                                </div>
                            </div>

                            <!--                    <div class="col-xs-1 col-xs-12">
                            
                            
                                                    <div class="clear"></div>
                            
                            
                                                    <a href="Register.jsp">
                                                        <div style="padding-top: 150%">
                                                            <img src="images/askdoubt/inarrow.png" class="img-responsive" />  
                                                        </div>
                                                    </a>                               
                            
                            
                                                </div>-->


                            <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                <div class="media service-box text-center">
                                    <div >
                                        <a href="Register.jsp"  > <img src="images/askdoubt/ad2.png" class="img-responsive"  />    </a>      
                                    </div>

                                    <div class="media-body ">

                                    </div>
                                </div>
                            </div>

                            <!--
                                                <div class="col-xs-1 col-xs-12">
                            
                            
                                                    <div class="clear"></div>
                            
                            
                                                    <a href="Register.jsp">
                                                        <div style="padding-top: 150%">
                                                            <img src="images/askdoubt/inarrow.png" class="img-responsive" />  
                                                        </div>
                                                    </a>                               
                            
                            
                                                </div>-->


                            <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                <div class="media service-box text-center">
                                    <div >
                                        <a href="Register.jsp"  > <img src="images/askdoubt/ad3.png" class="img-responsive"  />    </a>      
                                    </div>

                                    <div class="media-body ">

                                    </div>
                                </div>
                            </div>


                            <!--                    <div class="col-xs-1 col-xs-12">
                            
                            
                                                    <div class="clear"></div>
                            
                            
                                                    <a href="Register.jsp">
                                                        <div style="padding-top: 150%">
                                                            <img src="images/askdoubt/inarrow.png" class="img-responsive" />  
                                                        </div>
                                                    </a>                               
                            
                            
                                                </div>-->

                            <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                                <div class="media service-box text-center">
                                    <div >
                                        <a href="Register.jsp"  > <img src="images/askdoubt/ad4.png" class="img-responsive"  />    </a>      
                                    </div>

                                    <div class="media-body ">

                                    </div>
                                </div>
                            </div>






                        </div>
                    </div>




                    <div class="row text-center">

                        <div class="col-xs-2 col-xs-12">

                            <div class="clear20"></div>						



                            <div class="clear"></div>
                        </div>

                        <div class="col-lg-8 col-xs-12">

                            <div class="clear20"></div>						

                            <img src="images/askdoubt/adbootom.png"   />                                   

                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </section>




            <!-- counsling -->

            <section id="counsling" class="counsbg">

                <div class="container ">
                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown"> Counselling Session</h2>

                    </div>
                    <!--                   <div class="row" >
                                                             
                                            
                                             <div class="col-lg-6 col-xs-12" style="padding-left: -40px;">
                    
                                         <div class="csection-header pull-left">
                        <h3 class="section-title text-center wow fadeInDown" style="color: white;"></h3>
                        <h4 style="color: white;text-transform: uppercase;"> Request for a free demo</h4>
                    </div>
                                        <h3> Request a Free Online Counselling Session</h3>                         
                    
                                        <div class="clear"></div>
                                    </div>
                                    </div>-->
                    <div class="counsbg img-responsive">
                        <form method="post" action="Counselling">
                            <div class="row">




                                <!--                    <div class="media service-box wow fadeInRight">-->
                                <!--                            <div class="pull-left">
                                                              <i class="fa fa-mobile-phone"></i>
                                                            </div>-->
                                <!--                            <div class="media-body"><br/>-->
                                <div class="col-lg-12 col-xs-12" >
                                    <div class="col-xs-1 col-xs-2" >
                                        &nbsp;
                                    </div>
                                    <div class="col-xs-5 col-xs-12" >
                                        <input type="text" class="box-blue" required="" name="mobno" pattern="[6-9]{1}[0-9]{9}"  style="padding-top: -25px;background-color: white" placeholder="Enter Mobile Number" /> 
                                    </div>
                                    <div class="col-xs-2 col-xs-12" >
                                        <button type="submit" class="btn btn-primary-pur btn-round-lg " style="font-size: 20px;padding-bottom: 5px;" href="#">Submit</button>
                                    </div>
                                </div>
                                <!--                        </div>                         -->

                                <!--                  
                                                </div>-->
                            </div>

                            <div class="clear20"></div>
                            <div class="row">
                                <div class="col-lg-4 col-xs-12">

                                </div>
                                <div class="col-lg-8 col-xs-12">

                                    <p style="color: white;text-transform: uppercase;font-size: 28px;"> Request for a free demo</p>
                                </div>

                                <div class="col-lg-6 col-xs-12">


                                    <div class="media service-box wow ">
                                        <div class="mcounselling" >


                                        </div>
                                        <div class="media-body text-center" >


                                        </div>
                                    </div>                        

                                    <div class="clear"></div>
                                </div>




                                <div class="col-sm-6">

                                    <div class="clear40"></div>

                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </section>










            <!--       <section id="career" class="career" >
                        <center>
                         <div class="container">
             
                        <div class="section-header">
                            <div class="clear20"></div>	
                            <h2 class="section-title text-center wow fadeInDown" style="color: white"> Career</h2>
                          <div class="card1"> 
                              <img src="images/career/cont.png"  hclass="img-responsive" />  
                                                    <div class="clear10"></div>
                                                    <h2 class="whytl">&nbsp;</h2>
                                                <p class="text-center wow fadeInDown"> under Constrcution</p>
                        </div>
             </div>
                         </div>
                        <div class="clear20"></div>
                      
                          <div class="clear20"></div>
                   
                    
                        </center>
                        
                        
                    
                    </section>
            -->


            <!--        <section id="cs"  >
                        <center>
                         <div class="container">
            
                        <div class="section-header">
                            <div class="clear20"></div>	
                            <h2 class="section-title text-center wow fadeInDown" style="color: white"> Career</h2>
                           
                            <form action="SubmitCareers" method="post" enctype="multipart/form-data">
                           <div class="row ">
                               <div class="card ">
                            <div class="col-md-3 col-sm-3">
                                &nbsp;
                                        </div>
                               </div>
                               
                                <div class="col-md-5 col-md-5 careercard" >
                                            <div class="media service-box ">
                                                <div >
                                                   
                                                </div>
                                                <div class="media-body">
             
            
                                       
                                         
            
                                           
            
                                      
                                                    
                                                    <div class="clear10"></div>
                                                </div>
                                            </div>
                                        </div>
                               
                                <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                                            <div class="media service-box text-center">
                                                <div >
                                                    <img src="images/cc/l3.png" />  
                                                    <div class="clear10"></div>
                                                    <h2 class="whytl">&nbsp;</h2>
                                                </div>
                                                <div class="media-body ">
            
                                                </div>
                                            </div>
                                        </div>
                             
                           </div>
                       
                            
                            
                               <div class="row ">
                               <div class="card ">
                            <div class="col-md-3 col-sm-3">
                                &nbsp;
                                        </div>
                               </div>
                               
                                <div class="col-md-5 col-md-5 careercard" >
                                            <div class="media service-box ">
                                                <div >
                                                    
                                                    <div class="clear10"></div>
                                                    <h2 class="whytl">&nbsp;</h2>
                                                </div>
                                                <div class="media-body">
             
            
                                                      <div class="top-row">
                                            <div class="field-wrap">
                                                <label class="text-left">
                                                    First Name:<span class="req">*</span>
                                                </label>
            <input type="text" required   name="fname" pattern="([^\s][A-za-z\s]+)"
             autocomplete="off" />
                                            </div>
                                            
                                             <div class="field-wrap">
                                                <label class="text-left">
                                                    Last Name:<span class="req">*</span>
                                                </label>
            <input type="text" required   name="lanme" pattern="([^\s][A-za-z\s]+)"
             autocomplete="off" />
                                            </div>
                                            
                                            <div class="field-wrap">
                                                <label class="text-left">
                                                    Email:<span class="req">*</span>
                                                </label>
                                                <input type="email" required  name="email" 
             autocomplete="off" />
                                            </div>
            
                                            <div class="field-wrap">
                                                <label class="text-left" >
                                                    Mobile Number :<span class="req">*</span>
                                                </label>
            <input type="tel"  required name="mno"  pattern="^\d{10}$"  title="Enter valid Mobile Number" autocomplete="off"/>
                                            </div>
                                                      </div>
                                      
            
                                            <div class="field-wrap">
                                                <label class="text-left">
                                                   Resume:<span class="req">*</span>
                                                </label>
                                                <input type="file"  name="myfile" value="" required="" readonly="" autocomplete="off"/>
                                            </div>
            
                                         
            
                                            <button type="submit" class="button  btn-primary-pur button-block" >Submit</button>
            
                                      
                                                    
                                                    <div class="clear10"></div>
                                                </div>
                                            </div>
                                        </div>
                               
                                <div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                                            <div class="media service-box text-center">
                                                <div >
                                                    <img src="images/cc/l3.png" />  
                                                    <div class="clear10"></div>
                                                    <h2 class="whytl">&nbsp;</h2>
                                                </div>
                                                <div class="media-body ">
            
                                                </div>
                                            </div>
                                        </div>
                             
                           </div>
                        </form> 
                        </div>
                         </div>
                        <div class="clear20"></div>
                      
                          <div class="clear20"></div>
                  
                    
                        </center>
                        
                        
                    
                    </section>-->







            <br/>
            <section id="get-in-touch">
                <div class="container">


                    <!--                    <h2 class="section-title text-center wow fadeInDown">Get in Touch</h2>-->

                </div>
            </section><!--/#get-in-touch-->




            <%
                try {
                    String msg = request.getAttribute("cmsg").toString();
                    if (msg != null || msg.equalsIgnoreCase("") == false) {%>
            <div id="myModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Wishtopia</h4>
                        </div>
                        <div class="modal-body">
                            <img  src="images/congrats.png" height="40px" />
                        </div>
                    </div>
                </div>
            </div>

            <%}

                } catch (Exception ex) {
                }
            %>


            <section id="cta" class="contactbg">
                <!--<div class="container-fluid">-->
                <div class="container">
                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown"> Get in Touch</h2>

                    </div>
                    <div   class="row text-center">
                        <div class="col-md-12 col-md-12 ">
                            <div class="clear50"></div>


                            <div class="clear40"></div>
                            <div class="car2bg">
                                <!--                                <img src="images/cc.png" height="480px" width="350px" />-->
                                <!--                                <div class="clear40"></div>-->
                            </div>
                        </div>


                    </div>

                    <!--             <div class="col-xs-12 col-xs-12 contactinfobg" style="padding-left: 7%;border-radius: 7px;">      
                    
                                        <div class="col-xs-6 col-xs-6 " >
                                            <div class=" text-center">
                                                <div class="row ">
                                                        <div class="col-xs-6">
                                                <h3 style="color: white;">Contact Info</h3>
                    
                                                        </div>
                                                </div>
                                                <form id="" name="contact-form" method="post" action="ContactAs">
                    
                                                    <div class="row ">
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <input type="text" name="xname" class="inp" placeholder="Student Name" onkeypress="return (event.charCode > 64 &&
                                                                                event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row ">
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <input type="text" name="pname" class="inp" placeholder="Parents Name" onkeypress="return (event.charCode > 64 &&
                                                                                event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)" required>
                                                            </div>
                                                        </div>
                                                    </div>
                    
                                                    <div class="row ">
                                                        <div class="col-xs-12">
                                                            <div class="form-group">
                                                                <input type="email" name="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="inp" placeholder="Email" required>
                                                            </div>
                    
                                                        </div>
                                                    </div>
                                                    <div class="row ">
                                                        <div class="col-xs-12">
                    
                                                            <div class="form-group">
                                                                <input type="text" name="Mobno" class="inp" placeholder="Mobile Number"  pattern="[6-9]{1}[0-9]{9}" 
                                                                       title="Phone number required" required>
                                                            </div>
                                                        </div>
                    
                                                    </div>
                    
                                                    <div class="row ">
                                                        <div class="col-xs-12">
                    
                                                            <div class="form-group">
                                                                <textarea name="message" class="inp" rows="5" placeholder="Message" required></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                     <div class="row ">
                                                        <div class="col-xs-12">                                       
                                                                <button   type="submit" class="btn btn-careersubmit" >Send Message</button>
                                                               </div>
                                                         <div class="clear20"></div>
                                                    </div>
                                                    
                                                </form>
                                            </div>
                                        </div>
                     
                      <div class="col-xs-6 col-xs-6  ">
                           
                         <div class="row ">
                                                        <div class="col-xs-12 col-xs-12 ">
                                                            <img src="images/contactus/contactboy.png" height="200px" width="300px"/>
                                                            <div class="form-group">
                                                                <textarea name="message" class="inp" rows="5" placeholder="Message" required></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                          
                           <div class="row ">
                                                        <div class="col-xs-12 col-xs-12 ">
                                                            <h3>Email:</h3>
                                                        </div>
                                                    </div>
                      </div>
                                 </div>                -->













                    <div id="parallax123" class="parallax parallax-one clearfix "><!-- Parallax Section -->
                        <div class="support-section">
                            <div class="container">
                                <div class="row">
                                    
                                    <div class="col-lg-4 col-sm-4">
                                         <div class="clear40"></div>  
                                        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                                            <div class="flipper">
                                                <div class="support-box pos-center front text-center" >
                                                    <div class="support-box-title"><i class="fa fa-phone"></i></div>
                                                    <h2 >CALL US</h2>
                                                    <center>
<!--                                                    <h3 ><a href="tel:9092776543" style="color: #FFF"> +91 90927 76543</a></h3>-->
                                                    <h3 ><a href="tel:9092776543" style="color: #FFF"> +91 96266 26629</a></h3>
                                                    <div class="clear20"></div>
                                                    </center>
                                                </div>
                                                <div class="support-box pos-center back">
                                                    <div class="support-box-title"><i class="fa fa-phone"></i></div>
                                                    <h2>PHONE NUMBER</h2>
                                                    <center>
<!--                                                    <h3 style="color: #FFF">+91 90927 76543</h3>-->
                                                    <h3 style="color: #FFF">+91 96266 26629</h3>
                                                     <div class="clear20"></div>
                                                    </center>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   
                                    <div class="col-lg-4 col-sm-4">
                                         <div class="clear40"></div>
                                        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                                            <div class="flipper">
                                                <div class="support-box pos-center front" style=" background-image: radial-gradient(circle at 83% 82%,#74bbff,#1f8ffb 100%);">
                                                    <div class="support-box-title"><i class="fa fa-envelope"></i></div>
                                                    <h2>SEND US E-MAIL</h2>
                                                    <center>
                                                    <h3 style="color: #FFF">wishtopia.in@gmail.com</h3>
                                                    </center>
                                                </div>
                                                <div class="support-box pos-center back" style=" background-image: radial-gradient(circle at 83% 82%,#74bbff,#1f8ffb 100%);">
                                                    <div class="support-box-title"><i class="fa fa-envelope"></i></div>
                                                    <h2>E-MAIL ADDRESS</h2>
                                                    <center>
                                                    <h3 style="color: #FFF">wishtopia.in@gmail.com</h3>
                                                    </center>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                 
                                   
                                    
                                    <div class="col-lg-4 col-sm-4">
                                          <div class="clear40"></div>
                                        <div class="flip-container" ontouchstart="this.classList.toggle('hover');">
                                            <div class="flipper">
                                                <div class="support-box pos-center front" style="background-image: radial-gradient(circle at 100% 95%,#50c5d9,#42a1b1 88%);">
										<div class="support-box-title"><i class="fa fa-home"></i></div>
										<h2>VISIT US</h2>
										<h3 class="margint20" style="color: #FFF">6/138 , Sheela Nagar , vagaloor road , Trichy - 620017</h3>
									</div>
                                                <div class="support-box pos-center back" style="background-image: radial-gradient(circle at 100% 95%,#50c5d9,#42a1b1 88%);">
                                                    <div class="support-box-title"><i class="fa fa-home"></i></div>
                                                  
										<h2>COMPANY ADDRESS</h2>
										<h3 class="margint20" style="color: #FFF">6/138 , Sheela Nagar , vagaloor road , Trichy - 620017</h3>
									
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>









                    <div class="clear40"></div>

                    <!--  mobileView -->      



                    <!--                    <div class="contactmob">
                                            <h3>Contact Info</h3>
                    
                    
                                            <form id="" name="contact-form" method="post" action="ContactAs">
                                                 <div class="col-xs-6 col-xs-12">
                                                <div class="form-group">
                                                    <input type="text" name="xname" class="form-control" placeholder="Student Name" required>
                                                </div>
                                                 </div>
                                                
                                                 <div class="col-xs-6 col-xs-12">
                                                <div class="form-group">
                                                    <input type="text" name="pname" class="form-control" placeholder="Parents Name" required>
                                                </div>
                                                 </div>
                                                
                                                 <div class="col-xs-6 col-xs-12">
                                                <div class="form-group">
                                                    <input type="email" name="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" class="form-control" placeholder="Email" required>
                                                </div>
                                                     
                                                 </div>
                                                                             <div class="col-xs-6 col-xs-12">
                    
                                                <div class="form-group">
                                                    <input type="text" name="Mobno" class="form-control" placeholder="Mobile Number"  pattern="[6-9]{1}[0-9]{9}" 
                           title="Phone number required" required>
                                                </div>
                                                                             </div>
                                                                             <div class="col-xs-12 col-xs-12">
                    
                                                <div class="form-group">
                                                    <textarea name="message" class="form-control" rows="5" placeholder="Message" required></textarea>
                                                </div>
                                                                             </div>
                                                <button type="submit" class="btn btn-primary-blue btn-round-lg">Send Message</button>
                                            </form>
                                        </div>-->




                </div>
            </section><!--/#bottom-->
            <section id="ctaf">
                <!--        <footer id="footer" class="footerbg">
                
                            <div class="container">
                                
                                <div class="row">
                                    <div class="col-xs-4 col-xs-4">
                                       
                                        <h5 style="color: #000">COMPANY</h5>
                                            <li class="scroll"><a href="#">About Us</a></li>
                                            <li class="scroll"><a href="#get-in-touch">Contact Us</a></li>
                                            <li class="scroll"><a href="career.jsp">Careers</a></li>
                                              <li class="scroll"><a href="RefundPolicy.jsp">Cancellation &AMP Refund Policy</a></li>
                                            <li class="scroll"><a href="PrivacyPolicy.jsp">PrivacyPolicy</a></li>
                                            <li class="scroll"><a href="FindTutor.jsp">Find a Tutor</a></li>
                                            <li class="scroll"><a href="#">Teacher Login</a></li>
                
                
                                       
                                    </div>
                                    
                                    <div class="col-xs-4 col-xs-4">
                                       
                                        <h5 style="color: #000">Login</h5>
                                          <li class="scroll"><a href="https://18.188.48.30:8443/wishtopia_staffs">Teacher Login</a></li>
                                          <li class="scroll"><a href="#register">Student Login</a></li>
                                          <li class="scroll"><a href="#">Parent Login</a></li>
                                           
                
                
                                       
                                    </div>
                                    <div class="col-xs-4 col-xs-4">
                                        <h5 style="color: #000">Quick Links</h5>
                                        <li class="scroll"><a href="#home">Home</a></li>
                                            <li class="scroll"><a href="#f2f">Face To Face</a></li>
                                            <li class="scroll"><a href="#whykids">Why Teck Whizz</a></li>
                                            <li class="scroll"><a href="#kidlrn">Crash Course</a></li>
                                            <li class="scroll"><a href=#tution>Tution</a></li>
                                            <li class="scroll"><a href="#askdubtl">Ask Doubt</a></li>
                                            <li class="scroll"><a href="#teacher">Become a Teacher</a></li>
                                             <li class="scroll"><a href="#counsling">Counselling</a></li>
                                            <li class="scroll"><a href="LearMore.jsp">Learn More</a></li>
                                                   
                                             
                                    </div>
                                    <div class="col-xs-4 col-xs-6">
                                        
                                    </div>
                                    <div class="clear10"></div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        &copy; 2020   <a target="_blank" href="$" title="Teck Learnings">Whistopia Learnings Private Limited</a>
                                    </div>
                                    <div class="col-sm-6">
                                        <ul class="social-icons">
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </footer>-->
                <div class="clear100"></div>
                 <div class="clear100"></div>
                <%@include file="Footer.jsp" %>
            </section>
            <!--/#footer-->
        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>


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



                                    var currentTab = 0; // Current tab is set to be the first tab (0)
                                    showTab(currentTab); // Display the current tab

                                    function showTab(n) {
                                        // This function will display the specified tab of the form...
                                        var x = document.getElementsByClassName("tab");
                                        x[n].style.display = "block";
                                        //... and fix the Previous/Next buttons:
                                        if (n == 0) {
                                            document.getElementById("prevBtn").style.display = "inline";
                                        } else {
                                            document.getElementById("prevBtn").style.display = "inline";
                                        }
                                        if (n == (x.length - 1)) {
                                            document.getElementById("nextBtn").innerHTML = "Finish";
                                        } else {
                                            document.getElementById("nextBtn").innerHTML = "Next";
                                        }
                                        //... and run a function that will display the correct step indicator:
                                        fixStepIndicator(n)
                                    }

                                    function nextPrev(n) {
                                        // This function will figure out which tab to display
                                        var x = document.getElementsByClassName("tab");
                                        // Exit the function if any field in the current tab is invalid:

                                        if (n == 1 && !validateForm())
                                            return false;
                                        // Hide the current tab:
                                        x[currentTab].style.display = "none";
                                        // Increase or decrease the current tab by 1:
                                        currentTab = currentTab + n;

                                        // if you have reached the end of the form...
                                        if (currentTab >= x.length) {
                                            // ... the form gets submitted:
                                            document.getElementById("register-form").submit();
                                            return false;
                                        }
                                        // Otherwise, display the correct tab:
                                        if (currentTab == -1) {
                                            currentTab = 0;
                                            showTab(currentTab);

                                        } else
                                        {
                                            showTab(currentTab);
                                        }

                                    }

                                    function validateForm() {
                                        // This function deals with validation of the form fields
                                        var x, y, i, valid = true;
                                        x = document.getElementsByClassName("tab");
                                        y = x[currentTab].getElementsByTagName("input");
                                        // A loop that checks every input field in the current tab:
                                        for (i = 0; i < y.length; i++) {
                                            // If a field is empty...
                                            if (y[i].value == "") {
                                                // add an "invalid" class to the field:
                                                y[i].className += " invalid";
                                                // and set the current valid status to false
                                                valid = false;
                                            }
                                        }
                                        // If the valid status is true, mark the step as finished and valid:
                                        if (valid) {
                                            document.getElementsByClassName("step")[currentTab].className += " finish";
                                        }
                                        return valid; // return the valid status
                                    }

                                    function fixStepIndicator(n) {
                                        // This function removes the "active" class of all steps...
                                        var i, x = document.getElementsByClassName("step");
                                        for (i = 0; i < x.length; i++) {
                                            x[i].className = x[i].className.replace(" active", "");
                                        }
                                        //... and adds the "active" class on the current step:
                                        x[n].className += " active";
                                    }


        </script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        
        <script type="text/javascript">

                                    $(function() {

                                        $('#phoneInput').letteringInput()
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
        <script>
            //Get the button
            var mybutton = document.getElementById("myBtn");

            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function() {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    mybutton.style.display = "block";
                } else {
                    mybutton.style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
        <!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
<!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>-->
        <script  src="js/menu.js"></script>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/select2.min.js"></script>
        <script src="assets/js/moment.min.js"></script>
        <script src="assets/js/bootstrap-datetimepicker.min.js"></script>
        <!--            <script src="assets/js/app.js"></script>-->
        <script>
            $(function() {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT'

                });
            });
        </script>
        <script src="js/jquery.parallax-1.1.3.js"></script>
        <script>
            $(document).ready(function() {
                $("#myModal").modal('show');

                /* Parallax */
                var Parallax = function() {
                    jQuery(".parallax").each(function() {
                        var parallaxId = $(this).attr('id');
                        $('#' + parallaxId).parallax("50%", 0.4);
                    });
                }



            });


            function addTutionTime(val)
            {
              //  alert(val.length);
                var len=parseInt(val.length);
                if(len==7)
                {
                    val="0"+val;
                }
                var starttime = val.substring(0, 5);

                var totime = addMinutes(starttime, "45");
                document.getElementById("endtime").value = totime;

            }


            function addMinutes(timeString, addMinutes) {
                if (!timeString.match(/^([0-9]|0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$/))
                    return null;
                var timeSplit = timeString.split(':');
                var hours = parseInt(timeSplit[0]);
                var minutes = parseInt(timeSplit[1]) + parseInt(addMinutes);
                hours += Math.floor(minutes / 60);
                while (hours >= 24) {
                    hours -= 24;
                }
                minutes = minutes % 60;
                return ('0' + hours).slice(-2) + ':' + ('0' + minutes).slice(-2);

            }
        </script>
<!--        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>-->


    </body>
</html>