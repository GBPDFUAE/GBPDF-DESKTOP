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
        <link href="css/multistep.min.css" rel="stylesheet">
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
                text-align: left;
                word-wrap: break-word;
                padding: 8px;
                padding-left: 8px;

            }

            /*            table:hover {
                            color: #fff;
                            background-color: #4d4d4d;
                        }
            
                        table:hover tr {
                            background-color: transparent;
                        }*/
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
            .needSliderContainer.openNeedForm {
                position: relative;
                margin: 17px auto;
                width: 1000px;
                /*                height: 550px;*/
                /*                overflow-y: scroll;*/
                border-radius: 5px;
                overflow: hidden;
                background: #fff;
            }
            .pageMainTitle {
                font-size: 28px;
                font-weight: 600;
                text-align: center;
                color: #ffffff;
            }
        </style>

        <!--<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>-->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css'>
        <link rel="stylesheet" href="css/tuition.css">
        <link href="css/cardrc.css" rel="stylesheet">
    </head><!--/head-->

    <body id="home" class="homepage">

        <header id="header">
            <%@include file="Menu.jsp" %>
        </header><!--/header-->



        <section id="f2f" class="crashbg" >
            <div class="container ">

                <div class="needSliderContainer openNeedForm">




                      

                    <div class="container-fluid">
                        <div class="row justify-content-center">
                            <div class="col-md-12">
                                <div class="card px-0 pt-4 pb-0" style="width: 100%">

                                    <form id="msform" action="ClassTution" method="post">
                                        <!-- progressbar -->
                                        <!--                    <ul id="progressbar">
                                                                <li class="active" id="account"><strong>Account</strong></li>
                                                                <li id="personal"><strong>Personal</strong></li>
                                                                <li id="payment"><strong>Image</strong></li>
                                                                <li id="confirm"><strong>Finish</strong></li>
                                                            </ul>-->
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div> <br> <!-- fieldsets -->

                                        
                                          <%
                try {
                    String mno = request.getAttribute("mno").toString();
                    if (mno != null && mno.equalsIgnoreCase("") == false) {
                                           String uname = request.getAttribute("uname").toString();
                                            String email = request.getAttribute("email").toString();
                                             String cotp = request.getAttribute("otp").toString();
                                             String msg = request.getAttribute("msg").toString();
                                          %>
                                     <fieldset id="otpf">
                                            <div class="form-card">
                                                <div class="row">
                                                    <div class="col-12 text-center">
                                                        <h2 class="fs-title">You are almost done   </h2>
                                                        <h5 class="fs-title">To submit your requirement, please provide your contact details   </h5>

                                                    </div>

                                                </div>
                                                <div class="col-md-12">
                                                    <div class="col-md-2"></div>
                                                     <div class="col-md-8">
                                                <input type="text" name="uname" id="uname" placeholder="UserName" value="<%=uname%>" required="" /> 
                                                <input type="email" id="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Email Id" required="" value="<%=email%>"/> 
                                                <div class="col-md-8">
                                                    <input type="number" name="mno" id="mno" placeholder="Enter mobile Number" required="" value="<%=mno%>"  />
                                                </div>
                                                <div class="col-md-4">
                                                <input type="button" name="otp" id="otp" class=" btn-warning " value="Resend OTP" />
                                                </div>
                                                 <div class="col-md-6">
                                                <input type="number" name="otpnumber" placeholder="Enter OTP Number" required=""  />
                                                <input type="hidden" name="cotp"  value="<%=cotp%>"  />
                                                </div>
                                                 <div class="col-md-6">
                                                     <p style="color: red"><%=msg%></p>
                                                </div>
 </div>
                                                <div class="col-md-2"></div>
                                                </div>
                                            </div> 
                                            <input type="submit" name="btnsub" class=" btn-continue " value="Continue" />

                                            <h6 style="text-align: center">By Signing up, you agree to our<a href="tc.jsp"> Terms of Use</a> and <a href="PrivacyPolicy.jsp"> Privacy Policy</a>  </h6>
                                        </fieldset>
                                    
                                     <%}
                                     else
                    {
                                     
                                     %>

              

                                        <fieldset>
                                            <div class="form-card">

                                                <div class="col-md-6">


                                                    <h2>STANDARD</h2>
                                                    <div class="col-md-6">
                                                        <div class="inputGroup">
                                                            <input id="radion" name="std" type="radio" value="Nursery"/>
                                                            <label for="radion">Nursery </label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radiokg" name="std" type="radio" value="KG"/>
                                                            <label for="radiokg">KG </label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="radio2" name="std" type="radio" value="Class 1"/>
                                                            <label for="radio2">Class 1</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio3" name="std" type="radio" value="Class 2"/>
                                                            <label for="radio3">Class 2</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio4" name="std" type="radio" value="Class 3"/>
                                                            <label for="radio4">Class 3</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio5" name="std" type="radio" value="Class 4"/>
                                                            <label for="radio5">Class 4</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="radio6" name="std" type="radio" value="Class 5"/>
                                                            <label for="radio6">Class 5</label>
                                                        </div>

                                                    </div>
                                                    <div class="col-md-6">

                                                        <div class="inputGroup">
                                                            <input id="radio7" name="std" type="radio" value="Class 6"/>
                                                            <label for="radio7">Class 6</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="radio8" name="std" type="radio" value="Class 7"/>
                                                            <label for="radio8">Class 7</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio9" name="std" type="radio" value="Class 8"/>
                                                            <label for="radio9">Class 8</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio10" name="std" type="radio" value="Class 9"/>
                                                            <label for="radio10">Class 9</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio11" name="std" type="radio" value="Class 10"/>
                                                            <label for="radio11">Class 10</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio12" name="std" type="radio" value="Class 11"/>
                                                            <label for="radio12">Class 11</label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radio13" name="std" type="radio" value="Class 12"/>
                                                            <label for="radio13">Class 12</label>
                                                        </div>


                                                    </div>

                                                </div>

                                                <div class="col-md-3">
                                                    <h2>Subjects</h2>

                                                    <div class="inputGroup">
                                                        <input id="radiomaths" name="subject" type="radio" value="Mathetics"/>
                                                        <label for="radiomaths">Mathetics</label>
                                                    </div>
                                                    <div class="inputGroup">
                                                        <input id="radioeng" name="subject" type="radio" value="English"/>
                                                        <label for="radioeng">English</label>
                                                    </div>

                                                    <div class="inputGroup">
                                                        <input id="radiosc" name="subject" type="radio" value="Science"/>
                                                        <label for="radiosc">Science</label>
                                                    </div>

                                                    <div class="inputGroup">
                                                        <input id="radiophy" name="subject" type="radio" value="Physics"/>
                                                        <label for="radiophy">Physics</label>
                                                    </div>

                                                    <div class="inputGroup">
                                                        <input id="radiohnd" name="subject" type="radio" value="Hindi"/>
                                                        <label for="radiohnd">Hindi</label>
                                                    </div>


                                                </div>

                                                <div class="col-md-3">
                                                    <h2>More</h2>
                                                    <div class="inputGroup">
                                                        <input id="radio_online" name="more" type="radio" value="Online Tuitions"/>
                                                        <label for="radio_online">Online Tuitions</label>
                                                    </div>

                                                    <div class="inputGroup">
                                                        <input id="radioncert" name="more" type="radio" value="NCERT Solutions"/>
                                                        <label for="radioncert">NCERT Solutions</label>
                                                    </div>

                                                    <div class="inputGroup">
                                                        <input id="radiocbse" name="more" type="radio" value="CBSE Syllabus"/>
                                                        <label for="radiocbse">CBSE Syllabus</label>
                                                    </div>


                                                </div>

                                                <div class="row"></div>     
                                            </div>
                                            <input type="button" name="next" class="next action-button" value="Next" />
                                        </fieldset>



                                        <fieldset>
                                            <div class="form-card">
                                                <div class="row">
                                                    <div class="col-12 text-center">
                                                        <h2 class="fs-title">Which board of education are you looking for? </h2>
                                                    </div>

                                                </div>

                                                <div class="col-md-12">   
                                                    <div class="col-md-6">  
                                                        <div class="inputGroup">
                                                            <input id="radiobrdcbse" name="bord" type="radio" value="CBSE"/>
                                                            <label for="radiobrdcbse">CBSE </label>
                                                        </div>


                                                        <div class="inputGroup">
                                                            <input id="radiobrdstate" name="bord" type="radio" value="State"/>
                                                            <label for="radiobrdstate">State </label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radiobrdIGCSE" name="bord" type="radio" value="IGCSE"/>
                                                            <label for="radiobrdIGCSE">IGCSE </label>
                                                        </div>

                                                    </div>
                                                    <div class="col-md-6">  
                                                        <div class="inputGroup">
                                                            <input id="radiobrdicse" name="bord" type="radio" value="ICSE"/>
                                                            <label for="radiobrdicse">ICSE </label>
                                                        </div>

                                                        <div class="inputGroup">
                                                            <input id="radiobrdinternational" name="bord" type="radio"/>
                                                            <label for="radiobrdinternational">International Baccalaureate </label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="radiobrdNIOS" name="bord" type="radio" value="NIOS"/>
                                                            <label for="radiobrdNIOS">NIOS </label>
                                                        </div>               

                                                    </div>

                                                </div>                               

                                            </div>



                                            <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                                        </fieldset>


                                        <fieldset>
                                            <div class="form-card">
                                                <div class="row">
                                                    <div class="col-12 text-center">
                                                        <h2 class="fs-title">Which of the following International Baccalaureate subjects do you require tuition for?  </h2>
                                                    </div>

                                                </div> 


                                                <div class="col-md-12">

                                                    <div class="col-md-6">
                                                        <div class="inputGroup">
                                                            <input id="option1" name="subs" type="checkbox" value="English"/>
                                                            <label for="option1">English</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option2" name="subs" type="checkbox" value="Science"/>
                                                            <label for="option2">Science</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option3" name="subs" type="checkbox" value="Physical Education"/>
                                                            <label for="option3">Physical Education</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option4" name="subs" type="checkbox" value="Hindi"/>
                                                            <label for="option4">Hindi</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option5" name="subs" type="checkbox" value="German"/>
                                                            <label for="option5">German</label>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-6">

                                                               <div class="inputGroup">
                                                                   <input id="option21" name="subs" type="checkbox" value="Mathematics"/>
                                                            <label for="option21">Mathematics</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option22" name="subs" type="checkbox" value="Computers"/>
                                                            <label for="option22">Computers</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option23" name="subs" type="checkbox" value="Arts"/>
                                                            <label for="option23">Arts</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option24" name="subs" type="checkbox" value="French"/>
                                                            <label for="option24">French</label>
                                                        </div>
                                                        <div class="inputGroup">
                                                            <input id="option25" name="subs" type="checkbox" value="Spanish"/>
                                                            <label for="option25">Spanish</label>
                                                        </div>
                                                    </div>


                                                </div>
                                               

                                                <div class="clear20"></div>




                                            </div> <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />
                                        </fieldset>


                                        <fieldset>
                                            <div class="form-card">
                                                <div class="row">
                                                    <div class="col-12 text-center">
                                                        <h2 class="fs-title">When do you plan to start Tuition?   </h2>
                                                    </div>

                                                </div>
                                                    <div class="col-md-12">
                                                        <div class="col-md-2"></div>
                                                         <div class="col-md-8">
                                                      <div class="inputGroup">
                                                          <input id="radionotsure" name="payment" type="radio" value="Not sure, just want to look at options"/>
                                                            <label for="radionotsure">Not sure, just want to look at options </label>
                                                      </div>
                                                              <div class="inputGroup">
                                                                  <input id="radioimme" name="payment" type="radio" value="Immediately"/>
                                                            <label for="radioimme">Immediately </label>
                                                      </div>
                                                             
                                                              <div class="inputGroup">
                                                                  <input id="radiomonth" name="payment" type="radio" value="Within a month"/>
                                                            <label for="radiomonth">Within a month </label>
                                                      </div>
                                                             
                                                         </div>
                                                             <div class="col-md-2"></div>
                                                    </div>
                                                    
                                              
                                            </div>
                                            <input type="button" name="next" class="next action-button" value="Next" /> <input type="button" name="previous" class="previous action-button-previous" value="Previous" />

                                        </fieldset>

                                        <fieldset id="otpf">
                                            <div class="form-card">
                                                <div class="row">
                                                    <div class="col-12 text-center">
                                                        <h2 class="fs-title">You are almost done   </h2>
                                                        <h5 class="fs-title">To submit your requirement, please provide your contact details   </h5>

                                                    </div>

                                                </div>
                                                <div class="col-md-12">
                                                    <div class="col-md-2"></div>
                                                     <div class="col-md-8">
                                                <input type="text" name="uname" id="uname" placeholder="UserName" required="" /> 
                                                <input type="email" id="email" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Email Id" required="" /> 
                                                <div class="col-md-8">
                                                <input type="number" name="mno" id="mno" placeholder="Enter mobile Number" required=""  />
                                                </div>
                                                <div class="col-md-4">
                                                <input type="submit" name="btnsub"  class=" btn-warning " value="SendOTP" />
                                                </div>
<!--                                                 <div class="col-md-6">
                                                <input type="number" name="otpnumber" placeholder="Enter OTP Number" required=""  />
                                                </div>-->
                                                 <div class="col-md-6">
                                                
                                                </div>
 </div>
                                                <div class="col-md-2"></div>
                                                </div>
                                            </div> 
                                            <input type="button" name="next" id="con"  class="btn-continue " value="Continue" />

                                            <h6 style="text-align: center">By Signing up, you agree to our<a href="tc.jsp"> Terms of Use</a> and <a href="PrivacyPolicy.jsp"> Privacy Policy</a>  </h6>
                                        </fieldset>

                                        <fieldset>
                                            <div class="form-card">
                                                <div class="row">
                                                    <!--                                <div class="col-7">
                                                                                        <h2 class="fs-title">Finish:</h2>
                                                                                    </div>-->

                                                </div> <br><br>
                                                <h2 class="purple-text text-center"><strong>SUCCESS !</strong></h2> <br>
                                                <div class="row justify-content-center">
                                                    <div class="col-md-4"> </div> <div class="col-md-4"> <img src="https://i.imgur.com/GwStPmg.png" class="fit-image"> </div><div class="col-md-4"> </div>
                                                </div> <br><br>
                                                <div class="row justify-content-center">
                                                    <div class="col-7 text-center">
                                                        <h5 class="purple-text text-center">Added Successfully </h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>

                                     
                                      <% 
                    }
                    } catch (Exception ex) {
                }
            %>
                                        <!--                                        <fieldset>
                                                                                    <div class="form-card">
                                                                                        <div class="row">
                                                                                            <div class="col-12 text-center">
                                                                                                <h2 class="fs-title">You are almost done   </h2>
                                        
                                        
                                                                                            </div>
                                        
                                                                                        </div>
                                        
                                                                                        <input type="number" name="mno" placeholder="Enter mobile Number" />
                                                                                        <input type="number" name="otp" placeholder="Enter OTP Number" />
                                                                                        <div  class="fs-title"> <input type="submit" name="next" class="btn-continue submit" value="Submit" /></div>
                                        
                                                                                        <h6 style="text-align: center">By Signing up, you agree to our<a href="tc.jsp"> Terms of Use</a> and <a href="PrivacyPolicy.jsp"> Privacy Policy</a>  </h6>
                                        
                                                                                    </div> 
                                                                                </fieldset>-->
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>





                </div>  

            </div>
            <div class="clear60"></div>
        </section>






































































        <section id="ctaf">
            <%@include file="Footer.jsp" %>

        </section>
        <!--/#footer-->

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <script  src="js/tuition.js"></script>

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
        <script src="js/jquery.inview.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/login.js"></script>


        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>
        <script  src="js/menu.js"></script>

    </body>
</html>