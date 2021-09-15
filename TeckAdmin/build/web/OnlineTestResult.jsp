<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
        <title>Onlinetstresult</title>

        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap4.min.css">
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
        
        <link rel="stylesheet" href="assets/css/jquery-ui.css" type="text/css" media="all">

    </head>

    <%
       
        ArrayList<ArrayList> ques = (ArrayList<ArrayList>) request.getAttribute("res");
    %>
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
						<span>Admin</span>
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
                         <div class="table-responsive">
                                            <table class="datatable table table-stripped ">
                                                <thead>
                                                    <tr>
                                                        <th>SNO</th>
                                                        <th>Student ID</th>
                                                        <th>Subject</th>
                                                        <th>Mark</th>
                                                        <th>Date</th>
                                                      
                                                    </tr>
                                                </thead>
                                                <tbody>
<%
 int j=1; 
                                                        for (int i = 0; i < ques.size(); i++) {

                                                            ArrayList data = ques.get(i);

j=j+(i+1);
                                                    %>
                                                     <tr>
                                                     <td><%=(i+1)%></td>
                                                    <td><%=data.get(1).toString()%></td>
                                                    <td><%=data.get(3).toString()%></td>
                                                    <td>Mark <%=data.get(4).toString()%> Out Of 6</td>
                                                      <td><%=data.get(5).toString()%></td>
                                                     </tr>
                                                    <%
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                    </div>
                    <!--                    <div class="row">
                                            <div class="col-md-12">
                                                <div class="card-box">
                                                    <h4 class="card-title">Questions-Computer Science</h4>
                                                    <ul class="nav nav-tabs nav-tabs-solid">
                                                        <li class="nav-item"><a class="nav-link active" href="#solid-tab21" data-toggle="tab">Add Questions</a></li>
                                                        <li class="nav-item"><a class="nav-link" href="#solid-tab22" data-toggle="tab">You Prepare Questions</a></li>
                                                        <li class="nav-item"><a class="nav-link" href="#solid-tab23" data-toggle="tab">Aleady Prepare Questions1</a></li>
                    
                    
                                                    </ul>
                                                    <div class="tab-content">
                                                        <div class="tab-pane show active" id="solid-tab21">
                                                            <div class="row">
                                                                <div class="col-lg-8 offset-lg-2">
                                                                    <form action="#" method="post">
                                                                        <div class="row">
                                                                            <div class="col-sm-12">
                                                                                <div class="form-group">
                                                                                    <label>Questions</label>
                                                                                    <input class="form-control" type="text">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                                                <div class="form-group">
                                                                                    <label>Option1</label>
                                                                                    <input class="form-control" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                                                <div class="form-group">
                                                                                    <label>Option2</label>
                                                                                    <input class="form-control" type="text">
                                                                                </div>
                                                                            </div>
                    
                                                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                                                <div class="form-group">
                                                                                    <label>Option3</label>
                                                                                    <input class="form-control" type="text">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-6 col-md-6 col-lg-3">
                                                                                <div class="form-group">
                                                                                    <label>Option4</label>
                                                                                    <input class="form-control" type="text">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                    
                                                                        <div class="col-sm-12">
                                                                            <div class="form-group">
                                                                                <label>Answer</label>
                                                                                <input class="form-control" type="text">
                                                                            </div>
                                                                        </div>
                                                                        <div class="m-t-20 text-center">
                                                                            <button class="btn btn-primary submit-btn">Add</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                    
                                                        </div>
                                                        <div class="tab-pane" id="solid-tab22">
                                                            <div class="table-responsive">
                                                                <table class="datatable table table-stripped ">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>SNO</th>
                                                                            <th>Questions</th>
                                                                            <th>Option1</th>
                                                                            <th>Option2</th>
                                                                            <th>Option3</th>
                                                                            <th>Option4</th>
                                                                            <th>Answer</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                    
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <div class="tab-pane" id="solid-tab23">
                                                            <div class="table-responsive">
                                                                <table class="datatable table table-stripped ">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>SNO</th>
                                                                            <th>Questions</th>
                                                                            <th>Option1</th>
                                                                            <th>Option2</th>
                                                                            <th>Option3</th>
                                                                            <th>Option4</th>
                                                                            <th>Answer</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                    
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                    
                    
                                        </div>-->
                   
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
            
            
<!--            <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>-->
<script type="text/javascript" src="assets/js/csl.js"></script>
    <script language="javascript">
        $(document).ready(function () {
            
            
            
                  $("form").submit(function(){

    //count only checked checkbox 
    var checkbox = document.getElementsByName('stud');
    var len=checkbox.length;
    
    var ln=0;
    for(var i=0; i< checkbox.length; i++) {
    if(checkbox[i].checked)
        ln++
}
    alert(len);
    if(ln < 1)
    {
        alert('check atleast one');
        return false;
    }

    });
    
            $("#from").datepicker({
                minDate: 0
            });
             $("#to").datepicker({
                minDate: 0
            });
            
            
  
    
    
    
    
    
        });
    </script>

    </body>



</html>













