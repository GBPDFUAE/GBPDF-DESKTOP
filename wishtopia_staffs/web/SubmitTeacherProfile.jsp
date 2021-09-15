<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
        <title>Wishtopia</title>

        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,500i,700,700i,900" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet"> 
        <link href="css/bootstrap-grid.css" rel="stylesheet">
        <link href="css/multistep.min.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        
        
        <![endif]-->
        <style type="text/css">
            .error{
                display: none;
                margin-left: 10px;
            }		

            .error_show{
                color: red;
                display: none;
                margin-left: 10px;
            }
        </style>
    </head>

    <body>
        <!--Multi Step Wizard Start-->
        <div class="main-wrapper">

            <div class="header">
                <div class="header-left">
                    <a href="#" class="logo">
                        <img src="assets/img/upt.png" width="30" height="30" alt=""> <span>Wishtopia</span>
                    </a>
                </div>
                <!--                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>-->


            </div>

            <div class="page-wrapper_middle ">
                <div class="content">
                    <div id="rms-wizard" class="rms-wizard">
                        <!--Wizard Container-->
                        <div class="rms-container">
                            <!--Wizard Header-->
                            <div class="rms-wizard-header">
                                <h2 class="title">Onboarding <span>Form </span></h2>
                            </div>
                            <!--Wizard Header Close--> 
                            <form method="post" action="CompleteProfile" id="frm" enctype="multipart/form-data">
                                <div class="rms-form-wizard">
                                    <!--Wizard Step Navigation Start-->
                                    <div class="rms-step-section" data-step-counter="true" data-step-image="false">
                                        <ul class="rms-multistep-progressbar"> 
                                            <li class="rms-step rms-current-step" id="step1">
                                                <span class="step-icon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                                                <span class="step-title">Personal Information</span>
                                                <span class="step-info">Enter your Personal  details</span>
                                            </li> 

                                            <li class="rms-step " id="step2">
                                                <span class="step-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                <span class="step-title">Work&nbsp;Experience</span>
                                                <span class="step-info">Enter your Experience details</span>
                                            </li>

                                            <li class="rms-step " id="step3">
                                                <span class="step-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                                <span class="step-title">Educational Information</span>
                                                <span class="step-info">Enter your Educational details</span>
                                            </li>
