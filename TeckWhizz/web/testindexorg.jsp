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
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
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
            * {
                box-sizing: border-box;
            }





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
                background-color: #4CAF50;
                float: left;

                margin-top:-20%;


            }


            #nextBtn
            {

                float: right;
                margin-top: -20%;
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
            <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand logo" href="index.jsp"><img src="images/logo.png" alt="logo"></a>
                    </div>

                    <!-- menu-->

                    <%@include file="Menu.jsp" %>


                </div><!--/.container-->
            </nav><!--/nav-->
        </header><!--/header-->

        <section id="main-slider">


            <div class="fullSliderContainer">
                <span class="sliderButton" id="previousSlide"><</span>
                <span class="sliderButton" id="nextSlide">></span>
                <ul>
                    <li class=""><img src="images/slider/slider1.png" />
                        
                           
                        <div class=" carousel-content slidecaption"><a class="btn btn-primary-yellow btn-round-lg" href="Register.jsp">  Start Learing </a></div>
                    
                    </li>
                    <li><img src="images/slider/slider2.png" /></li>

                </ul>
            </div>
            <!--            </div>/.owl-carousel-->
        </section><!--/#main-slider-->

        <!--    <section id="cta" class="wow fadeIn">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
        
                        </div>
                        <div class="col-sm-3 text-right">
                            <a class="btn btn-primary btn-lg" href="#">Download Now!</a>
                        </div>
                    </div>
                </div>
            </section>/#cta-->

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

                                <a class="btn btn-primaryred btn-round-lg" href="#">Book Free Trail</a>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
        </section>








        <section id="features">
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
                    <div class="clear40"></div>
                </div>


            </div>

        </div>
    </section>


    <section id="kidlrn">

        <div class="container">
            <div class="clear80"></div>	
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">  What your kids will learn ?</h2>

            </div>

            <div class="row text-center ">
                <div class="features">
                    <div class="col-xs-1 col-xs-12">
                        <div class="clear20"></div>				
                        <div class="clear"></div>
                    </div>



                    <div class="col-md-2 col-sm-2 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media service-box text-center">
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
    </section>











    <section id="cta2" class="car2bg  img-responsive" >
        <div class="container">

            <div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                    <img class="img-responsive" src="images/dwnload/dwnld.png" alt="">
                </div>
                <div class="col-sm-6">


                    <!--                        <div class="car2bg">-->

                    <div class="col-md-12 col-sm-12 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media service-box ">
                            <div >
                                <table>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>  <input type="tel" src="images/dwnload/txtmob.png"  class="form-control" placeholder="Enter mobile Number" /></td>
                                        <td>&nbsp;<a class="btn btn-primary btn-round-sm" style="margin-top: -5px;" href="#">Get Download Link</a> </td>
                                    </tr>
                                </table>
                            </div>
                            <!--                            <div class="media service-box text-center">
                            
                                                            <input type="tel" src="images/dwnload/txtmob.png"  class="form-control" placeholder="Enter mobile Number" />
                            
                            
                                                        </div>-->

                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media  text-center">
                            <div >
                                <a href="#"> <img src="images/dwnload/gplaystore.png"  height="200" width="300" />    </a>                              

                            </div>

                            <div class="media service-box ">
                                <!--                                <a class="btn btn-primary btn-round-sm" style="margin-top: -5px;" href="#">Get Download Link</a> -->
                            </div>

                        </div>
                    </div>




                    <!--                        <div class="media service-box wow fadeInRight">
                                                <div class="pull-left">
                    
                                                </div>
                                                <div class="media-body">
                    
                                                   
                                                        <input type="tel" src="images/dwnload/txtmob.png" class="form-control" placeholder="Enter mobile Number" />
                                                       <a class="btn btn-primaryred btn-round-lg" href="#">Get Download Link</a>
                     
                                                </div>
                                            </div>
                    -->

                    <!--                        </div>-->

                </div>
                <!--                </div>
                            <div class="text-center">
                                <div class="clear100"></div>
                                <div class="clear100"></div>
                                <div class="clear100"></div>
                                <div class="clear100"></div>
                                <div class="clear100"></div>
                                <div class="clear40"></div>
                                <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="btn btn-primary btn-lg" href="#">APP Download</a></p>
                                                <img class="img-responsive wow fadeIn" src="images/cta2/cta2-img.png" alt="" data-wow-duration="300ms" data-wow-delay="300ms">
                            </div>-->
            </div>
    </section>




    <section id="otp" class="ourprocessbg  img-responsive" >
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear40"></div>

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



                <div class="form ">

                    <ul class="tab-group">
                        <li class="lli ltab active"><a href="#signup">Sign Up</a></li>
                        <li class="lli ltab "><a href="#login">Log In</a></li>
                    </ul>

                    <div class="tab-content">
                        <div id="signup" >   
                            <h1>REGISTER HERE</h1>

                            <form action="Register" method="post">

                                <!--          <div class="top-row">-->
                                <div class="field-wrap">
                                    <label class="lbl">
                                        Student Name:<span class="req">*</span>
                                    </label>
                                    <input type="text" required  name="stud_name" autocomplete="off" />
                                </div>

                                <div class="field-wrap">
                                    <label class="lbl">
                                        Mobile Number :<span class="req">*</span>
                                    </label>
                                    <input type="tel"required name="mno"  pattern="[0-9]*" autocomplete="off"/>
                                </div>
                                <!--          </div>-->

                                <div class="field-wrap">
                                    <label class="lbl">
                                        Email Address<span class="req">*</span>
                                    </label>
                                    <input type="email"required name="email"  autocomplete="off"/>
                                </div>


                                <div class="field-wrap">
                                    <label class="lbl">
                                        Pin code :<span class="req">*</span>
                                    </label>
                                    <input type="number"required name="pincode"  autocomplete="off"/>
                                </div>

                                <div class="field-wrap">
                                    <!--            <label class="lbl">
                                                  Standard<span class="req">*</span>
                                                </label>-->
                                    <Select   class="form-control" name="cls">

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

                                <button type="submit" class="button button-block"/>Get Started</button>

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
                                                    Mobile Number:<span class="req">*</span>
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
                                    </div>
                                </div>

                                <p class="forgot"><a href="#">Forgot Password?</a></p>

                                <button class="button button-block"/>Log In</button>

                            </form>

                        </div>

                    </div><!-- tab-content -->

                </div> <!-- /form -->
                <!-- partial -->


            </div>
        </div>
    </section>





    <!-- Teacher signup-->
    <section id="meet-team">
        <div class="container">





            <form method="POST"  action="AddTeacher" class="register-form" id="register-form">

                <!-- One "tab" for each step in the form: -->
                <div class="tab image-container" style="padding-left: 30px;"> 

                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown"> Why do you teach at Teach Learn?</h2>


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


                    </div>
                    <img src="images/teacher/1.jpeg"  />
                </div>
                <div class="tab image-container" style="padding-left: 30px;">

                    <div class="section-header">
                        <h2 class="section-title text-center wow fadeInDown">  Steps involved for Teaching</h2>

                    </div>
                    <img src="images/teacher/2.jpeg" class="img-responsive" />

                </div>
                <div class="tab " style="padding-left: 50px;">
                    <div class="teacherbg" style="padding: 20px;">
                        <div class="section-header">
                            <h2 class="section-title text-center wow fadeInDown">  TUTOR REGISTRATION</h2>

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
                                            <input type="text" name="fname" class="form-control" id="first_name" required="" />
                                        </div>



                                        <div class="form-input">
                                            <label for="phone_number" class="required">Phone number</label>
                                            <input type="text" name="phone_number" class="form-control" required="" id="phone_number" />
                                        </div>


                                        <div class="form-radio">
                                            <div class="label-flex">
                                                <label for="sex">Gender </label>

                                            </div>
                                            <div class="form-radio-group">            
                                                <div class="form-radio-item">
                                                    <input type="radio" name="sex" id="Male" value="MALE" checked>
                                                    <label for="Male">Male</label>
                                                    <span class="check"></span>
                                                </div>
                                                <div class="form-radio-item">
                                                    <input type="radio" name="sex" id="Female" value="FEMALE">
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
                                                <select name="sub" class="form-control" id="meal_preference">
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
                                                <input type="text" name="email" class="form-control" id="email" required="" />
                                            </div>
                                            <div class="form-input">
                                                <label for="dob" class="required">Date Of Birth</label>
                                                <input type="date" name="dob" class="form-control"  class="datepicker" placeholder="Date Of Birth"/>
                                            </div>
                                        </div>
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
                                            <input type="text"  class="form-control" name="refcode"  />
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
                                                <input type="text" name="pincode" class="form-control" required="" />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-submit">
                                    <input type="submit" value="Next" class="submit" id="submit" name="Next" />
                                    <input type="submit" value="Reset" class="submit" id="reset" name="reset" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

            </form>






            <button type="button" id="prevBtn"   onclick="nextPrev(-1)">Previous</button>

            <button type="button"   id="nextBtn"  onclick="nextPrev(1)">Next</button>


            <!-- Circles which indicates the steps of the form: -->
            <div style="text-align:center;margin-top:20px;">
                <span class="step"></span>
                <span class="step"></span>
                <span class="step"></span>
                <!--                    <span class="step"></span>-->
            </div>



        </div>


    </section>




    <section id="askdubt" style="display: none">
        <div class="container card">

            <div class="section-header">
                <div class="clear20"></div>	
                <h2 class="section-title text-center wow fadeInDown">Ask Doubt</h2>
                <!--                    <p class="text-center wow fadeInDown"> under Constrcution</p>-->
            </div>

            <div class="row">
                <div class="col-xs-2 col-xs-12">

                </div>
                <div class="col-xs-4 col-xs-12">

                    <div class="clear20"></div>						

                    <div class="form-group  col-lg-12">
                        <label for="first_name" class="required">Standard</label>
                        <Select   class="form-control" name="cls">

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

                    <div class="clear"></div>
                </div>


                <div class="col-xs-4 col-xs-12">

                    <div class="clear20"></div>	
                    <div class="form-group  col-lg-12">
                        <label for="first_name" class="required">Subject</label>
                        <select name="sub"  class="form-control" id="meal_preference"  onchange="CheckSubOthers(this.value);">
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

                        <input style="display: none" id="txtsub"  type="text"  name="txtsub" class="form-control" required=""  placeholder="Subject Name" />
                    </div>   

                </div>




            </div>



            <div class="row text-left">
                <div class="col-xs-2 col-xs-12">

                </div>
                <div class="col-xs-8 col-xs-12">

                    <div class="clear20"></div>						

                    <div class="form-group">
                        <label for="qa" class="required">Question</label>
                        <div class="form-input">

                            <textarea  name="qa" id="qa" rows="6" class="form-control" placeholder="Enter the question here,question must be  type minimum 30 charectors need "></textarea>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </div>


            <div class="row ">

                <div class="col-xs-2 col-xs-12">

                </div>
                <div class="col-xs-8 col-xs-12">
                    <div>Do you need a  subject expect to call and clear your  doubts ? &nbsp; <b> 
                            <input  type="radio" name="calus" value="yes" onClick="CheckCall(this.value)"/>YES 
                            <input type="radio" name="calus" value="yes"  onClick="CheckCall(this.value)" checked=""/>NO
                        </b></div>
                    <div class="clear10"></div>		
                </div>  
            </div>


            <div class="row">

                <div class="col-xs-4 col-xs-12">

                </div>
                <div class="col-xs-3 col-xs-12">
                    <input  type="text"  name="txtcall" id="txtcall" style="display: none;" class="form-control" required=""  placeholder="Enter Moblie Number" />
                    <div class="clear20"></div>		
                </div>  
            </div>           


            <div class="row ">

                <div class="col-xs-2 col-xs-12">

                </div>
                <div class="col-xs-8 col-xs-12">
                    <div>Click the upload icon below to upload a file.</div>
                </div>

            </div>

            <div class="row ">
                <div class="col-xs-2 col-xs-12">

                </div>
                <div class="col-xs-1 col-xs-12">




                    <div class="image-upload">
                        <label for="file-input">
                            <img src="images/askdoubt/cam.png"/>
                        </label>

                        <input id="file-input" type="file"/>
                    </div>

                    <div class="clear"></div>
                </div>


                <div class="col-xs-1 col-xs-12">



                    <div class="image-upload">
                        <label for="file-input">
                            <img src="images/askdoubt/attach.png" />
                        </label>

                        <input id="file-input" type="file"/>
                    </div>



                    <div class="clear"></div>
                </div>

            </div>



            <div class="row">
                <div class="col-xs-4 col-xs-12">

                </div>

                <div class="col-xs-4 col-xs-12">
                    <input type="submit" class="btn btn-primaryred btn-round-lg" value="Submit" />
                </div>

                <div class="col-xs-2 col-xs-12">

                </div>
            </div>




            <div class="row">



                <div class="col-xs-12 col-xs-12">
                    <div class="clear20"></div>	
                </div>
            </div>
        </div>
    </section><!--/#askdout-->





    <!--        Askdoubt before Login-->
    <section id="askdubtl">
        <div class="container card">

            <div class="section-header">
                <div class="clear20"></div>	
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

                    <div class="col-xs-1 col-xs-12">


                        <div class="clear"></div>


                        <a href="Register.jsp">
                            <div style="padding-top: 150%">
                                <img src="images/askdoubt/inarrow.png" class="img-responsive" />  
                            </div>
                        </a>                               


                    </div>


                    <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media service-box text-center">
                            <div >
                                <a href="Register.jsp"  > <img src="images/askdoubt/ad2.png" class="img-responsive"  />    </a>      
                            </div>

                            <div class="media-body ">

                            </div>
                        </div>
                    </div>


                    <div class="col-xs-1 col-xs-12">


                        <div class="clear"></div>


                        <a href="Register.jsp">
                            <div style="padding-top: 150%">
                                <img src="images/askdoubt/inarrow.png" class="img-responsive" />  
                            </div>
                        </a>                               


                    </div>


                    <div class="col-md-3 col-sm-3 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media service-box text-center">
                            <div >
                                <a href="Register.jsp"  > <img src="images/askdoubt/ad3.png" class="img-responsive"  />    </a>      
                            </div>

                            <div class="media-body ">

                            </div>
                        </div>
                    </div>


                    <div class="col-xs-1 col-xs-12">


                        <div class="clear"></div>


                        <a href="Register.jsp">
                            <div style="padding-top: 150%">
                                <img src="images/askdoubt/inarrow.png" class="img-responsive" />  
                            </div>
                        </a>                               


                    </div>

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

                <div class="col-xs-8 col-xs-12">

                    <div class="clear20"></div>						

                    <a href="#"> <img src="images/askdoubt/adbootom.png" class="img-responsive"  />    </a>                               

                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </section>



    <section id="get-in-touch">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Get in Touch</h2>

            </div>
        </div>
    </section><!--/#get-in-touch-->


    <section id="cta" class="contactbg">
        <!--<div class="container-fluid">-->
        <div class="container">
            <div   class="row text-center">
                <div class="col-md-12 col-md-12 ">
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear100"></div>
                    <div class="clear80"></div>
                    <div class="car2bg">
                        <img src="images/cc.png" height="280px" width="250px" />
                        <div class="clear40"></div>
                    </div>
                </div>


            </div>
            <div   class="row text-center">

                <div class="col-xs-12 col-xs-12">


                    <div class="contact-form">
                        <h3>Contact Info</h3>


                        <form id="" name="contact-form" method="post" action="#">
                            <div class="form-group">
                                <input type="text" name="xname" class="form-control" placeholder="Student Name" required>
                            </div>

                            <div class="form-group">
                                <input type="email" name="pname" class="form-control" placeholder="Parents Name" required>
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control" placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <input type="text" name="Mobno" class="form-control" placeholder="Mobile Number" required>
                            </div>
                            <div class="form-group">
                                <textarea name="message" class="form-control" rows="5" placeholder="Message" required></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Send Message</button>
                        </form>
                    </div>
                    <div class="clear40"></div>
                </div>

            </div>

        </div>
    </section><!--/#bottom-->
    <section id="ctaf">
        <footer id="footer">

            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        &copy; 2020   <a target="_blank" href="$" title="Teck Learnings">Wishtopia</a>
                    </div>
                    <div class="col-sm-6">
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>

                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </footer>

    </section>
    <!--/#footer-->

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

    <script type="text/javascript">

        $(function() {
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
</body>
</html>