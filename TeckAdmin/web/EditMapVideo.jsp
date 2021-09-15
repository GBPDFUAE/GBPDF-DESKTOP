<%-- 
    Document   : EditMapVideo
    Created on : Jan 5, 2021, 1:20:32 AM
    Author     : Win7
--%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
        <title>Allot</title>

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
       
        ArrayList<ArrayList> ques = (ArrayList<ArrayList>) request.getAttribute("studs");
           ArrayList<ArrayList> staffs = (ArrayList<ArrayList>) request.getAttribute("staffs");
            ArrayList<ArrayList> md = (ArrayList<ArrayList>) request.getAttribute("md");
            String mid=request.getAttribute("mid").toString();
            ArrayList mdd=md.get(0);
             String staffid=mdd.get(1).toString();
            String studid=mdd.get(2).toString();
             String frmdate=mdd.get(3).toString();
             String frmtime=mdd.get(4).toString();
              String todate=mdd.get(5).toString();
               
               String totime=mdd.get(6).toString();
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
                     <form action="UpdateMapVideo" method="post">
                    
                                                          
                         
                    <div class="row">
                        <div class="col-md-6">
                            <h2>  Staffs</h2>
                         <div class="table-responsive">
                                            <table class="datatable table table-stripped ">
                                                <thead>
                                                    <tr>
                                                        
                                                        <th>Add Staff</th>
                                                          <th> Staff Id</th>
                                                        <th>Mobile </th>
                                                         <th> Name</th>
                                                        <th>Subject</th>
                                                        
                                                        
                                                      
                                                    </tr>
                                                </thead>
                                                <tbody>
<%
 
  for (int i = 0; i < staffs.size(); i++) {
                                                           ArrayList data =staffs.get(i); 
                                                       

                                                           
String sstaffid=data.get(0).toString();

                                                    %>
                                                     <tr>
                                                    <%
                                                    if(sstaffid.equalsIgnoreCase(staffid)){
                                                    %>
                                                    <td><input type="checkbox" value="<%=data.get(0).toString()%>" checked="" name="staffid"/> </td>
                                                     <%}else {%>
                                                      <td><input type="checkbox" value="<%=data.get(0).toString()%>" name="staffid"/> </td>
                                                     <%
                                                     
                                                    }
                                                     %>
                                                     <td><%=data.get(0).toString()%></td>
                                                     <td><%=data.get(4).toString()%></td>
                                                     <td><%=data.get(1)+" "+data.get(2) %></td>
                                                    <td><%=data.get(7).toString()%></td>
                                                   
                                                     
                                                     </tr>
                                                    <%
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                                                
                        </div>
                                                 <div class="col-md-6">
                                                       <h2>  Students</h2>  
                                                 <div class="table-responsive">
                                            <table class="datatable table table-stripped ">
                                                <thead>
                                                    <tr>
                                                        
                                                        <th>Add Student</th>
                                                        <th> Student ID</th>
                                                        <th> Mobile </th>
                                                        <th> Name</th>
                                                        <th>Class</th>
                                                        
                                                      
                                                    </tr>
                                                </thead>
                                                <tbody>
<%
 int j=1; 
                                                        for (int i = 0; i < ques.size(); i++) {

                                                            ArrayList data = ques.get(i);
String sstudid=data.get(0).toString();
j=j+(i+1);
                                                    %>
                                                     <tr>
                                                    
                                                    <%
                                                    if(sstudid.equalsIgnoreCase(studid)){
                                                    %>
                                                    <td><input type="checkbox" value="<%=data.get(0).toString()%>" checked="" name="studid"/> </td>
                                                     <%}else {%>
                                                      <td><input type="checkbox" value="<%=data.get(0).toString()%>" name="studid"/> </td>
                                                     <%
                                                     
                                                    }
                                                     %>
                                                    <td><%=data.get(0).toString()%></td>
                                                     <td><%=data.get(2).toString()%></td>
                                                    <td><%=data.get(1).toString()%></td>
                                                    <td><%=data.get(4).toString()%></td>
                                                     
                                                     </tr>
                                                    <%
                                                        }
                                                    %>
                                                </tbody>
                                            </table>
                                        </div>
                  
                                                 </div>
                                                 </div>                                         
                                                          
                                                          
                                   <div class="row">
                                       <div class="col-md-6">
                                         <div class="form-group">
                            <label> From date</label>
                            <input type="date" autofocus="" name="fdate" value="<%=frmdate %>" class="form-control">
                        </div>
                                       </div>
                                       
                                        <div class="col-md-6">
                                         <div class="form-group">
                            <label>To date</label>
                            <input type="date" autofocus="" name="tdate"  value="<%=todate %>" class="form-control">
                        </div>
                                       </div>
                                   </div>
                                        <div class="row">
                                             <div class="col-md-6">
                                        <div class="form-group">
                            <label> From Time</label>
                            <input type="time" autofocus="" name="ftime"  value="<%=frmtime %>"class="form-control">
                        </div>
                                             </div>
                                             <div class="col-md-6">
                                       <div class="form-group">
                            <label> To Time</label>
                            <input type="time" autofocus="" name="totime"  value="<%=totime %>" class="form-control">
                        </div>
                                             </div>
                                   </div>
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                          
                                                           
                                                          
                                                             
                                                          
                                                          
                   
                                                
                                                <div class="row">
                                                    <div class="col-md-4">
                                                    
                                                         &nbsp;
                                                
                                                    </div>
                                                    <div class="col-md-4">
                                                     <div class="m-t-20 text-center">
                                                        <button class="btn btn-primary submit-btn">Update Map Video Class</button>
                                                    </div>
                                                    </div>
                                                    
                                                    <div class="col-md-4">
                                                    &nbsp;
                                                    </div>
                                                </div>
                            <input type="hidden" autofocus="" name="mid"  value="<%=mid %>" class="form-control">
                     </form>

                                               
                                                  <div class="clearfix">&nbsp;</div>
                           
                </div>
                                                
                                                
                                                   <div id="delete_videomap" class="modal fade delete-modal" role="dialog">
                <div class="modal-dialog modal-dialog-centered">
                    <form action="" method="post">
                        <div class="modal-content">
                            <div class="modal-body text-center">

                                <img src="assets/img/sent.png" alt="" width="50" height="46">
                                <h3>Are you sure want to delete this Record?</h3>
                                <input id="uid" name="dptid" type="hidden"/>
                                <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                                    <button type="button" id="del" class="btn btn-danger" >Delete </button>						</div

                            </div>
                        </div>

                </div>
                </form>

            </div>
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
             <script src="assets/js/jquery.table2excel.js"></script>

<script type="text/javascript" src="assets/js/csl.js"></script>
    <script language="javascript">
        $(document).ready(function () {
            
              $(function() {
        $("#exceldwn").click(function() {
            
            $("#table2excel").table2excel({
                exclude: ".noExl",
                name: "Doctor List"
            });
        });
    });
        
                $('#delete_videomap').on('show.bs.modal', function(e) {
                    var deleteid = $(e.relatedTarget).data('delete');
                    var y = document.getElementById("uid");
                    y.value = deleteid;
                });
                $("#del").click(function() {
                    var y = document.getElementById("uid").value;
                    // alert("The paragraph :"+y);


                    window.location.href = "DeleteMaoVideo?tid=" + y;

                });  
        
                  
    
        });
    </script>

    </body>



</html>