<!--                                            <li class="rms-step " id="step4">
                                                <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                                                <span class="step-title">Bank Information</span>
                                                <span class="step-info">Enter your Bank details</span>
                                            </li>-->

                                        </ul>
                                    </div>
                                    <!--Wizard Navigation Close-->
                                    <!--Wizard Content Section Start-->


                                    <div class="rms-content-section">

                                        <div class="rms-content-box rms-current-section" id="tab1">
                                            <div class="rms-content-area">
                                                <div class="rms-content-title">
                                                    <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i> Personal</b> Information</div>
                                                    <div class="step-label">Step 1 - 4 </div> 
                                                </div>
                                                <div class="rms-content-body"> 
                                                    <div class="row">
                                                        <div class="col-md-12">

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="firstname">First Name</label>
                                                                        <div class="inpt-group">

                                                                            <input type="text" name="firstname" id="firstname" class="inpt-control"  required="" placeholder="First Name">
                                                                            <span class="error_show" id="fname">First Name is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="lastname">Last Name</label>
                                                                        <div class="inpt-group">
                                                                            <input type="text" name="lastname" id="lastname"  class="inpt-control" required=""  placeholder="Last name">
                                                                            <span class="error_show" id="lname">Last Name is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div> 
                                                            </div> 


                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="Email">Email</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"></span>
                                                                            <input type="text" name="email" id="email" class="inpt-control" required="" placeholder="Please Enter your mail ID">
                                                                            <span class="error_show" id="eemail">Email is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="phone">Contact Number</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-phone fa-rotate-270" aria-hidden="true"></i></span>
                                                                            <input type="text" name="phone" id="phone" class="inpt-control" placeholder="Please Enter your Phone Number">
                                                                            <span class="error_show" id="ephone">Phone Number is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="gender">Gender</label>
                                                                        <div class="inpt-group dropdown-select-icon"> 
                                                                            <select name="gender" id="gender" class="inpt-control">
                                                                                <option value="1"  selected>Select Gender</option>
                                                                                <option value="male">Male</option>
                                                                                <option value="female">Female</option>
                                                                            </select> 
                                                                        </div>
                                                                        <span class="error_show" id="egender">Gender is required</span>
                                                                    </div>
                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-4">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="zipcode">Date Of Birth</label>
                                                                        <div class="inpt-group">  
                                                                            <input type="date" name="dob" id="dob" class="inpt-control" placeholder="Date of Birth"> 
                                                                        </div>
                                                                        <span class="error_show" id="edob">Date of Birth is required</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="state"> Subjects</label>
                                                                        <div class="inpt-group dropdown-select-icon"> 
                                                                            <select name="subjects" id="subjects" class="inpt-control" onchange="CheckSubOthers(this.value);">
                                                                                <option value="" disabled selected>Select Subjects</option>
                                                                                <option value="Tamil">Tamil</option>
                                                                                <option value="English">English</option>
                                                                                <option value="Hindi">Hindi</option>
                                                                                <option value="French">French</option>
                                                                                <option value="Kindergarten">Kindergarten</option>
                                                                                <option value="Maths">Maths</option>
                                                                                <option value="Science">Science</option>
                                                                                <option value="History">History</option>
                                                                                <option value="Economics">Economics</option>
                                                                                <option value="Computer Science">Computer Science</option>
                                                                                <option value="Social Science">Social Science</option>
                                                                                <option value="Botany">Botany</option>
                                                                                <option value="zoology">Zoology</option>
                                                                                <option value="Physics">Physics</option>                                                                               
                                                                                <option value="chemistry">Chemistry</option>
                                                                                <option value="Geography">Geography</option>
                                                                                <option value="Account">Account</option>
                                                                                <option value="Statistics">Statistics</option>
                                                                                <option value="Commerce">Commerce</option>
                                                                                <option value="evs">EVS</option>
                                                                                <option value="Business Accounts">Business Accounts</option>
                                                                                <option value="Others">Others</option>
                                                                            </select> 
                                                                            <input type="text" name="subjects"  id="txtsubjects" style="display: none;" class="inpt-control" required="" placeholder="Please Enter subject Name">
                                                                            <span class="error_show" id="esub">Subject is required</span>
                                                                        </div> 
                                                                    </div>
                                                                </div>
                                                            </div>


                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="address"> Address</label>
                                                                        <div class="inpt-group">  
                                                                            <input type="text" name="address" id="address"  class="inpt-control" placeholder="Please Enter your Home Address">
                                                                            <span class="error_show" id="eadd">Address is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>



                                                            <div class="row">

                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="fathername">Father/Husband Name</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-male" aria-hidden="true"></i></span>
                                                                            <input type="text" name="fathername"  id="fathername" class="inpt-control" required="" placeholder="Please Enter Father's Name">
                                                                            <span class="error_show" id="efat">Father Name is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="alternatecon_num">Alternative Contact Number</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-female" aria-hidden="true"></i></span>
                                                                            <input type="number" name="alternatecon_num"  id="alternatecon_num" class="inpt-control " required="" placeholder="Please Enter Contact Number">
                                                                            <span class="error_show" id="emot">Contact Number  is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">

                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="name">Pan Number</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-money" aria-hidden="true"></i></span>
                                                                            <input type="text" name="panumber"  id="panumber" class="inpt-control" required placeholder="Please Enter Pan Number">
                                                                            <span class="error_show" id="epan">Pan Number is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>


                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="panumberimg"> Attach Pan card Front Image</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-file" aria-hidden="true"></i></span>
                                                                            <input type="file" name="panumberimg"  id="panumberimg" class="inpt-control required">
                                                                            <span class="error_show" id="epanimg">Pan card image is required</span>

                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>


                                                            <div class="row">

                                                                <div class="col-md-4">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="name">Aadhar Number</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                                                                            <input type="text" name="aadhar"  id="aadhar" class="inpt-control required" placeholder="Please Enter Aadhar Number">
                                                                            <span class="error_show" id="eadhar">Aadhar Number is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-4">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="Aadharimg"> Attach Aadhar card fornt Image</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                                                                            <input type="file" name="aadharfimg"  id="aadharfimg" class="inpt-control required">
                                                                            <span class="error_show" id="eadharfimg">Aadhar Front image is required</span>

                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-4">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="Aadharimg"> Attach Aadhar card back Image</label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-id-card-o" aria-hidden="true"></i></span>
                                                                            <input type="file" name="aadharbimg"  id="aadharbimg" class="inpt-control required">
                                                                            <span class="error_show" id="eadharbimg">Aadhar back image is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div> 


                                                            </div>
                                                            
                                                              <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="abt">About me </label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-user-secret" aria-hidden="true"></i></span>
                                                                            <input type="text" name="abt" id="abt" class="inpt-control " required="" placeholder="about me">

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="hobbies">Hobbies Interests </label>
                                                                        <div class="inpt-group"> 
                                                                            <span class="inpt-group-addon"><i class="fa fa-phone fa-rotate-270" aria-hidden="true"></i></span>
                                                                            <input type="text" name="hobbies" id="hobbies" class="inpt-control required" placeholder="Please Enter your Hobbies or Interests">

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>









                                                        </div> 
                                                    </div> 
                                                </div> 
                                            </div> 
                                        </div>

                                        <div class="rms-content-box" id="tab2">
                                            <div class="rms-content-area">
                                                <div class="rms-content-title">
                                                    <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i> Personal</b> Information</div>
                                                    <div class="step-label">Step 2 - 4 </div> 
                                                </div>
                                                <div class="rms-content-body"> 
                                                    <div class="row">
                                                        <div class="col-md-12">
                                                            <!--                                   <div class="row">
                                                                                                    <div class="col-md-6">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="name">Father's Name</label>
                                                                                                           <div class="inpt-group"> 
                                                                                                               <span class="inpt-group-addon"><i class="fa fa-male" aria-hidden="true"></i></span>
                                                                                                               <input type="text" name="fathername"  id="fathername" class="inpt-control required" placeholder="Please Enter Father's Name">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div>
                                                                                                       <div class="col-md-6">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="mothername">Mothers Name</label>
                                                                                                             <div class="inpt-group"> 
                                                                                                                <span class="inpt-group-addon"><i class="fa fa-female" aria-hidden="true"></i></span>
                                                                                                               <input type="text" name="mothername"  id="mothername" class="inpt-control required" placeholder="Please Enter Mother Name">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div>
                                                                                                </div>
                                                                                              
                                                                                              <div class="row">
                                                                                                    <div class="col-md-6">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="name">Pan Number</label>
                                                                                                           <div class="inpt-group"> 
                                                                                                               <span class="inpt-group-addon"><i class="fa fa-money" aria-hidden="true"></i></span>
                                                                                                               <input type="text" name="panumber"  id="fathername" class="inpt-control required" placeholder="Please Enter Pan Number">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div>
                                                                                                       <div class="col-md-6">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="panumberimg"> Attach Pan card Image</label>
                                                                                                             <div class="inpt-group"> 
                                                                                                                <span class="inpt-group-addon"><i class="fa fa-file" aria-hidden="true"></i></span>
                                                                                                                <input type="file" name="panumberimg"  id="panumberimg" class="inpt-control required">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div>
                                                                                                </div>
                                                                                                 
                                                                                                 
                                                                                                    <div class="row">
                                                                                                    <div class="col-md-4">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="name">Aadhar Number</label>
                                                                                                           <div class="inpt-group"> 
                                                                                                               <span class="inpt-group-addon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                                                                                                               <input type="text" name="Aadhar"  id="fathername" class="inpt-control required" placeholder="Please Enter Aadhar Number">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div>
                                                                                     
                                                                                                        <div class="col-md-4">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="Aadharimg"> Attach Aadhar card fornt Image</label>
                                                                                                             <div class="inpt-group"> 
                                                                                                                <span class="inpt-group-addon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                                                                                                                <input type="file" name="aadharfimg"  id="aadharfimg" class="inpt-control required">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div>
                                                                                                        
                                                                                                         <div class="col-md-4">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="Aadharimg"> Attach Aadhar card back Image</label>
                                                                                                             <div class="inpt-group"> 
                                                                                                                <span class="inpt-group-addon"><i class="fa fa-id-card-o" aria-hidden="true"></i></span>
                                                                                                                <input type="file" name="aadharbimg"  id="aadharbimg" class="inpt-control required">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div> 
                                                                                                        
                                                                                                        
                                                                                                </div>
                                                                                                <div class="row">
                                                                                                    <div class="col-md-12">
                                                                                                        <div class="inpt-form-group"> 
                                                                                                           <label for="hobbies">Hobbies Interests </label>
                                                                                                           <div class="inpt-group"> 
                                                                                                               <span class="inpt-group-addon"><i class="fa fa-phone fa-rotate-270" aria-hidden="true"></i></span>
                                                                                                               <input type="text" name="hobbies" id="hobbies" class="inpt-control required" placeholder="Please Enter your Hobbies or Interests">
                                                                                                              
                                                                                                            </div>
                                                                                                        </div>
                                                                                                     </div>
                                                                                                </div>-->

                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            <div class="row" id="dynamic_field">
                                                                
                                                                <div class="col-md-3">
                                                                      <div class="inpt-form-group"> 
                                                                                        <label for="wrkschool"> School Name</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="text" name="wrkschool" id="wrkschool" class="inpt-control required" placeholder="School Name"> 
                                                                                            <span class="error_show" id="ewschool">School Name is required</span>
                                                                                        </div>
                                                                                    </div>
                                                                </div>
                                                                
                                                                
                                                                 <div class="col-md-3">
                                                                      <div class="inpt-form-group"> 
                                                                                        <label for="wrkexp">Working Experience</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="text" name="wrkexp" id="wrkexp" class="inpt-control required" placeholder="eg:1.3 means 1 yr 3 months"> 
                                                                                            <span class="error_show" id="ewrkexp">Working Experience is required</span>
                                                                                        </div>

                                                                                    </div>
                                                                </div>
                                                                
                                                                 <div class="col-md-3">
                                                                         <div class="inpt-form-group"> 
                                                                                        <label for="board">Board</label>
                                                                                        <div class="inpt-group">  
                                                                                            <Select   class="inpt-control" name="brd"id="brd">
                                                                                                <option value="select" selected="">Select </option>
                                                                                                <option value="CBSE">CBSE </option>
                                                                                                <option value="ICSE">ICSE </option>
                                                                                                <option value="IB">IB </option>
                                                                                                <option value="IGCSE">IGCSE </option>
                                                                                                <option value="STB">STATE BOARD </option>
                                                                                                <option value="Matric">Matric </option>


                                                                                            </select>

                                                                                            <span class="error_show" id="ebord">Board is required</span>
                                                                                        </div>

                                                                                    </div>
                                                                </div>
                                                                
                                                                 <div class="col-md-3">
                                                                       <div class="inpt-form-group"> 
                                                                                        <label for="more">&nbsp;</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="button" name="add" id="add" class="inpt-control" value="Add more(+)" > 
                                                                                        </div>
                                                                                    </div>

                                                                </div>
                                                            </div>
