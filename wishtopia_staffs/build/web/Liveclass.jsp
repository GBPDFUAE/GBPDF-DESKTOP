<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
   <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
    <title>Whizztopia</title>

   <%

    String staff_name=request.getAttribute("staffname").toString();
    String sid=request.getAttribute("staffid").toString();
%>
    
     <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
         <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
       <script src='https://meet.jit.si/external_api.js'></script>
        <script src="myapp2.js"></script>
         <script>
            $(function(){
                $('#btnStart').on('click',function(){
                    $('#btnStart').prop('disabled', true);
                    var stid='<%=sid%>';
                    var sname='<%=staff_name%>';
                    StartMeeting(stid,sname);
                });
                $('#btnHangup').on('click',function(){
                    HangupCall(); 
                });
            });
            
        </script>
 
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
						<span><%=staff_name %></span>
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
                  <a class="dropdown-item" href="#">Edit Profile</a>
						
                                                <a class="dropdown-item" href="Login.jsp">Logout</a>
                </div>
            </div>
        </div>
            <%@include file="Menu.jsp" %>
             <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                       <div class="col-md-2">  
                    
                       </div>
                         <div class="col-md-7">  
                             <button id="btnStart" class="btn btn-primary btn-rounded">Start</button>
                             <a href="miniPaint/whiteboard.jsp" target="_blank" class="btn btn-primary btn-rounded">Whiteboard</a>
                             <a href="FTP" target="_blank" class="btn btn-primary btn-rounded">File Transfer</a>
                       </div>
                    </div>
        
        <div class="container">
<!--            <div class="toolbox">
                <button id='btnHangup'>Hangup</button>
            </div>-->
            <div id='jitsi-meet-conf-container'></div>
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
       
    
   
</body>



</html>













