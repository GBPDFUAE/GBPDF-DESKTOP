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



        <section id="f2f" class="crashbg" >
            <div class="container ">
                <div id="rms-wizard" class="rms-wizard">
                    <!--Wizard Container-->
                    <div class="rms-container">
                        <!--Wizard Header-->
                        <div class="rms-wizard-header">
                            <h2 class="title">Jolly <span>Phonics </span></h2>
                        </div>
                        <!--Wizard Header Close--> 
                        <form method="post" action="CompleteProfile" id="frm" enctype="multipart/form-data">
                            <div class="rms-form-wizard">
                                <!--Wizard Step Navigation Start-->
                                <div class="rms-step-section" data-step-counter="true" data-step-image="false">
                                    <!--                                    <ul class="rms-multistep-progressbar"> 
                                                                            <li class="rms-step rms-current-step" id="step1">
                                                                                <span class="step-icon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                                                                <span class="step-title">Phonics</span>
                                                                                <span class="step-info">Select Age</span>
                                                                            </li> 
                                    
                                                                            <li class="rms-step " id="step2">
                                                                                <span class="step-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                                <span class="step-title">Selected&nbsp;Age</span>
                                                                                <span class="step-info">Enter your Experience details</span>
                                                                            </li>
                                    
                                                                            <li class="rms-step " id="step3">
                                                                                <span class="step-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                                                <span class="step-title"> I am a Beginer</span>
                                                                                <span class="step-info">Enter your Beginer Details</span>
                                                                            </li>
                                                                            <li class="rms-step " id="step4">
                                                                                <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                                                                                <span class="step-title">Schedule</span>
                                                                                <span class="step-info">Enter your Schedule details</span>
                                                                            </li>
                                                                            
                                                                             <li class="rms-step " id="step5">
                                                                                <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                                                                                <span class="step-title">Payment Options</span>
                                                                                <span class="step-info">Enter your Payment details</span>
                                                                            </li>
                                                                            
                                                                             <li class="rms-step " id="step6">
                                                                                <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                                                                                <span class="step-title">Monthy Options</span>
                                                                                <span class="step-info">Enter your monthly details</span>
                                                                            </li>
                                                                            
                                                                            
                                                                              <li class="rms-step " id="step7">
                                                                                <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                                                                                <span class="step-title">Biling Details</span>
                                                                                <span class="step-info">Enter your Biling details</span>
                                                                            </li>
                                                                            
                                                                            
                                                                             <li class="rms-step " id="step8">
                                                                                <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                                                                                <span class="step-title">Payment</span>
                                                                                <span class="step-info">Enter your Payment Gateway</span>
                                                                            </li>
                                                                            
                                                                            
                                    
                                                                        </ul>-->
                                </div>
                                <!--Wizard Navigation Close-->
                                <!--Wizard Content Section Start-->


                                <div class="rms-content-section">

                                    <div class="rms-content-box rms-current-section" id="tab1">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                <!--                                                <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i> JOLLY</b> PHONICS</div>
                                                                                                <div class="step-label">Step 1 - 8 </div> -->
                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                     <div class="col-md-12">
                                                    <div class="col-md-5">
                                                        <div class="inpt-form-group"> 

                                                           
                                                                 <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">AGE BETWEEN 5 TO 7</label>
                                                                        </td>
                                                                        <td style="margin-top: 0px;padding-top: 0px"> <input type="radio" name="selectage" onclick="getSelectedAge(this.value)"  id="selectage" value="5 to 7"/></td>
                                                                    </tr>
                                                                </table>
                                                               
                                                           
                                                        </div>

                                                    </div> 

                                                    <div class="col-md-5">
                                                        <div class="inpt-form-group"> 

                                                            
                                                                
                                                                <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">AGE BETWEEN 6 TO 7</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px"> <input type="radio" name="selectage" onclick="getSelectedAge(this.value)"  id="selectage" value="6 to 7"/></td>
                                                                    </tr>
                                                                </table>
                                                                

                                                                                                              
                                                        </div>

                                                    </div> 

                                                </div> 
                                                </div>

                                             




                                                <div class="row">
                                                    <div class="col-md-12">
                                                       

                                                            <div class="col-md-5 ">
                                                                
                                                                  <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">AGE BETWEEN 8 TO 10</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px"> <input type="radio" name="selectage" onclick="getSelectedAge(this.value)"  id="selectage" value="8 to 10"/></td>
                                                                    </tr>
                                                                </table>
                                                               


                                                            </div>
                                                            <div class="col-md-5"> 

                                                                <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">AGE BETWEEN 9 & ABOVE</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px"> <input type="radio" name="selectage" onclick="getSelectedAge(this.value)"  id="selectage" value="9 & Above"/></td>
                                                                    </tr>
                                                                </table>

                                                            </div>
                                                            
                                                            
                                                            
                                                            
                                                      

                                                     
                                                </div> 



                                         



                                            </div> 
                                        </div> 
                                    </div>
                                    </div>

                                    <div class="rms-content-box" id="tab2">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                <!--                                                <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i><span id="selectagetitle"> Age Between 5 To 7 </span></div>
                                                                                                <div class="step-label">Step 2 - 8 </div> -->
                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        
                                                         <div class="col-md-4">
                                                        
                                                                
                                                                <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">I AM A BEGINER</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px">
                                                                             <input type="radio" name="design"  checked="" onclick="getSelectedDesign(this.value)"  id="design" value="I AM A BEGINER"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                
                                                         </div>
                                                        
                                                        <div class="col-md-4">
                                                        
                                                                
                                                                <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">I M A INTERMEDIATE</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px">
                                                                             <input type="radio" name="design"  checked="" onclick="getSelectedDesign(this.value)"  id="design" value="I M A INTERMEDIATE"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                
                                                         </div>
                                                        
                                                        <div class="col-md-4">
                                                        
                                                                
                                                                <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">I M AN ANDVANCE</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px">
                                                                             <input type="radio" name="design"  checked="" onclick="getSelectedDesign(this.value)"  id="design" value="I M A ANDVANCE"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                
                                                         </div>

                                                          

                                                    </div> 
                                                </div> 

                                          







                                            </div>
                                        </div> 
                                    </div>




                                    <div class="rms-content-box" id="tab3">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                <!--                                                <div class="leftside-title"><b> <i class="fa fa-book" aria-hidden="true"></i> <span id="designtit"> I am a Beginer </span></div>
                                                                                                <div class="step-label">Step 3 - 8 </div>-->

                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-4 right "> 
                                                                <span for="panumberimg">* Class Schedule Weekly Two Class</span> 


                                                            </div>

                                                        </div>

                                                    </div> 
                                                </div> 

                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-4 right "> 
                                                                <span for="panumberimg">* 45 Mintuess Per Class</span> 


                                                            </div>
                                                            <div class="col-md-1"> 



                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 








                                            </div>
                                        </div> 
                                    </div>