<!--                                                            <div class="row">

                                                                <div class="col-md-12">

                                                                    <div class="table-responsive">  
                                                                        <table class="table table-bordered" id="dynamic_field">  
                                                                            <tr>  
                                                                                <td class="col-md-12">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="wrkschool"> School Name</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="text" name="wrkschool" id="wrkschool" class="inpt-control required" placeholder="School Name"> 
                                                                                            <span class="error_show" id="ewschool">School Name is required</span>
                                                                                        </div>
                                                                                    </div>


                                                                                </td>  
                                                                                <td class="col-md-12">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="wrkexp">Working Experience</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="text" name="wrkexp" id="wrkexp" class="inpt-control required" placeholder="eg:1.3 means 1 yr 3 months"> 
                                                                                            <span class="error_show" id="ewrkexp">Working Experience is required</span>
                                                                                        </div>

                                                                                    </div>
                                                                                </td>  



                                                                                <td class="col-md-12">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="board">Board</label>
                                                                                        <div class="inpt-group">  
                                                                                            <Select   class="inpt-control" name="brd"id="brd">
                                                                                                <option value="select" selected="">Select </option>
                                                                                                <option value="CBSE">CBSE </option>
                                                                                                <option value="ICSE">ICSE </option>
                                                                                                <option value="IB">IB </option>
                                                                                                <option value="IGCSE">IGCSE </option>
                                                                                                <option value="STB">STATE BOARD </option>
                                                                                                <option value="Matric">Matric </option>


                                                                                            </select>

                                                                                            <span class="error_show" id="ebord">Board is required</span>
                                                                                        </div>

                                                                                    </div>
                                                                                </td>  
                                                                                <td class="col-md-12">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="more">&nbsp;</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="button" name="add" id="add" class="inpt-control" value="+" > 
                                                                                        </div>
                                                                                    </div>


                                                                                </td>  
                                                                            </tr>  
                                                                        </table>  

                                                                    </div>  

                                                                </div></div>-->

   <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="ccl">Interested to Take Communication Class </label>
                                                                        <div class="inpt-group dropdown-select-icon"> 
                                                                            <select name="tcc" id="tcc" class="inpt-control" onchange="langlrn(this.value)">
                                                                                <option value="select" selected="">Select</option>
                                                                                <option value="YES">YES</option>
                                                                                <option value="NO">NO</option>
                                                                            </select> 
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6" >
                                                                    <div class="inpt-form-group" id="lanlen" style="display: none"> 
                                                                        <label for="more">Language Learning</label>
                                                                        <div class="inpt-group dropdown-select-icon"> 
                                                                            <select name="ll" id="tt" class="inpt-control " >
                                                                                <option value="select"selected>Select</option>
                                                                                <option value="Tamil">Tamil</option>
                                                                                <option value="English">English</option>
                                                                                 <option value="Hindi">Hindi</option>
                                                                                  <option value="French">French</option>
                                                                            </select> 
                                                                        </div>
                                                                    </div>
                                                                </div> 

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="tt">Interested to Take Online Tution </label>
                                                                        <div class="inpt-group dropdown-select-icon"> 
                                                                            <select name="tt" id="tt" class="inpt-control " onchange="tution(this.value)">
                                                                                <option value="select"selected>Select</option>
                                                                                <option value="YES">YES</option>
                                                                                <option value="NO">NO</option>
                                                                            </select> 
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="more">&nbsp;</label>
                                                                        <div class="inpt-group">  
                                                                            <input type="button" name="add1" id="add1" class="inpt-control" value="Add Subjects(+)"> 
                                                                        </div>
                                                                    </div>
                                                                </div> 

                                                            </div>


                                                            <div class="row" id="dynamic_field1" style="display: none">
                                                                
                                                                 <div class="col-md-12">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="std">Standard</label>
                                                                                        <div class="inpt-group " > 
                                                                                            <div class="form-control" style="overflow: auto; overflow-y: auto;height: 40px;">
                                                                                                                                         
                                                                                                <input type="checkbox" class="std"   name="std" value="Nursery">&nbsp;Nursery&nbsp;&nbsp;&nbsp;
                                                                                                <input type="checkbox" class="std"  name="std" value="Juniorkg">&nbsp;Junior KG&nbsp;&nbsp;&nbsp;
                                                                                                <input type="checkbox" class="std" name="std" value="Seniorkg">&nbsp;Senior KG&nbsp;&nbsp;&nbsp;

                                                                                                <%
                                                                                                    for (int i = 1; i <= 12; i++) {
                                                                                                %>
<!--                                                                                                <option value="<%=i%>"><%=i%></option>-->
                                                                                                <input type="checkbox"  class="std" name="std" value="<%=i%>">&nbsp;<%=i%>&nbsp;&nbsp;
                                                                                                <%
                                                                                                    }
                                                                                                %>
                                                                                                <!--                                                                                            </select>-->

                                                                                            </div>
                                                                                            <span class="error_show" id="esubject">Standard is required</span>
                                                                                        </div>
                                                                                    </div>


                                                                                </div> 

                                                                <div class="col-md-12">


                                                                                <div class="col-md-4">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="subject"> Subject Name</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="text" name="subject" id="subject" class="inpt-control required addsub" placeholder="Subject Name"> 
                                                                                            <span class="error_show" id="esubject">Subject Name is required</span>
                                                                                        </div>
                                                                                    </div>


                                                                                </div>  
                                                                                
                                                                                <div class="col-md-4">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="srttime">Start Time </label>
                                                                                        <div class="inpt-group">  

                                                                                            <input type="time" name="sttme" id="srttime" class="inpt-control addst"/>

                                                                                        </div>

                                                                                    </div>

                                                                                </div>  




                                                                                <div class="col-md-4">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="endtime">End Time </label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="time" name="endtime" id="endtime" class="inpt-control required addend" > 
                                                                                        </div>

                                                                                    </div>




                                                                                </div>



                                                                    </div> 
                                                                    <span class="error_show" id="essub">Subjects is required</span>

                                                                </div>                                        




                                                        </div> 
                                                    </div> 
                                                </div> 
                                            </div> 
                                        </div>




                                        <div class="rms-content-box" id="tab3">
                                            <div class="rms-content-area">
                                                <div class="rms-content-title">
                                                    <div class="leftside-title"><b> <i class="fa fa-book" aria-hidden="true"></i> Educational</b> Information</div>
                                                    <div class="step-label">Step 3 - 4 </div>

                                                </div>
                                                <div class="rms-content-body"> 
                                                    <div class="row">
                                                        <div class="col-md-12">

                                                            <div class="row" id="dynamic_field2">

                                                                <div class="col-md-12">

