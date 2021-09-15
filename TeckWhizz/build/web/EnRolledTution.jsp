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
        <link href="css/cardrc.css" rel="stylesheet">
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
            .needSliderContainer.openNeedForm {
    position: relative;
    margin: 17px auto;
    width: 1000px;
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



    </head><!--/head-->

    <body id="home" class="homepage">

        <header id="header">
            <%@include file="Menu.jsp" %>
        </header><!--/header-->



        <section id="f2f" class="crashbg" >
            <div class="container ">
               
                <div class="needSliderContainer openNeedForm">
                    <div class="col-md-6">


 <h2>STANDARD</h2>
    <div class="col-md-7">
  <div class="inputGroup">
    <input id="radion" name="radio" type="radio"/>
    <label for="radion">Nursery Tuition</label>
  </div>
        
         <div class="inputGroup">
    <input id="radiokg" name="radio" type="radio"/>
    <label for="radiokg">KG Tuition</label>
  </div>
  <div class="inputGroup">
    <input id="radio2" name="radio" type="radio"/>
    <label for="radio2">Class 1</label>
  </div>
 
   <div class="inputGroup">
    <input id="radio3" name="radio" type="radio"/>
    <label for="radio3">Class 2</label>
  </div>
          
   <div class="inputGroup">
    <input id="radio4" name="radio" type="radio"/>
    <label for="radio4">Class 3</label>
  </div>
          
   <div class="inputGroup">
    <input id="radio5" name="radio" type="radio"/>
    <label for="radio5">Class 4</label>
  </div>
  <div class="inputGroup">
    <input id="radio6" name="radio" type="radio"/>
    <label for="radio6">Class 5</label>
  </div>
       
    </div>
 <div class="col-md-5">
     
      <div class="inputGroup">
    <input id="radio7" name="radio" type="radio"/>
    <label for="radio7">Class 6</label>
  </div>
      <div class="inputGroup">
    <input id="radio8" name="radio" type="radio"/>
    <label for="radio8">Class 7</label>
  </div>
     
      <div class="inputGroup">
    <input id="radio9" name="radio" type="radio"/>
    <label for="radio9">Class 8</label>
  </div>
     
      <div class="inputGroup">
    <input id="radio10" name="radio" type="radio"/>
    <label for="radio10">Class 9</label>
  </div>
     
      <div class="inputGroup">
    <input id="radio11" name="radio" type="radio"/>
    <label for="radio11">Class 10</label>
  </div>
     
      <div class="inputGroup">
    <input id="radio12" name="radio" type="radio"/>
    <label for="radio12">Class 11</label>
  </div>
     
      <div class="inputGroup">
    <input id="radio13" name="radio" type="radio"/>
    <label for="radio13">Class 12</label>
  </div>
     
     
 </div>
          
                    </div>
                    
                     <div class="col-md-3">
                        <h2>Subjects</h2>
                        
                          <div class="inputGroup">
    <input id="radiomaths" name="radio" type="radio"/>
    <label for="radiomaths">Mathetics</label>
  </div>
                         <div class="inputGroup">
    <input id="radioeng" name="radio" type="radio"/>
    <label for="radioeng">English</label>
  </div>
                        
                         <div class="inputGroup">
    <input id="radiosc" name="radio" type="radio"/>
    <label for="radiosc">Science</label>
  </div>
                        
                         <div class="inputGroup">
    <input id="radiophy" name="radio" type="radio"/>
    <label for="radiophy">Physics</label>
  </div>
                        
                         <div class="inputGroup">
    <input id="radiohnd" name="radio" type="radio"/>
    <label for="radiohnd">Hindi</label>
  </div>
                        
                  
                    </div>
                    
                       <div class="col-md-3">
                        <h2>More</h2>
                            <div class="inputGroup">
    <input id="radio_online" name="radio" type="radio"/>
    <label for="radio_online">Online Tuitions</label>
  </div>
                        
                              <div class="inputGroup">
    <input id="radioncert" name="radio" type="radio"/>
    <label for="radioncert">NCERT Solutions</label>
  </div>
                        
                         <div class="inputGroup">
    <input id="radiohnd" name="radio" type="radio"/>
    <label for="radiocbse">CBSE Syllabus</label>
  </div>
                     
            
                    </div>
                    
                     <div class="clear60"></div>
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

        <script>


                                                var currentTab = 0;
                                                function nextPrev(n)
                                                {
                                                    currentTab = currentTab + n;

                                                    if (currentTab == 0 || currentTab == -1)
                                                    {
                                                        $("#prev").hide();
                                                    } else
                                                    {
                                                        $("#prev").show();
                                                    }
                                                    // alert(currentTab);
//                                                    if (currentTab > 4)
//                                                    {
//                                                        currentTab = 4;
//                                                    }
                                                    if (currentTab == 1)
                                                    {
                                                        //rms-current-step

                                                        $("#tab1").removeClass("rms-current-section");
                                                        $("#tab2").addClass("rms-current-section");
                                                        $("#step1").removeClass("rms-current-step");
                                                        $("#step2").addClass("rms-current-step");

                                                        $("#nxt").show();

                                                        $("#sub").hide();







                                                    }

                                                    if (currentTab == 2)
                                                    {
                                                        //rms-current-step

                                                        $("#tab2").removeClass("rms-current-section");
                                                        $("#tab3").addClass("rms-current-section");
                                                        $("#step2").removeClass("rms-current-step");
                                                        $("#step3").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();

                                                    }


                                                    if (currentTab == 3)
                                                    {
                                                        //rms-current-step

                                                        $("#tab3").removeClass("rms-current-section");
                                                        $("#tab4").addClass("rms-current-section");
                                                        $("#step3").removeClass("rms-current-step");
                                                        $("#step4").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();


                                                    }


                                                    if (currentTab == 4)
                                                    {
                                                        //rms-current-step

                                                        $("#tab4").removeClass("rms-current-section");
                                                        $("#tab5").addClass("rms-current-section");
                                                        $("#step4").removeClass("rms-current-step");
                                                        $("#step5").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();


                                                    }


                                                    if (currentTab == 5)
                                                    {
                                                        //rms-current-step

                                                        $("#tab5").removeClass("rms-current-section");
                                                        $("#tab6").addClass("rms-current-section");
                                                        $("#step5").removeClass("rms-current-step");
                                                        $("#step6").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();


                                                    }

                                                    if (currentTab == 6)
                                                    {
                                                        //rms-current-step

                                                        $("#tab6").removeClass("rms-current-section");
                                                        $("#tab7").addClass("rms-current-section");
                                                        $("#step6").removeClass("rms-current-step");
                                                        $("#step7").addClass("rms-current-step");
                                                       $("#nxt").hide();
                                                        $("#sub").show();


                                                    }

//                                                    if (currentTab == 7)
//                                                    {
//                                                        //rms-current-step
//
//                                                        $("#tab7").removeClass("rms-current-section");
//                                                        $("#tab8").addClass("rms-current-section");
//                                                        $("#step7").removeClass("rms-current-step");
//                                                        $("#step8").addClass("rms-current-step");
//                                                        $("#nxt").hide();
//                                                        $("#sub").show();
//
//
//                                                    }



                                                }



                                                function getSelectedAge(val)
                                                {
                                                    document.getElementById("selectagetitle").innerHTML = "AGE BETWEEN " + val;
                                                }

                                                function getSelectedDesign(val)
                                                {
                                                    document.getElementById("designtit").innerHTML = val;
                                                }

                                                function add45minsMonday(val)
                                                {
                                                    // alert(val);

                                                    var totime = addMinutes(val, "45");
                                                    document.getElementById("montotime").value = totime;

                                                }

                                                function add45minsTuesday(val)
                                                {
                                                    // alert(val);

                                                    var totime = addMinutes(val, "45");
                                                    document.getElementById("tuetotime").value = totime;

                                                }

                                                function add45minswedsday(val)
                                                {
                                                    // alert(val);

                                                    var totime = addMinutes(val, "45");
                                                    document.getElementById("wedtotime").value = totime;

                                                }

                                                function add45minsthursday(val)
                                                {
                                                    // alert(val);

                                                    var totime = addMinutes(val, "45");
                                                    document.getElementById("thutotime").value = totime;

                                                }

                                                function add45minsFriday(val)
                                                {
                                                    // alert(val);

                                                    var totime = addMinutes(val, "45");
                                                    document.getElementById("fritotime").value = totime;

                                                }

                                                function add45minssatday(val)
                                                {
                                                    // alert(val);

                                                    var totime = addMinutes(val, "45");
                                                    document.getElementById("sattotime").value = totime;

                                                }

                                                function add45minsSunday(val)
                                                {
                                                    // alert(val);

                                                    var totime = addMinutes(val, "45");
                                                    document.getElementById("suntotime").value = totime;

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


                                                function displayMonthPrice()
                                                {

                                                    document.getElementById("mon").style.display = "block";
                                                    document.getElementById("yr").style.display = "none";
                                                    document.getElementById("monthval").style.display = "block";
                                                    document.getElementById("yrval").style.display = "none";
                                                    document.getElementById("monthyrtitle").innerHTML = "Monthly";
                                                    //payduration
                                                }

                                                function displayYearPrice()
                                                {
                                                    document.getElementById("mon").style.display = "none";
                                                    document.getElementById("yr").style.display = "block";
                                                    document.getElementById("monthval").style.display = "none";
                                                    document.getElementById("yrval").style.display = "block";
                                                    document.getElementById("monthyrtitle").innerHTML = "Yearly";
                                                }

                                                function nextPrev1(n)
                                                {

                                                    if (currentTab == -1)
                                                    {
                                                        currentTab = 0;
                                                    }
                                                    if (currentTab == 0 || currentTab == 1)
                                                    {
                                                        $("#prev").hide();
                                                    } else
                                                    {
                                                        $("#prev").show();
                                                    }

                                                    if (currentTab == 1)
                                                    {
                                                        //rms-current-step
                                                        $("#tab2").removeClass("rms-current-section");
                                                        $("#tab1").addClass("rms-current-section");
                                                        $("#step2").removeClass("rms-current-step");
                                                        $("#step1").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();


                                                    }


                                                    if (currentTab == 2)
                                                    {
                                                        //rms-current-step
                                                        $("#tab3").removeClass("rms-current-section");
                                                        $("#tab2").addClass("rms-current-section");
                                                        $("#step3").removeClass("rms-current-step");
                                                        $("#step2").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();
                                                    }

                                                    if (currentTab == 3)
                                                    {
                                                        //rms-current-step
                                                        $("#tab4").removeClass("rms-current-section");
                                                        $("#tab3").addClass("rms-current-section");
                                                        $("#step4").removeClass("rms-current-step");
                                                        $("#step3").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();
                                                    }

                                                    if (currentTab == 4)
                                                    {
                                                        //rms-current-step
                                                        $("#tab5").removeClass("rms-current-section");
                                                        $("#tab4").addClass("rms-current-section");
                                                        $("#step5").removeClass("rms-current-step");
                                                        $("#step4").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();
                                                    }


                                                    if (currentTab == 5)
                                                    {
                                                        //rms-current-step
                                                        $("#tab6").removeClass("rms-current-section");
                                                        $("#tab5").addClass("rms-current-section");
                                                        $("#step6").removeClass("rms-current-step");
                                                        $("#step5").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();
                                                    }

                                                    if (currentTab == 6)
                                                    {
                                                        //rms-current-step
                                                        $("#tab7").removeClass("rms-current-section");
                                                        $("#tab6").addClass("rms-current-section");
                                                        $("#step7").removeClass("rms-current-step");
                                                        $("#step6").addClass("rms-current-step");
                                                        $("#nxt").show();
                                                        $("#sub").hide();
                                                    }

//                                                    if (currentTab == 7)
//                                                    {
//                                                        //rms-current-step
//                                                        $("#tab8").removeClass("rms-current-section");
//                                                        $("#tab7").addClass("rms-current-section");
//                                                        $("#step8").removeClass("rms-current-step");
//                                                        $("#step7").addClass("rms-current-step");
//                                                        $("#nxt").show();
//                                                        $("#sub").hide();
//                                                    }



                                                    currentTab = currentTab + n;
                                                    //  alert(currentTab);

                                                }
                                                function completeprofile()
                                                {
                                                    var res = validateBank();
                                                    // alert(res);
                                                    if (res == false) {
                                                        document.getElementById("frm").submit();
                                                    }
                                                }

        </script> 

        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>
        <script  src="js/menu.js"></script>

    </body>
</html>