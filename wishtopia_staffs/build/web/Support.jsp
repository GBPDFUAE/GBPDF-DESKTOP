<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
        <title>Help Desk</title>


        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap4.min.css">
     
    </head>
<%

   // String staff_name=request.getSession().getAttribute("staffname").toString();
%>
    <body>
        
        <div class="main-wrapper">

              <div class="header">
			<div class="header-left">
				<a href="index.html" class="logo">
                                    <img src="assets/img/upt.png" width="35" height="35" alt=""> <span>Wishtopia</span>
				</a>
			</div>
			<a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
            <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
            <ul class="nav user-menu float-right">
                <li class="nav-item dropdown d-none d-sm-block">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><i class="fa fa-bell-o"></i> <span class="badge badge-pill bg-danger float-right">0</span></a>
                    <div class="dropdown-menu notifications">
                        <div class="topnav-dropdown-header">
                            <span>Notifications</span>
                        </div>
<!--                        <div class="drop-scroll">
                            <ul class="notification-list">
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media">
											<span class="avatar">
												<img alt="John Doe" src="assets/img/user.jpg" class="img-fluid">
											</span>
											<div class="media-body">
												<p class="noti-details"><span class="noti-title">John Doe</span> added new task <span class="noti-title">Patient appointment booking</span></p>
												<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
											</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media">
											<span class="avatar">V</span>
											<div class="media-body">
												<p class="noti-details"><span class="noti-title">Tarah Shropshire</span> changed the task name <span class="noti-title">Appointment booking with payment gateway</span></p>
												<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
											</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media">
											<span class="avatar">L</span>
											<div class="media-body">
												<p class="noti-details"><span class="noti-title">Misty Tison</span> added <span class="noti-title">Domenic Houston</span> and <span class="noti-title">Claire Mapes</span> to project <span class="noti-title">Doctor available module</span></p>
												<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
											</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media">
											<span class="avatar">G</span>
											<div class="media-body">
												<p class="noti-details"><span class="noti-title">Rolland Webber</span> completed task <span class="noti-title">Patient and Doctor video conferencing</span></p>
												<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
											</div>
                                        </div>
                                    </a>
                                </li>
                                <li class="notification-message">
                                    <a href="activities.html">
                                        <div class="media">
											<span class="avatar">V</span>
											<div class="media-body">
												<p class="noti-details"><span class="noti-title">Bernardo Galaviz</span> added new task <span class="noti-title">Private chat module</span></p>
												<p class="noti-time"><span class="notification-time">2 days ago</span></p>
											</div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="topnav-dropdown-footer">
                            <a href="activities.html">View all Notifications</a>
                        </div>-->
                    </div>
                </li>
                
                
                <li class="nav-item dropdown d-none d-sm-block">
                    <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link"><i class="fa fa-comment-o"></i> <span class="badge badge-pill bg-danger float-right">0</span></a>
                </li>
                <li class="nav-item dropdown has-arrow">
                    <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                        <span class="user-img">
							<img class="rounded-circle" src="assets/img/user.jpg" width="24" alt="Admin">
							<span class="status online"></span>
						</span>
						
                    </a>
					<div class="dropdown-menu">
<!--						<a class="dropdown-item" href="profile.html">My Profile</a>-->
						<a class="dropdown-item" href="Profile">View Profile</a>
						
                                                <a class="dropdown-item" href="index.jsp">Logout</a>
					</div>
                </li>
            </ul>
            <div class="dropdown mobile-user-menu float-right">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                <div class="dropdown-menu dropdown-menu-right">
                  <a class="dropdown-item" href="Profile"> Profile</a>
						
                  <a class="dropdown-item" href="index.jsp">Logout</a>
                </div>
            </div>
        </div>
     
            <%@include file="Menu.jsp" %>
            <%
                                                        try{
                                                            String msg=request.getAttribute("msg").toString();
                                                            if(msg!=null || msg.equalsIgnoreCase("")==false)
                                                            {%>
                                                            <script>alert('Send successfully');</script> 
                                                            <%}
                                                            
                                                        }catch(Exception ex){}
                                                    %>
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card-box">
                                <h4 class="card-title">Support</h4>
                                <ul class="nav nav-tabs nav-tabs-solid">
                                    <li class="nav-item"><a class="nav-link active" href="#solid-tab1" data-toggle="tab">Chat</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#solid-tab2" data-toggle="tab">Email</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#solid-tab3" data-toggle="tab">Call</a></li>
                                    
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane show active" id="solid-tab1">
                                        <div class="row">
                                            <div class="col-lg-8 offset-lg-2">
                                                <form action="Supportchat" method="post">
                                                     <div class="row">
                                                          <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Title</label>
                                                            <input type="text" required="" class="form-control" name="title" />
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Message</label>
                                                            <textarea class="form-control"  required="" name="msg"></textarea>
                                                            
                                                        </div>
                                                    </div>
                                                     </div>
                                                     


                                                    <div class="m-t-20 text-center">
                                                        <button class="btn btn-primary submit-btn">Send </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>




                                    </div>
                                    <div class="tab-pane" id="solid-tab2">
                                        <div class="row">
                                            <div class="col-lg-8 offset-lg-2">
                                                <form action="SupportEmail" method="post">
                                                     <div class="row">
                                                         
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Message</label>
                                                            <textarea class="form-control"  required="" name="msg"></textarea>
                                                            
                                                        </div>
                                                    </div>
                                                     </div>
                                                     


                                                    <div class="m-t-20 text-center">
                                                        <button class="btn btn-primary submit-btn">Send </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>

                                    </div>
                                        <div class="tab-pane" id="solid-tab3">
                                       
                                            
                                            
                                             <div class="row">
                                            <div class="col-lg-8 offset-lg-2">
                                              
                                                     <div class="row">
                                                          <div class="col-sm-4">
                                                        <div class="form-group">
                                                            
                                                             
                                                            <label>Other Help</label><br/>
                                                           
                                                            <a href="tel:+919092776543" class="btn btn-primary btn-rounded">  +919092776543 </a>
                                                            
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="form-group">
                                                          <label>Technical Help</label>
                                                        <a href="tel:+916382556797" class="btn btn-primary btn-rounded">  +916382556797 </a>
                                                            
                                                        </div>
                                                    </div>
                                                         
                                                          <div class="col-sm-4">
                                                        <div class="form-group">
                                                           
<!--                                                           <a href="tel:+919092776543" class="btn btn-primary btn-rounded">  Call Help Desk3 </a>-->
                                                            
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
                       
                        <%@include  file="Meassages.jsp" %>
                    </div>
                </div>

                <div class="sidebar-overlay" data-reff=""></div>
                <script src="assets/js/jquery-3.2.1.min.js"></script>
                <script src="assets/js/popper.min.js"></script>
                <script src="assets/js/bootstrap.min.js"></script>
                <script src="assets/js/jquery.slimscroll.js"></script>
                <script src="assets/js/app.js"></script>
                <script src="assets/js/jquery.dataTables.min.js"></script>
                <script src="assets/js/dataTables.bootstrap4.min.js"></script>

                </body>



                </html>