<!--                                                                    <div class="table-responsive">  
                                                                        <table class="table table-bordered" id="dynamic_field2">  
                                                                            <tr>  -->
                                                                                <div class="col-md-6">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="Instution"> Instution Name</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="text" name="instution" id="instution" class="inpt-control required" placeholder="Instution Name"> 
                                                                                        </div>
                                                                                    </div>


                                                                                </div>  
                                                                                <div class="col-md-3">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="Degree">Degree</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="text" name="degree" id="degree" class="inpt-control required" placeholder="MSC,MED"> 
                                                                                        </div>

                                                                                    </div>
                                                                                </div>  
                                                                                <div class="col-md-3">  

                                                                                    <div class="inpt-form-group"> 
                                                                                        <label for="more">&nbsp;</label>
                                                                                        <div class="inpt-group">  
                                                                                            <input type="button" name="add" id="add2" class="inpt-control" value="Add Instution(+)"> 
                                                                                        </div>
                                                                                    </div>


                                                                                </div>  
<!--                                                                            </tr>  
                                                                        </table>  

                                                                    </div>  -->

                                                                </div></div>


                                                        </div> 
                                                    </div> 
                                                </div> 
                                            </div> 
                                        </div>







<!--                                        <div class="rms-content-box" id="tab4">
                                            <div class="rms-content-area">
                                                <div class="rms-content-title">
                                                    <div class="leftside-title"><b> <i class="fa fa-bank" aria-hidden="true"></i> Bank</b> Details</div>
                                                    <div class="step-label">Step 4 - 4 </div> 
                                                </div>
                                                <div class="rms-content-body"> 
                                                    <div class="row">
                                                        <div class="col-md-12">

                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="Bankname">Bank Name</label>
                                                                        <div class="inpt-group">
                                                                            <input type="text" name="bankname" id="bankname" class="inpt-control " required="" placeholder="Bank Name">
                                                                            <span class="error_show" id="ebankname">Bank Name is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="lastname">IFSC CODE</label>
                                                                        <div class="inpt-group">
                                                                            <input type="text" name="ifsc" id="ifsc" class="inpt-control" required="" placeholder="IFSC CODE">
                                                                            <span class="error_show" id="eifsc">IFSC CODE is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div> 
                                                            </div> 



                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="MICR">MICR  CODE</label>
                                                                        <div class="inpt-group">
                                                                            <input type="text" name="micr" id="bankname" class="inpt-control" required placeholder="MICR CODE">

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="records">Cancelled cheque/Passbook </label>
                                                                        <div class="inpt-group">
                                                                            <input type="file" name="records" id="records" class="inpt-control"  required placeholder="bank records Documents">
                                                                            <span class="error_show" id="erecords">Cancelled cheque/Passbook is required</span>
                                                                        </div>
                                                                    </div>
                                                                </div> 
                                                            </div> 



                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="inpt-form-group"> 
                                                                        <label for="MICR">Name as Per Bank Record </label>
                                                                        <div class="inpt-group">
                                                                            <input type="text" name="bank_address" id="bank_address" class="inpt-control "  required placeholder="Name as Per Bank Record">

                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div> 



                                                        </div> 
                                                    </div> 

                                                </div> 
                                            </div> 
                                        </div>-->
                                    </div>


                                    <!--Wizard Content Section Close-->
                                    <!--Wizard Footer section Start-->
                                    <div class="rms-footer-section">
                                        <div class="button-section">
                                            <span class="next">
                                                <a href="javascript:void(0)" onclick="nextPrev(1)" id="nxt"  class="btn">Next Step
                                                    <small>Your information</small>
                                                </a>
                                            </span>
                                            <span class="prev">
                                                <a href="javascript:void(0)" class="btn"  id="prev"  style="display: none" onclick="nextPrev1(-1)">Previous Step
                                                    <small>Your information</small>
                                                </a>
                                            </span>
                                            <span class="submit">
                                                <!--                                                <button type="submit" class=" btn" >Submit</button>-->

                                                <a href="javascript:void(0)" class="btn submit" id="sub" style="display: none" onclick="completeprofile()">Submit                      
                                                    <small>Your information</small>
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
                    <!--Multi Step Wizard Close-->
                </div>

            </div>
        </div>

        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/select2.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/app.js"></script>
        <script type="text/javascript" src="js/jquery.1.11.3.min.js"></script>  

        <!--    <script type="text/javascript" src="js/multistep.min.js"></script>-->
        <script>