<!--                                    <div class="rms-content-box" id="tab4">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                                                                <div class="leftside-title"><b> <i class="fa fa-bank" aria-hidden="true"></i> Schedule</div>
                                                                                                <div class="step-label">Step 4 - 8 </div> 
                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <span for="panumberimg">Monday</span> 


                                                            </div>
                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">From Time</span> 
                                                                <input type="time" name="mfrmtime" onblur="add45minsMonday(this.value)"  id="mfrmtime" value=""/>

                                                            </div>

                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">To Time</span> 
                                                                <input type="text"  readonly="" name="montotime"  id="montotime" value=""/>

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 

                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <span for="panumberimg">Tuesday</span> 


                                                            </div>
                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">From Time</span> 
                                                                <input type="time" name="tuefrmtime" onblur="add45minsTuesday(this.value)"  id="tuefrmtime" value=""/>

                                                            </div>

                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">To Time</span> 
                                                                <input type="text" readonly=""  name="tuetotime"  id="tuetotime" value=""/>

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 





                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <span for="panumberimg">Wednes day</span> 


                                                            </div>
                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">From Time</span> 
                                                                <input type="time" name="wedfrmtme" onblur="add45minswedsday(this.value)"   id="wedfrmtme" value=""/>

                                                            </div>

                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">To Time</span> 
                                                                <input type="text" readonly="" name="wedtotime"  id="wedtotime" value=""/>

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 



                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <span for="panumberimg">Thursday</span> 


                                                            </div>
                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">From Time</span> 
                                                                <input type="time" name="thufrmtime"  id="thufrmtime"  onblur="add45minsthursday(this.value)" value=""/>

                                                            </div>

                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">To Time</span> 
                                                                <input type="text" readonly="" name="thutotime"  id="thutotime" value=""/>

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 


                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <span for="panumberimg">Friday</span> 


                                                            </div>
                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">From Time</span> 
                                                                <input type="time" name="frifrmtime"  id="frifrmtime" onblur="add45minsFriday(this.value)" value=""/>

                                                            </div>

                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">To Time</span> 
                                                                <input type="text" readonly="" name="fritotime"  id="fritotime" value=""/>

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 


                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <span for="panumberimg">Saturday</span> 


                                                            </div>
                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">From Time</span> 
                                                                <input type="time" name="satfrmtime"  id="satfrmtime" onblur="add45minssatday(this.value)" value=""/>

                                                            </div>

                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">To Time</span> 
                                                                <input type="text" readonly="" name="sattotime"  id="sattotime" value=""/>

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 


                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <span for="panumberimg">Sunday</span> 


                                                            </div>
                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">From Time</span> 
                                                                <input type="time" name="sunfrmtime"  id="sunfrmtime" onblur="add45minsSunday(this.value)" value=""/>

                                                            </div>

                                                            <div class="col-md-3"> 
                                                                <span for="panumberimg">To Time</span> 
                                                                <input type="text" readonly="" name="suntotime"  id="suntotime" value=""/>

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 



                                            </div> 
                                        </div> 
                                    </div>-->


                                    <div class="rms-content-box" id="tab4">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                <!--                                                <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i><span> Payment Options </span></div>
                                                                                                <div class="step-label">Step 5 - 8 </div> -->
                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                    <div class="col-md-12">    
                                                         <div class="col-md-4"> 
                                                         </div>

                                                            <div class="col-md-2"> 
                                                                 <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">Monthly</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px">
                                                                         <input type="radio" name="monthyr" checked="" onclick="displayMonthPrice()"  id="monthyr" value="Monthly"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                                               </div>
                                                        
                                                        
                                                         <div class="col-md-2"> 
                                                                 <table style="border: none;">
                                                                    <tr>
                                                                        
                                                                        <td style="text-align: right"><label for="panumberimg">Yearly</label></td>
                                                                        <td style="margin-top: 0px;padding-top: 0px">
                                                                      <input type="radio" name="monthyr" onclick="displayYearPrice()"  id="monthyr" value="Yearly"/>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                              


                                                            </div>
                                                        
                                                          <div class="col-md-4"> 
                                                         </div>
                                                           
                                                       

                                                    </div> 
                                                </div> 

                                             












                                            </div>
                                        </div> 
                                    </div> 



                                    <div class="rms-content-box" id="tab5">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                <!--                                                <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i><span id="monthyrtitle"> Monthly </span></div>
                                                                                                <div class="step-label">Step 6 - 8 </div> -->
                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                    <div id="mon" style="display: block">
                                                        <div class="col-md-12">
                                                            <div class="inpt-form-group"> 

                                                                <div class="col-md-3 right "> 
                                                                    <span for="panumberimg">No Of Months</span> 


                                                                </div>

                                                                <div class="col-md-3"> 

                                                                    <span for="panumberimg">No Of Hours</span> 

                                                                </div>


                                                                <div class="col-md-3"> 

                                                                    <span for="panumberimg">No Of Class</span> 

                                                                </div>


                                                                <div class="col-md-2"> 

                                                                    <span for="panumberimg">Monthly</span> 

                                                                </div>

                                                               


                                                            </div>

                                                        </div> 
                                                    </div>


                                                    <div id="yr" style="display: none">
                                                        <div class="col-md-12">
                                                            <div class="inpt-form-group"> 

                                                                <div class="col-md-3 right "> 
                                                                    <span for="panumberimg">No Of Months</span> 


                                                                </div>

                                                                <div class="col-md-3"> 

                                                                    <span for="panumberimg">No Of Hours</span> 

                                                                </div>


                                                                <div class="col-md-2"> 

                                                                    <span for="panumberimg">No Of cls</span> 

                                                                </div>


                                                                <div class="col-md-1"> 

                                                                    <span for="panumberimg">Discount</span> 

                                                                </div>

                                                                <div class="col-md-2"> 

                                                                    <span for="panumberimg">Total</span> 

                                                                </div>

                                                               



                                                            </div>

                                                        </div> 
                                                    </div>


                                                </div> 






                                                <div class="row">
                                                    <div id="monthval" style="display: block">
                                                        <div class="col-md-12">
                                                            <div class="inpt-form-group"> 

                                                                <div class="col-md-3 right "> 
                                                                    <span for="panumberimg">1</span> 


                                                                </div>

                                                                <div class="col-md-3"> 

                                                                    <span for="panumberimg">360</span> 

                                                                </div>


                                                                <div class="col-md-3"> 

                                                                    <span for="panumberimg">8</span> 

                                                                </div>


                                                                <div class="col-md-2"> 

                                                                    <span for="panumberimg">2000</span> 

                                                                </div>

                                                               


                                                            </div>

                                                        </div>

                                                    </div>


                                                    <div id="yrval" style="display: none">
                                                        <div class="col-md-12">
                                                            <div class="inpt-form-group"> 

                                                                <div class="col-md-3 right "> 
                                                                    <span for="panumberimg">12</span> 


                                                                </div>

                                                                <div class="col-md-3"> 

                                                                    <span for="panumberimg">4360</span> 

                                                                </div>


                                                                <div class="col-md-2"> 

                                                                    <span for="panumberimg">96</span> 

                                                                </div>


                                                                <div class="col-md-1"> 

                                                                    <span for="panumberimg">25%</span> 

                                                                </div>

                                                                <div class="col-md-2"> 

                                                                    <span for="panumberimg">18000</span> 

                                                                </div>

                                                               


                                                            </div>

                                                        </div>

                                                    </div>
                                                </div> 








                                            </div>
                                        </div> 
                                    </div>  



                                    <div class="rms-content-box" id="tab6">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                <!--                                                <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i><span> Billing Details </span></div>
                                                                                                <div class="step-label">Step 7 - 8 </div> -->
                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-5 right "> 
                                                                <span for="panumberimg">Parent Name</span> 


                                                            </div>
                                                            <div class="col-md-5"> 

                                                                <input type="text" name="pname"  value="" required="" />

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 
  <div class="clear10"></div>
                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-5 right "> 
                                                                <span for="panumberimg">Student Name</span> 


                                                            </div>
                                                            <div class="col-md-5"> 

                                                                <input type="text" name="studname"  value="" required="" />

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 



  <div class="clear10"></div>



                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-5 right "> 
                                                                <span for="panumberimg">Address </span> 


                                                            </div>
                                                            <div class="col-md-5"> 

                                                                <input type="text" name="pname"  value="" required="" />

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 


  <div class="clear10"></div>
                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-5 right "> 
                                                                <span for="panumberimg">Email</span> 


                                                            </div>
                                                            <div class="col-md-5"> 

                                                                <input type="email" name="pname"  value="" required="" />

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 

  <div class="clear10"></div>

                                                <div class="row">
                                                    <div class="col-md-10">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-5 right "> 
                                                                <span for="panumberimg">Mobile</span> 


                                                            </div>
                                                            <div class="col-md-5"> 

                                                                <input type="text" name="pname"  value="" required="" />

                                                            </div>
                                                        </div>

                                                    </div> 
                                                </div> 


                                            </div>
                                        </div> 
                                    </div> 



                                    <div class="rms-content-box" id="tab7">
                                        <div class="rms-content-area">
                                            <div class="rms-content-title">
                                                <!--                                                <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i><span> PAY </span></div>
                                                                                                <div class="step-label">Step 8 - 8 </div> -->
                                            </div>
                                            <div class="rms-content-body"> 
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="inpt-form-group"> 

                                                            <div class="col-md-3 right "> 
                                                                <a href="#">   <span for="panumberimg">GPAY</span> </a>



                                                            </div>

                                                            <div class="col-md-3"> 

                                                                <a href="#">   <span for="panumberimg">PAYTM</span> </a>

                                                            </div>


                                                            <div class="col-md-3"> 

                                                                <a href="#">   <span for="panumberimg">NET BANKING</span> </a>

                                                            </div>





                                                        </div>

                                                    </div> 
                                                </div> 















                                            </div>
                                        </div> 
                                    </div>  
                                </div>


                                <!--Wizard Content Section Close-->
                                <!--Wizard Footer section Start-->
                                <div class="rms-footer-section">
                                    <div class="button-section">
                                        <span class="btnccfooter ">
                                            <a href="javascript:void(0)" onclick="nextPrev(1)" id="nxt"  ><img src="images/cc/next.png" height="50" width="50"/>
                                               
                                            </a>
                                        </span>
                                        <span class="btnccfooterleft">
                                            <a href="javascript:void(0)"  id="prev"  style="display: none" onclick="nextPrev1(-1)"><img src="images/cc/prev.png" height="50" width="50"/>
                                                
                                            </a>
                                        </span>
                                        <span class="btnccfooter ">
                                            <!--                                                <button type="submit" class=" btn" >Submit</button>-->
                                            <div class="clear40"></div>
                                            <a href="javascript:void(0)" class="btnccfootersub"  id="sub" style="display: none" onclick="completeprofile()">Submit                      
                                               
                                            </a>
                                        </span> 
                                    </div>
                                </div>
                                <!--Wizard Footer Close-->
                            </div>

                        </form>
                    </div>
                    <!--Wizard Container Close-->
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