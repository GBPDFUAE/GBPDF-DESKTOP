<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
    <title>Add Staff</title>

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
</head>

<body>
  <!--Multi Step Wizard Start-->
    <div class="main-wrapper">
        
          <div class="header">
                <div class="header-left">
                    <a href="#" class="logo">
                        <img src="assets/img/upt.png" width="35" height="35" alt=""> <span>Teck Whizz</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
                <ul class="nav user-menu float-right">
                    <%@include  file="Notification.jsp" %>
                    
                    <!-- MSG HEAD-->
                    <li class="nav-item dropdown d-none d-sm-block">
                        <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link">
                            <i class="fa fa-comment-o"></i>
                            <span class="badge badge-pill bg-danger float-right">1</span>
                        </a>
                    </li>
                    <!-- MSG HEAD END -->
                <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/upt.png" width="40" alt="Admin">
                                <span class="status online"></span></span>
                            <span>Staff</span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">My Profile</a>
                            <a class="dropdown-item" href="#">Edit Profile</a>                            
                            <a class="dropdown-item" href="#">Logout</a>
                        </div>
                    </li>
                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="profile.html">My Profile</a>
                        <a class="dropdown-item" href="edit-profile.html">Edit Profile</a>
                        <a class="dropdown-item" href="settings.html">Settings</a>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
            <%@include file="Menu.jsp" %>
             <div class="page-wrapper">
                <div class="content">
   <div id="rms-wizard" class="rms-wizard">
   <!--Wizard Container-->
    <div class="rms-container">
       <!--Wizard Header-->
        <div class="rms-wizard-header">
            <h2 class="title">Add Complete <span>Profile </span></h2>
        </div>
        <!--Wizard Header Close--> 
        <div class="rms-form-wizard">
           <!--Wizard Step Navigation Start-->
            <div class="rms-step-section" data-step-counter="false" data-step-image="false">
                <ul class="rms-multistep-progressbar"> 
                    <li class="rms-step rms-current-step">
                        <span class="step-icon"><i class="fa fa-lock" aria-hidden="true"></i></span>
                        <span class="step-title">About Information</span>
                        <span class="step-info">Enter your Personal  details</span>
                    </li> 
                    
                     <li class="rms-step ">
                        <span class="step-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                        <span class="step-title">Personal Information</span>
                        <span class="step-info">Enter your Personal details</span>
                    </li>
                    
                    <li class="rms-step ">
                        <span class="step-icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                        <span class="step-title">Educational Information</span>
                        <span class="step-info">Enter your Educational details</span>
                    </li>
                    <li class="rms-step ">
                        <span class="step-icon ml10"><i class="fa fa-credit-card" aria-hidden="true"></i></span>
                        <span class="step-title">Bank Information</span>
                        <span class="step-info">Enter your Bank details</span>
                    </li>
                 
                </ul>
            </div>
            <!--Wizard Navigation Close-->
            <!--Wizard Content Section Start-->
            <div class="rms-content-section">
               
                 <div class="rms-content-box rms-current-section">
                     <div class="rms-content-area">
                        <div class="rms-content-title">
                            <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i> About</b> Information</div>
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
                                                   <input type="text" name="firstname" id="firstname" class="inpt-control required" placeholder="First Name">
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="inpt-form-group"> 
                                                <label for="lastname">Last Name</label>
                                                <div class="inpt-group">
                                                    <input type="text" name="lastname" id="lastname" class="inpt-control required" placeholder="Last name">
                                                   
                                                </div>
                                            </div>
                                         </div> 
                                    </div> 
                                     
                                     
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                               <label for="Email">Email</label>
                                               <div class="inpt-group"> 
                                                   <span class="inpt-group-addon"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                                                   <input type="text" name="email" id="email" class="inpt-control required" placeholder="Please Enter your mail ID">
                                                
                                                </div>
                                            </div>
                                         </div>
                                    </div>
                                    
                                     
                                     <div class="row">
                                        <div class="col-md-6">
                                            <div class="inpt-form-group"> 
                                               <label for="phone">Phone</label>
                                               <div class="inpt-group"> 
                                                   <span class="inpt-group-addon"><i class="fa fa-phone fa-rotate-270" aria-hidden="true"></i></span>
                                                   <input type="text" name="phone" id="phone" class="inpt-control required" placeholder="Please Enter your Phone Number">
                                                  
                                                </div>
                                            </div>
                                         </div>
                                           <div class="col-md-6">
                                            <div class="inpt-form-group"> 
                                               <label for="gender">Gender</label>
                                               <div class="inpt-group dropdown-select-icon"> 
                                                   <select name="gender" id="gender" class="inpt-control select required">
                                                       <option value="null" disabled selected>Select Gender</option>
								    				    <option value="1">Male</option>
								    				    <option value="2">Female</option>
								                    </select> 
                                                </div>
                                            </div>
                                         </div>
                                    </div>
                                     
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="inpt-form-group"> 
                                               <label for="zipcode">Date Of Birth</label>
                                               <div class="inpt-group">  
                                                   <input type="date" name="dob" id="dob" class="inpt-control required" placeholder="Date of Birth"> 
                                                </div>
                                            </div>
                                         </div>
                                        <div class="col-md-8">
                                            <div class="inpt-form-group"> 
                                               <label for="state"> Subjects</label>
                                                <div class="inpt-group dropdown-select-icon"> 
                                                   <select name="subjects" id="state" class="inpt-control select required">
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
                                               <option value="Others">Others</option>
								                    </select> 
                                                  
                                                </div> 
                                            </div>
                                         </div>
                                    </div>
                                     
                                     
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="inpt-form-group"> 
                                               <label for="address"> Address</label>
                                               <div class="inpt-group">  
                                                   <input type="text" name="address" id="address"  class="inpt-control required" placeholder="Please Enter your Home Address">
                                                 
                                                </div>
                                            </div>
                                         </div>
                                    </div>
                                    
                                    
                                   
                                    
                                  
                                </div> 
                             </div> 
                        </div> 
                    </div> 
                </div>
                
                <div class="rms-content-box">
                     <div class="rms-content-area">
                        <div class="rms-content-title">
                            <div class="leftside-title"><b> <i class="fa fa-user" aria-hidden="true"></i> Personal</b> Information</div>
                            <div class="step-label">Step 2 - 4 </div> 
                        </div>
                         <div class="rms-content-body"> 
                             <div class="row">
                                 <div class="col-md-12">
                                   <div class="row">
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
                                    </div>
                                    
                                    <div class="row">
                                        
                                         <div class="col-md-12">
                                             
                                              <div class="table-responsive">  
                               <table class="table table-bordered" id="dynamic_field">  
                                    <tr>  
                                         <td class="col-md-6">  
                                           
                                            <div class="inpt-form-group"> 
                                               <label for="wrkschool"> School Name</label>
                                               <div class="inpt-group">  
                                                   <input type="text" name="wrkschool" id="wrkschool" class="inpt-control required" placeholder="School Name"> 
                                                </div>
                                            </div>
                                        
                                         
                                         </td>  
                                         <td class="col-md-3">  
                                          
                                            <div class="inpt-form-group"> 
                                               <label for="wrkexp">Working Experience</label>
                                               <div class="inpt-group">  
                                                   <input type="text" name="wrkexp" id="wrkschool" class="inpt-control required" placeholder="Experience"> 
                                                </div>
                                         
                                         </div>
                                         </td>  
                                         <td class="col-md-3">  
                                          
                                            <div class="inpt-form-group"> 
                                                <label for="more">&nbsp;</label>
                                               <div class="inpt-group">  
                                                   <input type="button" name="add" id="add" class="inpt-control" value="Add More(+)"> 
                                                </div>
                                            </div>
                                       
                                         
                                         </td>  
                                    </tr>  
                               </table>  

                          </div>  

                                         </div></div>
                                        
                                        
                                <div class="row">
                                         <div class="col-md-6">
                                            <div class="inpt-form-group"> 
                                               <label for="tt">Will to take Tution </label>
                                               <div class="inpt-group dropdown-select-icon"> 
                                                   <select name="tt" id="gender" class="inpt-control select required">
                                                       <option value="YES"  selected>YES</option>
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
                                     
                                     
                                           <div class="row">
                                        
                                         <div class="col-md-12">
                                             
                                              <div class="table-responsive">  
                               <table class="table table-bordered" id="dynamic_field1">  
                                    <tr>  
                                         <td class="col-md-4">  
                                           
                                            <div class="inpt-form-group"> 
                                               <label for="subject"> Subject Name</label>
                                               <div class="inpt-group">  
                                                   <input type="text" name="subject" id="wrkschool" class="inpt-control required" placeholder="Subject Name"> 
                                                </div>
                                            </div>
                                        
                                         
                                         </td>  
                                         <td class="col-md-3">  
                                          
                                            <div class="inpt-form-group"> 
                                               <label for="srttime">Start Time </label>
                                               <div class="inpt-group">  
                                                   <input type="time" name="srttime" id="srttime" class="inpt-control required" > 
                                                </div>
                                         
                                         </div>
                                             
                                              
                                         
                                       
                                         </td>  
                                         
                                                 <td class="col-md-3">  
                                          
                                            <div class="inpt-form-group"> 
                                               <label for="endtime">End Time </label>
                                               <div class="inpt-group">  
                                                   <input type="time" name="endtime" id="endtime" class="inpt-control required" > 
                                                </div>
                                         
                                         </div>
                                             
                                              
                                         
                                       
                                         </td>
                                        
                                    </tr>  
                               </table>  

                          </div>  

                                         </div></div>                                        
                                        

                                 
                                  
                                </div> 
                             </div> 
                        </div> 
                    </div> 
                </div>
                
                
                
                
                <div class="rms-content-box">
                     <div class="rms-content-area">
                        <div class="rms-content-title">
                            <div class="leftside-title"><b> <i class="fa fa-book" aria-hidden="true"></i> Educational</b> Information</div>
                            <div class="step-label">Step 3 - 4 </div>
                           
                        </div>
                        <div class="rms-content-body"> 
                            <div class="row">
                                <div class="col-md-12">
                            
                                     <div class="row">
                                        
                                         <div class="col-md-12">
                                             
                                              <div class="table-responsive">  
                               <table class="table table-bordered" id="dynamic_field2">  
                                    <tr>  
                                         <td class="col-md-6">  
                                           
                                            <div class="inpt-form-group"> 
                                               <label for="Instution"> Instution Name</label>
                                               <div class="inpt-group">  
                                                   <input type="text" name="instution" id="instution" class="inpt-control required" placeholder="Instution Name"> 
                                                </div>
                                            </div>
                                        
                                         
                                         </td>  
                                         <td class="col-md-3">  
                                          
                                            <div class="inpt-form-group"> 
                                               <label for="Degree">Degree</label>
                                               <div class="inpt-group">  
                                                   <input type="text" name="degree" id="degree" class="inpt-control required" placeholder="MSC,MED"> 
                                                </div>
                                         
                                         </div>
                                         </td>  
                                         <td class="col-md-3">  
                                          
                                            <div class="inpt-form-group"> 
                                                <label for="more">&nbsp;</label>
                                               <div class="inpt-group">  
                                                   <input type="button" name="add" id="add2" class="inpt-control" value="Add Instution(+)"> 
                                                </div>
                                            </div>
                                       
                                         
                                         </td>  
                                    </tr>  
                               </table>  

                          </div>  

                                         </div></div>
                                  
                                
                                </div> 
                            </div> 
                        </div> 
                    </div> 
                </div>
                
                
                
                
                
                
                
                <div class="rms-content-box">
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
                                                   <input type="text" name="bankname" id="bankname" class="inpt-control required" placeholder="Bank Name">
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="inpt-form-group"> 
                                                <label for="lastname">IFSC CODE</label>
                                                <div class="inpt-group">
                                                    <input type="text" name="ifsc" id="ifsc" class="inpt-control required" placeholder="IFSC CODE">
                                                   
                                                </div>
                                            </div>
                                         </div> 
                                    </div> 
                                    
                                    
                                    
                                     <div class="row">
                                       <div class="col-md-6">
                                           <div class="inpt-form-group"> 
                                               <label for="MICR">MICR  CODE</label>
                                               <div class="inpt-group">
                                                   <input type="text" name="micr" id="bankname" class="inpt-control required" placeholder="MICR CODE">
                                                   
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="inpt-form-group"> 
                                                <label for="records">Name as per the bank records Documents to attach</label>
                                                <div class="inpt-group">
                                                    <input type="file" name="records" id="records" class="inpt-control required" placeholder="bank records Documents">
                                                   
                                                </div>
                                            </div>
                                         </div> 
                                    </div> 
                                    
                                    
                                    
                                      <div class="row">
                                       <div class="col-md-12">
                                           <div class="inpt-form-group"> 
                                               <label for="MICR">Bank Address </label>
                                               <div class="inpt-group">
                                                   <input type="text" name="bank_address" id="bank_address" class="inpt-control required" placeholder="Bank Address">
                                                   
                                                </div>
                                            </div>
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
                    <span class="next">
                        <a href="javascript:void(0)" class="btn">Next Step
                            <small>Your information</small>
                        </a>
                    </span>
                    <span class="prev">
                        <a href="javascript:void(0)" class="btn" >Previous Step
                             <small>Your information</small>
                        </a>
                    </span>
                    <span class="submit">
                        <a href="javascript:void(0)" class="btn" >Submit
                             <small>Your information</small>
                        </a>
                    </span> 
                </div>
            </div>
            <!--Wizard Footer Close-->
        </div>
    </div>
    <!--Wizard Container Close-->
    </div>
    <!--Multi Step Wizard Close-->
                </div>
                     <%@include  file="Meassages.jsp" %>
             </div>
                </div>
  
     <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/app.js"></script>
          <script type="text/javascript" src="js/jquery.1.11.3.min.js"></script>  
    <script type="text/javascript" src="js/multistep.min.js"></script>
    <script>
        $(document).ready(function() { 
            $('#rms-wizard').stepWizard({
                stepTheme: 'steptheme2',/*defaultTheme,steptheme1,steptheme2*/
                allstepClickable: false,
                compeletedStepClickable: true,
                stepCounter: true,
                StepImage: true, 
                animation: true,
                animationClass: "fadeIn",
                stepValidation: true,
                validation : true, 
                field: {
                     username : { 
                        required : true, 
                        minlength: 2,
                        Regex: /^[a-zA-Z0-9]+$/,  
                    },
                     password : {
                        required : true,
                        minlength : 5,
                        maxlength : 20,
                        Regex: /^(?=.*[0-9_\W]).+$/, 
                    },
                    email:{
                        required : true,
                        Regex: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
                    },
                },
                message: {
                    username: "Please Enter UserName ", 
                }
                
            });
    });
    </script> 
    
     <script>  
 $(document).ready(function(){  
      var i=1;  
      $('#add').click(function(){  
           i++;  
           $('#dynamic_field').append('<tr id="row'+i+'"><td class="col-md-6">\n\
  <div class="inpt-form-group"><label for="wrkschool"> School Name</label><div class="inpt-group"><input type="text" name="wrkschool" id="wrkschool" class="inpt-control required" placeholder="School Name"></div></div>\n\
</td> <td class="col-md-3">\n\
<div class="inpt-form-group"><label for="wrkschool"> Working Experience</label><div class="inpt-group"><input type="text" name="wrkexp" id="wrkexp" class="inpt-control required" placeholder="Experience"></div></div>\n\
</td><td class="col-md-3">\n\
<div class="inpt-form-group"><label for="wrkschool">&nbsp;</label><div class="inpt-group"><button type="button" name="remove" id="'+i+'" class="inpt-control btn_remove">X</button></div></div></td>\n\
</tr>');  
      });  
      $(document).on('click', '.btn_remove', function(){  
           var button_id = $(this).attr("id");   
           $('#row'+button_id+'').remove();  
      });  
      
      
      
      //subjects
      
      
        var i=1;  
      $('#add1').click(function(){  
           i++;  
           $('#dynamic_field1').append('<tr id="srow'+i+'"><td class="col-md-4">\n\
  <div class="inpt-form-group"><label for="wrkschool"> Subject Name</label><div class="inpt-group"><input type="text" name="subject" id="subject" class="inpt-control required" placeholder="Subject Name"></div></div>\n\
</td> <td class="col-md-3">\n\
<div class="inpt-form-group"><label for="wrkschool"> Start Time</label><div class="inpt-group"><input type="time" name="sttme" id="sttme" class="inpt-control required" placeholder="Experience"></div></div>\n\
</td> \n\
<td class="col-md-3">\n\
<div class="inpt-form-group"><label for="wrkschool"> Start Time</label><div class="inpt-group"><input type="time" name="sttme" id="sttme" class="inpt-control required" placeholder="Experience"></div></div>\n\
</td>\n\
<td class="col-md-2">\n\
<div class="inpt-form-group"><label for="wrkschool">&nbsp;</label><div class="inpt-group"><button type="button" name="remove" id="'+i+'" class="inpt-control btn_remove1">X</button></div></div></td>\n\
</tr>');  
      });  
      $(document).on('click', '.btn_remove1', function(){  
           var button_id = $(this).attr("id");   
           $('#srow'+button_id+'').remove();  
      });  
      
      
      
      
      
         var i=1;  
      $('#add2').click(function(){  
           i++;  
           $('#dynamic_field2').append('<tr id="irow'+i+'"><td class="col-md-6">\n\
  <div class="inpt-form-group"><label for="wrkschool"> Instution Name</label><div class="inpt-group"><input type="text" name="instution" id="instution" class="inpt-control required" placeholder="Instution Name"></div></div>\n\
</td> <td class="col-md-3">\n\
<div class="inpt-form-group"><label for="wrkschool"> Degree</label><div class="inpt-group"><input type="text" name="degree" id="degree" class="inpt-control required" placeholder="MSC,MED"></div></div>\n\
</td><td class="col-md-3">\n\
<div class="inpt-form-group"><label for="wrkschool">&nbsp;</label><div class="inpt-group"><button type="button" name="remove" id="'+i+'" class="inpt-control btn_remove2">X</button></div></div></td>\n\
</tr>');  
      });  
      $(document).on('click', '.btn_remove2', function(){  
           var button_id = $(this).attr("id");   
           $('#irow'+button_id+'').remove();  
      });  
      
      
      
    
 });  
 </script>
</body>



</html>