//                                                    $(document).ready(function() {
//                                                        $('#rms-wizard').stepWizard({
//                                                            stepTheme: 'steptheme1', /*defaultTheme,steptheme1,steptheme2*/
//                                                            allstepClickable: false,
//                                                            compeletedStepClickable: true,
//                                                            stepCounter: true,
//                                                            StepImage: true,
//                                                            animation: true,
//                                                            animationClass: "fadeIn",
//                                                            stepValidation: true,
//                                                            validation: true,
//                                                            field: {
//                                                                                     firstname : { 
//                                                                                        required : true, 
//                                                                                        minlength: 2,
//                                                                                        Regex: /^[a-zA-Z]+$/,  
//                                                                                    },
//                                                                                     password : {
//                                                                                        required : true,
//                                                                                        minlength : 5,
//                                                                                        maxlength : 20,
//                                                                                        Regex: /^(?=.*[0-9_\W]).+$/, 
//                                                                                    },
//                                                                                    email:{
//                                                                                        required : true,
//                                                                                        Regex: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
//                                                                                    },
//                                                            },
//                                                            message: {
//                                                                username: "Please Enter UserName ",
//                                                            }
//
//                                                        });
//                                                    });

                                                    var currentTab = 0;
                                                    function nextPrev(n)
                                                    {
                                                        currentTab = currentTab + n;
                                                        
                                                        if(currentTab==0 ||currentTab==-1)
                                                        {
                                                             $("#prev").hide();
                                                        }else
                                                        {
                                                             $("#prev").show();
                                                        }
                                                        // alert(currentTab);
                                                        if (currentTab > 4)
                                                        {
                                                            currentTab = 4;
                                                        }
                                                        if (currentTab == 1)
                                                        {
                                                            //rms-current-step

                                                            var res = valitatinStep1();
                                                            if (res == false) {
                                                                $("#tab1").removeClass("rms-current-section");
                                                                $("#tab2").addClass("rms-current-section");
                                                                $("#step1").removeClass("rms-current-step");
                                                                $("#step2").addClass("rms-current-step");

                                                                $("#nxt").show();
                                                               
                                                                $("#sub").hide();

                                                            } else

                                                            {
                                                                currentTab = 0;
                                                            }





                                                        }

                                                        if (currentTab == 2)
                                                        {
                                                            //rms-current-step
                                                            var res = validatestep2();
                                                            if (res == false) {
                                                                $("#tab2").removeClass("rms-current-section");
                                                                $("#tab3").addClass("rms-current-section");
                                                                $("#step2").removeClass("rms-current-step");
                                                                $("#step3").addClass("rms-current-step");
                                                                $("#nxt").hide();
                                                                $("#sub").show();
                                                            } else
                                                            {
                                                                currentTab = 1;
                                                            }
                                                        }


//                                                        if (currentTab == 3)
//                                                        {
//                                                            //rms-current-step
//
//                                                            $("#tab3").removeClass("rms-current-section");
//                                                            $("#tab4").addClass("rms-current-section");
//                                                            $("#step3").removeClass("rms-current-step");
//                                                           // $("#step4").addClass("rms-current-step");
//                                                            $("#nxt").hide();
//                                                            $("#sub").show();
//
//
//                                                        }


                                                    }




                                                    function nextPrev1(n)
                                                    {

                                                        if (currentTab == -1)
                                                        {
                                                            currentTab = 0;
                                                        }
                                                        if(currentTab==0 ||currentTab==1)
                                                        {
                                                             $("#prev").hide();
                                                        }else
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
                                                           // $("#tab4").removeClass("rms-current-section");
                                                            $("#tab3").addClass("rms-current-section");
                                                         //   $("#step4").removeClass("rms-current-step");
                                                            $("#step3").addClass("rms-current-step");
                                                            $("#nxt").show();
                                                            $("#sub").hide();
                                                        }

                                                        currentTab = currentTab + n;
                                                      //  alert(currentTab);

                                                    }
                                                    function completeprofile()
                                                    {
                                                      //  var res = validateBank();
                                                        // alert(res);
                                                       // if (res == false) {
                                                            document.getElementById("frm").submit();
                                                       // }
                                                    }

        </script> 

        <script>
            $(document).ready(function() {
                var i = 1;
                $('#add').click(function() {
                    i++;
                    $('#dynamic_field').append('<div class="row" id="row' + i + '"><div class="col-md-12"><div class="col-md-3">\n\
     <div class="inpt-form-group"><label for="wrkschool"> School Name</label><div class="inpt-group"><input type="text" name="wrkschool" id="wrkschool" class="inpt-control required" placeholder="School Name"></div></div>\n\
   </div> <div class="col-md-3">\n\
   <div class="inpt-form-group"><label for="wrkschool"> Working Experience</label><div class="inpt-group"><input type="text" name="wrkexp" id="wrkexp" class="inpt-control required" placeholder="Experience"></div></div>\n\
   </div><div class="col-md-3">\n\
   <div class="inpt-form-group"><label for="board">Board</label><div class="inpt-group"><Select   class="inpt-control" name="brd">  <option value="CBSE">CBSE </option>  <option value="ICSE">ICSE </option> <option value="IB">IB </option> <option value="IGCSE">IGCSE </option> <option value="STB">STATE BOARD </option> <option value="Matric">Matric </option> </select></div></div>\n\
   </div><div class="col-md-3">\n\
   <div class="inpt-form-group"><label for="wrkschool">&nbsp;</label><div class="inpt-group"><button type="button" name="remove" id="' + i + '" class="inpt-control btn_remove">X</button></div></div></div>\n\
  </div> </div>');
                });
                $(document).on('click', '.btn_remove', function() {
                    var button_id = $(this).attr("id");
                    $('#row' + button_id + '').remove();
                });



                //subjects


                var i = 0;
                $('#add1').click(function() {
                    i++;
                   // alert(i);
                    $('#dynamic_field1').append('<div class="row" id="srow' + i + '">\n\
           <div class="col-md-12"> \n\
<div class="inpt-form-group"> \n\
<label for="std">Standard</label><div class="inpt-group " > \n\
<div class="form-control" style="overflow: auto; overflow-y: auto;height: 40px;with="30%">\n\
<input type="checkbox" class="std"   name="std" value="Nursery">&nbsp;Nursery&nbsp;&nbsp;&nbsp;\n\
<input type="checkbox" class="std"  name="std" value="Juniorkg">&nbsp;Junior KG&nbsp;&nbsp;&nbsp;\n\
<input type="checkbox" class="std" name="std" value="Seniorkg">&nbsp;Senior KG&nbsp;&nbsp;&nbsp;\n\
            <%for (int i = 1; i <= 12; i++) {%><input type="checkbox" class="std"   name="std" value="<%=i%>">&nbsp;<%=i%>&nbsp;&nbsp;&nbsp;<%}%></div>\n\
</div><span class="error_show" id="esubject">Standard is required</span>  \n\
<div class="col-md-12">\n\
<div class="col-md-3">\n\
     <div class="inpt-form-group"><label for="wrkschool"> Subject Name</label>\n\
<div class="inpt-group "><input type="text" name="subject" id="subject" class="inpt-control  addsub" placeholder="Subject Name"></div>\n\
</div></div>\n\
  <div class="col-md-3">\n\
   <div class="inpt-form-group">\n\
<label for="wrkschool"> Start Time</label>\n\
<div class="inpt-group"><input type="time" name="sttme" id="sttme" class="inpt-control  addst" placeholder="Experience"></div>\n\
</div>\n\
   </div> \n\
   <div class="col-md-3">\n\
   <div class="inpt-form-group">\n\
<label for="wrkschool"> End Time</label>\n\
<div class="inpt-group"><input type="time" name="endtime" id="endtime" class="inpt-control required addend" placeholder="Experience"></div>\n\
</div>\n\
   </div>\n\
   <div class="col-md-3">\n\
   <div class="inpt-form-group">\n\
<label for="wrkschool">&nbsp;</label>\n\
<div class="inpt-group"><button type="button" name="remove" id="' + i + '" class="inpt-control btn_remove1">X</button></div>\n\
</div></div>\n\
   </div>');
                });
                $(document).on('click', '.btn_remove1', function() {
                    var button_id = $(this).attr("id");
                    $('#srow' + button_id + '').remove();
                });





                var i = 1;
                $('#add2').click(function() {
                    i++;
                    $('#dynamic_field2').append('<div class="row" id="irow' + i + '"><div class="col-md-12"><div class="col-md-6">\n\
     <div class="inpt-form-group"><label for="wrkschool"> Instution Name</label><div class="inpt-group"><input type="text" name="instution" id="instution" class="inpt-control required" placeholder="Instution Name"></div></div>\n\
   </div> <div class="col-md-3">\n\
   <div class="inpt-form-group"><label for="wrkschool"> Degree</label><div class="inpt-group"><input type="text" name="degree" id="degree" class="inpt-control required" placeholder="MSC,MED"></div></div>\n\
   </div><div class="col-md-3">\n\
   <div class="inpt-form-group"><label for="wrkschool">&nbsp;</label><div class="inpt-group"><button type="button" name="remove" id="' + i + '" class="inpt-control btn_remove2">X</button></div></div></div>\n\
  </div> </div>');
                });
                $(document).on('click', '.btn_remove2', function() {
                    var button_id = $(this).attr("id");
                    $('#irow' + button_id + '').remove();
                });



//                $(".next").each(function() {
//                    index++;
//                });
//                alert(index);
            });
        </script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/additional-methods.min.js"></script>

        <script type="text/javascript">

            function isEmpty(value) {
                return typeof value == 'string' && !value.trim() || typeof value == 'undefined' || value === null;
            }
            $(function() {



//                $("#firstname").change(function() {
//                    // dFNAME
//                    var fn = $("#fname").value;
//                      
//                    if (isEmpty(fn) == true)
//                    {
//                        $("#fname").show();
//                    } else
//                    {
////                        var letters = /^[A-Za-z]+$/;
////                        var alpha = new RegExp(letters);
////
////                        if (alpha.test(fn)) {
////                            $("#fname").hide();
////                        } else
////                        {
////                            $("#fname").show();
////                        }
//                    }
//
//
//                });
//
//
//
////last name
//
//                $("#lastname").change(function() {
//                    // dFNAME
//                    var ln = this.value;
//
//
//                    if (isEmpty(ln))
//                    {
//                        $("#lname").show();
//                    } else
//                    {
//                        var letters = /^[A-Za-z]+$/;
//                        var alpha = new RegExp(letters);
//
//                        if (alpha.test(ln)) {
//                            $("#lname").hide();
//                        } else
//                        {
//                            $("#lname").show();
//                        }
//                    }
//                });
//
//
//
//                //email name
////
//                $("#email").change(function() {
//                    // dFNAME
//                    var em = this.value;
//
//                    if (isEmpty(em) == true)
//                    {
//                        $("#eemail").show();
//                    } else
//                    {
//                        var mail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
//                        var alpha = new RegExp(mail);
//
//                        if (alpha.test(em)) {
//                            $("#eemail").hide();
//                        } else
//                        {
//                            $("#eemail").show();
//                        }
//                    }
//                });
//
//
//                // #phone
//                $("#phone").change(function() {
//                    // dFNAME
//                    var ph = this.value;
//
//
//                    if (isEmpty(ph))
//                    {
//                        $("#ephone").show();
//                    } else
//                    {
//                        var phm = /^[0-9]*$/;
//                        var alpha = new RegExp(phm);
//
//                        if (alpha.test(ph)) {
//                            $("#ephone").hide();
//                        } else
//                        {
//                            $("#ephone").show();
//                        }
//                    }
//                });
//
//
//
//
//                // #gender
//                $("#gender").change(function() {
//                    // dFNAME
//                    var gn = this.value;
//
//
//                    if (isEmpty(gn))
//                    {
//                        $("#egen").show();
//                    } else
//                    {
//                        $("#egen").hide();
//
//                    }
//                });
//
//
//
//
//                // #gender
//                $("#dob").change(function() {
//                    // dFNAME
//                    var db = this.value;
//
//
//                    if (isEmpty(db))
//                    {
//                        $("#edob").show();
//                    } else
//                    {
//                        $("#edob").hide();
//
//                    }
//                });
//
//
//
//                $("#address").change(function() {
//                    // dFNAME
//                    var addr = this.value;
//
//
//                    if (isEmpty(addr) == true)
//                    {
//                        $("#eadd").show();
//                    } else
//                    {
//                        $("#eadd").hide();
//
//                    }
//                });
//




//
//                $("#address").change(function() {
//                    // dFNAME
//                    var db = this.value;
//
//
//                    if (isEmpty(db))
//                    {
//                        $("#eadd").show();
//                    } else
//                    {
//                        $("#eadd").hide();
//
//                    }
//                });
//
//                $("#fathername").change(function() {
//                    // dFNAME
//                    var db = this.value;
//
//
//                    if (isEmpty(db) == true)
//                    {
//                        $("#efat").show();
//                    } else
//                    {
//                        $("#efat").hide();
//
//                    }
//                });
//
//                $("#mothername").change(function() {
//                    // dFNAME
//                    var mn = this.value;
//
//
//                    if (isEmpty(mn) == true)
//                    {
//                        $("#emot").show();
//                    } else
//                    {
//                        $("#emot").hide();
//
//                    }
//                });
//
//
//
//
//                $("#panumber").change(function() {
//                    // dFNAME
//                    var pn = this.value;
//
//
//                    if (isEmpty(pn) == true)
//                    {
//                        $("#epan").show();
//                    } else
//                    {
//                        $("#epan").hide();
//
//                    }
//                });
//
//
//

//                    $("#mothername").change(function() {
//                    // dFNAME
//                    var db = this.value;
//                   
//                    
//                    if (isEmpty(db))
//                    {
//                        $("#emot").show();
//                    } else
//                    {
//                          $("#emot").hide();
//                   
//                    }
//                });


            });

            function CheckSubOthers(val) {
                // alert(val);
// var element=document.getElementById('sub');
                var txtsub = document.getElementById('txtsubjects');
                if (val == 'Others')
                    txtsub.style.display = 'block';
                else
                    txtsub.style.display = 'none';
            }



            function tution(val) {
                // alert(val);
// var element=document.getElementById('sub');
                var txtsub = document.getElementById('dynamic_field1');
                if (val == 'YES')
                     $("#dynamic_field1").show();
                   // txtsub.style.display = 'block';
                else
                   // txtsub.style.display = 'none';
                 $("#dynamic_field1").hide();
            }


   function langlrn(val) {
               //  alert(val);
// var element=document.getElementById('sub');
                var txtsub1 = document.getElementById('lanlen');
                if (val == 'YES')
                    txtsub1.style.display = 'block';
                else
                    txtsub1.style.display = 'none';
            }

            function isValidDateFormatDDMMYYYY(inputDate) {
                var date_regex = /^^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$/i;
                return date_regex.test(inputDate);
            }

            function valitatinStep1()
            {
                var res = false;

                //First name validation
                var fn = document.getElementById("firstname").value;
                var ln = document.getElementById("lastname").value;
                var mail = document.getElementById("email").value;
                var ph = document.getElementById("phone").value;

                var fat = document.getElementById("fathername").value;

                var alcat = document.getElementById("alternatecon_num").value;
                var genval = document.getElementById("gender").value;
                var subject = document.getElementById("subjects").value;
                var aadharv = document.getElementById("aadhar").value;

                var address = document.getElementById("address").value;

                var panimg = document.getElementById("panumberimg").value;
                var aharfimg = document.getElementById("aadharfimg").value;
                var aharbckimg = document.getElementById("aadharbimg").value;






                var datbirth = document.getElementById("dob").value;

                var f = 1, l = 1, m = 1, c = 1, ft = 1, ac = 1, ge = 1, sub = 1, adr = 1, addrv = 1, pimg = 1, aafimg = 1, aabimg = 1, ddb = 1;


                if (isEmpty(fn))
                {
                    $("#fname").show();
                    res = true;
                } else
                {
                    var letters = /^[0-9]*$/;
                    var alpha = new RegExp(letters);

                    if (alpha.test(fn) == false) {
                        $("#fname").hide();
                        f = 2;
                        res = false;
                    } else
                    {
                        $("#fname").show();
                        res = true;
                    }
                }

                //dob

                if (isEmpty(datbirth))
                {
                    $("#edob").show();
                    res = true;
                } else
                {

                    if (datbirth.length == 10)
                    {
                        res = false;
                        $("#edob").hide();
                        ddb = 2;
                    } else
                    {
                        $("#edob").show();
                        res = true;
                    }
                }

                //Last name


                if (isEmpty(ln))
                {
                    $("#lname").show();
                    res = true;
                } else
                {
                    var letters = /^[0-9]*$/;
                    var alpha = new RegExp(letters);

                    if (alpha.test(ln) == false) {
                        $("#lname").hide();
                        l = 2;
                        res = false;
                    } else
                    {
                        $("#lname").show();
                        res = true;
                    }
                }



                //Email Validation

                if (isEmpty(mail) == true)
                {
                    $("#eemail").show();
                    res = true;
                } else
                {
                    var mailpattrn = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                    var alpha = new RegExp(mailpattrn);

                    if (alpha.test(mail)) {
                        $("#eemail").hide();
                        res = false;
                        m = 2;
                    } else
                    {
                        $("#eemail").show();
                        res = true;
                    }
                }


                //phone Validtion 
                if (isEmpty(ph))
                {
                    $("#ephone").show();
                    res = true;
                } else
                {
                    var phlen = ph.length;
                    var phm = /^[0-9]*$/;
                    var alpha = new RegExp(phm);

                    if (alpha.test(ph) && phlen == 10) {
                        $("#ephone").hide();
                        res = false;
                        c = 2;
                    } else
                    {
                        $("#ephone").show();
                        res = true;
                    }
                }

                // Gender validation  


                if (isEmpty(fat))
                {
                    $("#efat").show();
                    res = true;
                } else
                {
                    var letters = /^[0-9]*$/;
                    var alpha = new RegExp(letters);

                    if (alpha.test(fat) == false) {
                        $("#efat").hide();
                        ft = 2;
                        res = false;
                    } else
                    {
                        $("#efat").show();
                        res = true;
                    }
                }



                if (isEmpty(alcat))
                {
                    $("#emot").show();
                    res = true;
                } else
                {
                    var alphlen = alcat.length;
                    var aphm = /^[0-9]*$/;
                    var alpha = new RegExp(aphm);

                    if (alpha.test(alcat) && alphlen == 10) {
                        $("#emot").hide();
                        res = false;
                        ac = 2;
                    } else
                    {
                        $("#emot").show();
                        res = true;
                    }
                }


                //alert(gen);
                if (genval == "1")
                {
                    $("#egender").show();
                    res = true;
                } else
                {
                    $("#egender").hide();
                    ge = 2;
                    res = false;
                }


                if (isEmpty(subject))
                {
                    $("#esub").show();
                    res = true;
                } else
                {
                    $("#esub").hide();
                    sub = 2;
                    res = false;
                }


//                  if (isEmpty(pan))
//                {
//                    $("#epan").show();
//                    res = true;
//                } else
//                {
//                    var letters = /^[A-Za-z]+$/;
//                    var alpha = new RegExp(letters);
//
//                    if (alpha.test(alcat)) {
//                        $("#epan").hide();
//
//                        res = false;
//                    } else
//                    {
//                        $("#epan").show();
//                        res = true;
//                    }
//                }







                if (isEmpty(address))
                {
                    $("#eadd").show();
                    res = true;
                } else
                {



                    res = false;
                    addrv = 2;
                    $("#eadd").hide();


                }


                if (isEmpty(panimg))
                {
                    $("#epanimg").show();
                    res = true;
                } else
                {

                    $("#epanimg").hide();
                    pimg = 2;
                    res = false;

                }

                if (isEmpty(aadharv))
                {
                    $("#eadhar").show();
                    res = true;
                } else
                {
                    var letters = /^[0-9]*$/;
                    var alpha = new RegExp(letters);

                    if (alpha.test(aadharv)) {
                        $("#eadhar").hide();
                        adr = 2;
                        res = false;
                    } else
                    {
                        $("#eadhar").show();
                        res = true;
                    }
                }

                if (isEmpty(aharfimg))
                {
                    $("#eadharfimg").show();
                    res = true;
                } else
                {

                    $("#eadharfimg").hide();
                    aafimg = 2;
                    res = false;

                }


                if (isEmpty(aharbckimg))
                {
                    $("#eadharbimg").show();
                    res = true;
                } else
                {

                    $("#eadharbimg").hide();
                    aabimg = 2;
                    res = false;

                }






                if (f == 2 && l == 2 && m == 2 && c == 2 && ft == 2 && ac == 2 && ge == 2 && sub == 2 && adr == 2 && addrv == 2 && pimg == 2 && aafimg == 2 && aabimg == 2 && ddb == 2)
                {
                    res = false;
                } else
                {
                    res = true;
                }



                return res;


            }


            function validatestep2()
            {
                var v1 = 1, v2 = 1, v3 = 1, v4 = 1, v5 = 1, v6 = 1, v7 = 1,v8=1;

                var res = false;

                var schollname = document.getElementById("wrkschool").value;
                var wrkexp = document.getElementById("wrkexp").value;
                var tt = document.getElementById("tt").value;
                 var brd = document.getElementById("brd").value;
                  var std = document.getElementsByClassName("std");
                  
                var subname = document.getElementById("subject").value;
                var elements = document.getElementsByClassName("addsub");
                var atms = document.getElementsByClassName("addst");
                var atend = document.getElementsByClassName("addend");


                for (var i = 0; i < elements.length; i++) {
                    var value = elements[i].value;

                    if (isEmpty(value))
                    {
                        $("#essub").show();
                        $('#essub').text('Subeject Required');
                        res = true;
                    } else
                    {
                        if(v2==2 && v3==2){
                        $("#essub").hide();
                    }
                        v1 = 2;
                    }

                }



                for (var i = 0; i < atms.length; i++) {

                    var sts = atms[i].value;

                    if (isEmpty(sts))
                    {
                       // alert(sts);
                        $("#essub").show();
                        $('#essub').text('Start Time Required');
                        res = true;
                    } else
                    {
                        if(v1==2 && v3==2){
                        $("#essub").hide();
                    }
                        v2 = 2;
                        res = false;
                    }

                }





                for (var i = 0; i < atend.length; i++) {


                    var ends = atend[i].value;




                    if (isEmpty(ends))
                    {
                        $("#essub").show();
                        $('#essub').text('End time Required');
                        res = true;
                    } else
                    {
                        if(v1==2 && v2==2){
                        $("#essub").hide();
                    }
                        v3 = 2;
                    }



                }


































                if (isEmpty(schollname))
                {
                    $("#ewschool").show();
                    res = true;

                } else
                {

                    $("#ewschool").hide();
                    v4 = 2;
                    res = false;

                }


                if (isEmpty(wrkexp))
                {
                    $("#ewrkexp").show();
                    res = true;

                } else
                {

                    $("#ewrkexp").hide();
                    v5 = 2;
                    res = false;

                }



                if (isEmpty(subname) && tt == "YES")
                {
                    $("#esubject").show();
                    res = true;

                } else
                {

                    $("#esubject").hide();

                    res = false;
                    v6 = 2;

                }
                
                  var cc=0;
        for(var i in std){
	       if(std[i].checked)cc++; 
	}
       // alert(cc);
        if(cc>0)
        {
              $('#essub').hide();
              v7=2;
        }else
        {
             $('#essub').text('Stardard Required'); 
              $('#essub').show();
        }
                if(tt=="NO" || tt=="No" ||tt=="no")
                {
                    v1=2;v2=2;v3=2; v7=2;
                     $("#essub").hide();
                }

if(brd=="select" || brd=="Select")
{
    //ebord
     $("#ebord").show();
}else
{
     $("#ebord").hide();
     v8=2;
}
    
        //var stdlen=std.length;
      
        // alert(v1 + "," + v2 + "," + v3 + "," + v4 + "," + v5 + "," + v6);
                if (v1 == 2 && v2 == 2 && v3 == 2 && v4 == 2 && v5 == 2 && v6 == 2 && v7==2 && v8==2)
                {
                    res = false;
                } else
                {
                    res = true;
                }

                return res;
            }


            function validateBank()
            {
                var res = false;
                var bankname = document.getElementById("bankname").value;
                var ifsc = document.getElementById("ifsc").value;
                var records = document.getElementById("records").value;
//                var ifsc= document.getElementById("ifsc").value;
                var bn = 1, isc = 1, rec = 1;
                if (isEmpty(bankname))
                {
                    $("#ebankname").show();
                    res = true;
                } else
                {

                    var letters = /^[0-9]*$/;
                    var alpha = new RegExp(letters);

                    if (alpha.test(bankname) == false) {
                        $("#ebankname").hide();
                        bn = 2;
                        res = false;
                    } else
                    {
                        $("#ebankname").show();
                        res = true;
                    }


                }




                if (isEmpty(ifsc))
                {
                    $("#eifsc").show();
                    res = true;
                } else
                {

                    $("#eifsc").hide();
                    isc = 2;
                    res = false;

                }






                if (isEmpty(records))
                {
                    $("#erecords").show();
                    res = true;
                } else
                {

                    $("#erecords").hide();
                    rec = 2;

                    res = false;

                }




                if (bn == 2 && isc == 2 && rec == 2)
                {
                    res = false;
                } else
                {

                    res = true;
                }



                return res;

            }





        </script>
    </body>



</html>













