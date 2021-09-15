<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
        <title>Wishtopia</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!--[if lt IE 9]>
                    <script src="assets/js/html5shiv.min.js"></script>
                    <script src="assets/js/respond.min.js"></script>
            <![endif]-->
        <style>
            table {
  border-collapse: collapse;
  border-left: 1px solid #bbbbbb;
  border-top: 1px solid #bbbbbb;
}
th, td {
  border-right: 1px solid #bbbbbb;
  border-bottom: 1px solid #bbbbbb;
}
.toggleButton {
  float: right;
}
.hiddenRow {
  display: none;
}
        </style>
    </head>

    <%

//        String staff_name = request.getSession().getAttribute("staffname").toString();
//        String staff_id = request.getSession().getAttribute("staffid").toString();
    %>
    <%
        try {
            String msg = request.getAttribute("msg").toString();
            if (msg != null || msg.equalsIgnoreCase("") == false) {%>
    <script>alert('password Updated successfully');</script> 
    <%}

        } catch (Exception ex) {
        }
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
                            <span>Admin</span>
                        </a>
                        <div class="dropdown-menu">
                            <!--						<a class="dropdown-item" href="profile.html">My Profile</a>-->
<!--                            <a class="dropdown-item" href="Profile">View Profile</a>-->
<!--                            <a class="dropdown-item" href="#" data-toggle="modal" data-delete="admin" data-target="#change_pwd"> Change&nbsp;Password</a>-->
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

<%
 ArrayList<ArrayList> ques = (ArrayList<ArrayList>) request.getAttribute("attance");
 ArrayList<ArrayList> sudattn = (ArrayList<ArrayList>) request.getAttribute("sattance");
 
 String totstaffs=request.getAttribute("tot_staf").toString();
 String totstud=request.getAttribute("tot_stud").toString();
 String totcrscurce=request.getAttribute("tot_crashcours").toString();
 String totll=request.getAttribute("ll").toString();
 String tottuion=request.getAttribute("tut").toString();
%>

            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-lg-6 col-xl-4">
                            <a href="StaffList"> <div class="dash-widget">
                                <span class="dash-widget-bg1"><i class="fa fa-users" aria-hidden="true"></i></span>
                                <div class="dash-widget-info text-right">
                                    <h3><%=totstaffs%></h3>
                                    <span class="widget-title1">No.of&nbsp;Staffs&nbsp;Enrolled <i class="fa fa-check" aria-hidden="true"></i></span>
                                </div>
                                </div></a>
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-6 col-xl-4">
                            <a href="OnlineTestResult">   <div class="dash-widget">
                                <span class="dash-widget-bg2"><i class="fa fa-user-o"></i></span>
                                <div class="dash-widget-info text-right">
                                    <h3><%=totstud%></h3>
                                    <span class="widget-title2">No&nbsp;of&nbsp;Students&nbsp;Enrolled <i class="fa fa-check" aria-hidden="true"></i></span>
                                </div>
                                </div></a>
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-6 col-xl-4">
                            <div class="dash-widget">
                                <span class="dash-widget-bg3"><i class="fa fa-book" aria-hidden="true"></i></span>
                                <div class="dash-widget-info text-right">
                                    <h3><%=tottuion %></h3>
                                    <span class="widget-title3"> No&nbsp;of&nbsp;Students&nbsp;Enrolled&nbsp;For&nbsp;Tution <i class="fa fa-check" aria-hidden="true"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-lg-6 col-xl-4">
                            <div class="dash-widget">
                                <span class="dash-widget-bg4"><i class="fa fa-bookmark" aria-hidden="true"></i></span>
                                <div class="dash-widget-info text-right">
                                    <h3><%=totcrscurce%></h3>
                                    <span class="widget-title4">No&nbsp;of&nbsp;Students&nbsp;Enrolled&nbsp;For&nbsp;Crash&nbsp;Cource <i class="fa fa-check" aria-hidden="true"></i></span>
                                </div>
                            </div>
                        </div>
                                    
                                    
                                     <div class="col-md-6 col-sm-6 col-lg-6 col-xl-4">
                            <div class="dash-widget">
                                <span class="dash-widget-bg1"><i class="fa fa-language" aria-hidden="true"></i></span>
                                <div class="dash-widget-info text-right">
                                   <h3><%=totll %></h3>
                                    <span class="widget-title1">No&nbsp;of&nbsp;Students&nbsp;Enrolled&nbsp;For&nbsp;Language&nbsp;Learing <i class="fa fa-check" aria-hidden="true"></i></span>
                                </div>
                            </div>
                        </div>
                                    
                                                <div class="col-md-6 col-sm-6 col-lg-6 col-xl-4">
                                                    <a href="Revenue.jsp"> <div class="dash-widget">
                                <span class="dash-widget-bg2"><i class="fa fa-money" aria-hidden="true"></i></span>
                                <div class="dash-widget-info text-right">
                                    <h3>200000</h3>
                                    <span class="widget-title2">Revenue<i class="fa fa-check" aria-hidden="true"></i></span>
                                </div>
                                                        </div></a>
                        </div>
                    </div>
                    <!--				<div class="row">
                                                            <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                                                    <div class="card">
                                                                            <div class="card-body">
                                                                                    <div class="chart-title">
                                                                                            <h4>Patient Total</h4>
                                                                                            <span class="float-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 15% Higher than Last Month</span>
                                                                                    </div>	
                                                                                    <canvas id="linegraph"></canvas>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                            <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                                                    <div class="card">
                                                                            <div class="card-body">
                                                                                    <div class="chart-title">
                                                                                            <h4>Patients In</h4>
                                                                                            <div class="float-right">
                                                                                                    <ul class="chat-user-total">
                                                                                                            <li><i class="fa fa-circle current-users" aria-hidden="true"></i>ICU</li>
                                                                                                            <li><i class="fa fa-circle old-users" aria-hidden="true"></i> OPD</li>
                                                                                                    </ul>
                                                                                            </div>
                                                                                    </div>	
                                                                                    <canvas id="bargraph"></canvas>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                    </div>-->
                    <div class="row">
                        <div class="col-12 col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title d-inline-block">Attendance For Staffs</h4> 

                                </div>

                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table mb-0" id="table1">
                                            <thead >
                                                <tr id="tr1">
                                                    <th>Staff ID</th>
                                                    <th>Date</th>
                                                                                                       

                                                    <th>Login</th>
 <th>Logout</th>
                                                </tr>
                                            </thead>
                                            <tbody>
 <%
 int j=1; 
                                                        for (int i = 0; i < ques.size(); i++) {

                                                            ArrayList data = ques.get(i);

j=j+(i+1);
                                                    %>
                                                     <tr id="tr<%=j%>">
                                                    
                                                          <td><%=data.get(1).toString()%></td>
                                                    <td><%=data.get(2).toString()%></td>
                                                   
                                                    <td><%=data.get(3).toString()%></td>
                                                    <td><%=data.get(4).toString()%></td>
                                                     </tr>
                                                    <%
                                                        }
                                                    %>
<!--                                                <tr>
                                                    <td>1</td>
                                                    <td>25-09-2020</td>
                                                    <td>
                                                        <table class="table mb-0">
                                                            <thead >
                                                                <tr>

                                                                    <th>Login Time</th>
                                                                    <th>Logout Time</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                 <tr>

                                                                    <td>11:50</td>
                                                                    <td>11:55</td>

                                                                </tr>
                                                                 <tr>

                                                                    <td>12:50</td>
                                                                    <td>1:55</td>

                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </td>

                                                </tr>-->
                                            </tbody> 

                                        </table>

                                    </div>

                                    <!--								<div class="table-responsive">
                                                                                                            <table class="table mb-0">
                                                                                                                    <thead class="d-none">
                                                                                                                            <tr>
                                                                                                                                    <th>SNo</th>
                                                                                                                                    <th>Date</th>
                                                                                                                                    <th>Login</th>
                                                                                                                                    <th class="text-right">Logout</th>
                                                                                                                            </tr>
                                                                                                                    </thead>
                                                                                                                    <tbody>
                                                                                                                            <tr>
                                                                                                                                    <td style="min-width: 200px;">
                                                                                                                                            <a class="avatar" href="">1</a>
                                                                                                                                            
                                                                                                                                    </td>                 
                                                                                                                                    <td>
                                                                                                                                            <h5 class="time-title p-0">Date</h5>
                                                                                                                                            <p></p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                            <h5 class="time-title p-0">Login</h5>
                                                                                                                                            <p>7.00 PM</p>
                                                                                                                                    </td>
                                                                                                                                    <td class="text-right">
                                                                                                                                            <h5 class="time-title p-0">Login</h5>
                                                                                                                                            <p>7.00 PM</p>
                                                                                                                                    </td>
                                                                                                                            </tr>
                                                                                                                            
                                                                                                                    </tbody>
                                                                                                            </table>
                                                                                                    </div>-->
                                </div>
                            </div>
                        </div>
                        <!--                    <div class="col-12 col-md-6 col-lg-4 col-xl-4">
                                                <div class="card member-panel">
                                                                                <div class="card-header bg-white">
                                                                                        <h4 class="card-title mb-0">Doctors</h4>
                                                                                </div>
                                                    <div class="card-body">
                                                        <ul class="contact-list">
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="John Doe"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status online"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">John Doe</span>
                                                                        <span class="contact-date">MBBS, MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="Richard Miles"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status offline"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">Richard Miles</span>
                                                                        <span class="contact-date">MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="John Doe"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status away"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">John Doe</span>
                                                                        <span class="contact-date">BMBS</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="Richard Miles"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status online"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">Richard Miles</span>
                                                                        <span class="contact-date">MS, MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="John Doe"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status offline"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">John Doe</span>
                                                                        <span class="contact-date">MBBS</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="Richard Miles"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status away"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">Richard Miles</span>
                                                                        <span class="contact-date">MBBS, MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="card-footer text-center bg-white">
                                                        <a href="doctors.html" class="text-muted">View all Doctors</a>
                                                    </div>
                                                </div>
                                            </div>-->
                    </div>





<div class="row">
                        <div class="col-12 col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title d-inline-block">Attendance For Students</h4> 

                                </div>

                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table mb-0" id="table2">
                                            <thead >
                                                <tr id="tr1">
                                                    <th>Student ID</th>
                                                    <th>Date</th>
                                                                                                       

                                                    <th>Login</th>
 <th>Logout</th>
                                                </tr>
                                            </thead>
                                            <tbody>
 <%
 int k=1; 
                                                        for (int i = 0; i < sudattn.size(); i++) {

                                                            ArrayList data = sudattn.get(i);

k=k+(i+1);
                                                    %>
                                                     <tr id="tr<%=k%>">
                                                    
                                                          <td><%=data.get(1).toString()%></td>
                                                    <td><%=data.get(2).toString()%></td>
                                                   
                                                    <td><%=data.get(3).toString()%></td>
                                                    <td><%=data.get(4).toString()%></td>
                                                     </tr>
                                                    <%
                                                        }
                                                    %>
<!--                                                <tr>
                                                    <td>1</td>
                                                    <td>25-09-2020</td>
                                                    <td>
                                                        <table class="table mb-0">
                                                            <thead >
                                                                <tr>

                                                                    <th>Login Time</th>
                                                                    <th>Logout Time</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                 <tr>

                                                                    <td>11:50</td>
                                                                    <td>11:55</td>

                                                                </tr>
                                                                 <tr>

                                                                    <td>12:50</td>
                                                                    <td>1:55</td>

                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </td>

                                                </tr>-->
                                            </tbody> 

                                        </table>

                                    </div>

                                    <!--								<div class="table-responsive">
                                                                                                            <table class="table mb-0">
                                                                                                                    <thead class="d-none">
                                                                                                                            <tr>
                                                                                                                                    <th>SNo</th>
                                                                                                                                    <th>Date</th>
                                                                                                                                    <th>Login</th>
                                                                                                                                    <th class="text-right">Logout</th>
                                                                                                                            </tr>
                                                                                                                    </thead>
                                                                                                                    <tbody>
                                                                                                                            <tr>
                                                                                                                                    <td style="min-width: 200px;">
                                                                                                                                            <a class="avatar" href="">1</a>
                                                                                                                                            
                                                                                                                                    </td>                 
                                                                                                                                    <td>
                                                                                                                                            <h5 class="time-title p-0">Date</h5>
                                                                                                                                            <p></p>
                                                                                                                                    </td>
                                                                                                                                    <td>
                                                                                                                                            <h5 class="time-title p-0">Login</h5>
                                                                                                                                            <p>7.00 PM</p>
                                                                                                                                    </td>
                                                                                                                                    <td class="text-right">
                                                                                                                                            <h5 class="time-title p-0">Login</h5>
                                                                                                                                            <p>7.00 PM</p>
                                                                                                                                    </td>
                                                                                                                            </tr>
                                                                                                                            
                                                                                                                    </tbody>
                                                                                                            </table>
                                                                                                    </div>-->
                                </div>
                            </div>
                        </div>
                        <!--                    <div class="col-12 col-md-6 col-lg-4 col-xl-4">
                                                <div class="card member-panel">
                                                                                <div class="card-header bg-white">
                                                                                        <h4 class="card-title mb-0">Doctors</h4>
                                                                                </div>
                                                    <div class="card-body">
                                                        <ul class="contact-list">
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="John Doe"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status online"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">John Doe</span>
                                                                        <span class="contact-date">MBBS, MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="Richard Miles"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status offline"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">Richard Miles</span>
                                                                        <span class="contact-date">MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="John Doe"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status away"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">John Doe</span>
                                                                        <span class="contact-date">BMBS</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="Richard Miles"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status online"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">Richard Miles</span>
                                                                        <span class="contact-date">MS, MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="John Doe"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status offline"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">John Doe</span>
                                                                        <span class="contact-date">MBBS</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li>
                                                                <div class="contact-cont">
                                                                    <div class="float-left user-img m-r-10">
                                                                        <a href="profile.html" title="Richard Miles"><img src="assets/img/user.jpg" alt="" class="w-40 rounded-circle"><span class="status away"></span></a>
                                                                    </div>
                                                                    <div class="contact-info">
                                                                        <span class="contact-name text-ellipsis">Richard Miles</span>
                                                                        <span class="contact-date">MBBS, MD</span>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="card-footer text-center bg-white">
                                                        <a href="doctors.html" class="text-muted">View all Doctors</a>
                                                    </div>
                                                </div>
                                            </div>-->
                    </div>













                    <!--				<div class="row">
                                                            <div class="col-12 col-md-6 col-lg-8 col-xl-8">
                                                                    <div class="card">
                                                                            <div class="card-header">
                                                                                    <h4 class="card-title d-inline-block">New Patients </h4> <a href="patients.html" class="btn btn-primary float-right">View all</a>
                                                                            </div>
                                                                            <div class="card-block">
                                                                                    <div class="table-responsive">
                                                                                            <table class="table mb-0 new-patient-table">
                                                                                                    <tbody>
                                                                                                            <tr>
                                                                                                                    <td>
                                                                                                                            <img width="28" height="28" class="rounded-circle" src="assets/img/user.jpg" alt=""> 
                                                                                                                            <h2>John Doe</h2>
                                                                                                                    </td>
                                                                                                                    <td>Johndoe21@gmail.com</td>
                                                                                                                    <td>+1-202-555-0125</td>
                                                                                                                    <td><button class="btn btn-primary btn-primary-one float-right">Fever</button></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                    <td>
                                                                                                                            <img width="28" height="28" class="rounded-circle" src="assets/img/user.jpg" alt=""> 
                                                                                                                            <h2>Richard</h2>
                                                                                                                    </td>
                                                                                                                    <td>Richard123@yahoo.com</td>
                                                                                                                    <td>202-555-0127</td>
                                                                                                                    <td><button class="btn btn-primary btn-primary-two float-right">Cancer</button></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                    <td>
                                                                                                                            <img width="28" height="28" class="rounded-circle" src="assets/img/user.jpg" alt=""> 
                                                                                                                            <h2>Villiam</h2>
                                                                                                                    </td>
                                                                                                                    <td>Richard123@yahoo.com</td>
                                                                                                                    <td>+1-202-555-0106</td>
                                                                                                                    <td><button class="btn btn-primary btn-primary-three float-right">Eye</button></td>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                    <td>
                                                                                                                            <img width="28" height="28" class="rounded-circle" src="assets/img/user.jpg" alt=""> 
                                                                                                                            <h2>Martin</h2>
                                                                                                                    </td>
                                                                                                                    <td>Richard123@yahoo.com</td>
                                                                                                                    <td>776-2323 89562015</td>
                                                                                                                    <td><button class="btn btn-primary btn-primary-four float-right">Fever</button></td>
                                                                                                            </tr>
                                                                                                    </tbody>
                                                                                            </table>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                            <div class="col-12 col-md-6 col-lg-4 col-xl-4">
                                                                    <div class="hospital-barchart">
                                                                            <h4 class="card-title d-inline-block">Hospital Management</h4>
                                                                    </div>
                                                                    <div class="bar-chart">
                                                                            <div class="legend">
                                                                                    <div class="item">
                                                                                            <h4>Level1</h4>
                                                                                    </div>
                                                                                    
                                                                                    <div class="item">
                                                                                            <h4>Level2</h4>
                                                                                    </div>
                                                                                    <div class="item text-right">
                                                                                            <h4>Level3</h4>
                                                                                    </div>
                                                                                    <div class="item text-right">
                                                                                            <h4>Level4</h4>
                                                                                    </div>
                                                                            </div>
                                                                            <div class="chart clearfix">
                                                                                    <div class="item">
                                                                                            <div class="bar">
                                                                                                    <span class="percent">16%</span>
                                                                                                    <div class="item-progress" data-percent="16">
                                                                                                            <span class="title">OPD Patient</span>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="item">
                                                                                            <div class="bar">
                                                                                                    <span class="percent">71%</span>
                                                                                                    <div class="item-progress" data-percent="71">
                                                                                                            <span class="title">New Patient</span>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="item">
                                                                                            <div class="bar">
                                                                                                    <span class="percent">82%</span>
                                                                                                    <div class="item-progress" data-percent="82">
                                                                                                            <span class="title">Laboratory Test</span>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="item">
                                                                                            <div class="bar">
                                                                                                    <span class="percent">67%</span>
                                                                                                    <div class="item-progress" data-percent="67">
                                                                                                            <span class="title">Treatment</span>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="item">
                                                                                            <div class="bar">
                                                                                                    <span class="percent">30%</span>									
                                                                                                    <div class="item-progress" data-percent="30">
                                                                                                            <span class="title">Discharge</span>
                                                                                                    </div>
                                                                                            </div>
                                                                                    </div>
                                                                            </div>
                                                                    </div>
                                                             </div>
                                                    </div>-->
                </div>
                <!--            <div class="notification-box">
                                <div class="msg-sidebar notifications msg-noti">
                                    <div class="topnav-dropdown-header">
                                        <span>Messages</span>
                                    </div>
                                    <div class="drop-scroll msg-list-scroll" id="msg_list">
                                        <ul class="list-box">
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">R</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author">Richard Miles </span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item new-message">
                                                        <div class="list-left">
                                                            <span class="avatar">J</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author">John Doe</span>
                                                            <span class="message-time">1 Aug</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">T</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author"> Tarah Shropshire </span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">M</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author">Mike Litorus</span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">C</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author"> Catherine Manseau </span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">D</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author"> Domenic Houston </span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">B</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author"> Buster Wigton </span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">R</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author"> Rolland Webber </span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">C</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author"> Claire Mapes </span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">M</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author">Melita Faucher</span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">J</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author">Jeffery Lalor</span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">L</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author">Loren Gatlin</span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="chat.html">
                                                    <div class="list-item">
                                                        <div class="list-left">
                                                            <span class="avatar">T</span>
                                                        </div>
                                                        <div class="list-body">
                                                            <span class="message-author">Tarah Shropshire</span>
                                                            <span class="message-time">12:28 AM</span>
                                                            <div class="clearfix"></div>
                                                            <span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="topnav-dropdown-footer">
                                        <a href="chat.html">See all messages</a>
                                    </div>
                                </div>
                            </div>-->
            </div>
        </div>


        <div id="change_pwd" class="modal fade delete-modal" role="dialog">
            <div class="modal-dialog modal-dialog-centered">

                <div class="modal-content">
                    <div class="modal-body text-center">
                        <form action="UpdatePassword" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1>Change Password</h1>

                                </div>
                            </div>    
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">

                                        <input class="form-control"  name="newpwd" id="txtPassword" required=""  placeholder="New Password" type="password"/>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">

                                        <input class="form-control"  name="conpwd" id="txtConfirmPassword" onblur="return Validate()" required="" placeholder="Confirm Password" type="password"/>
                                    </div>
                                </div>
                            </div>
                            <input id="uid" name="dptid" type="hidden"/>
                            <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                                <button type="submit"  class="btn btn-success" >Submit </button>						

                            </div>
                        </form>
                    </div>
                </div>

            </div>


        </div>
    </div>
    <div class="sidebar-overlay" data-reff=""></div>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.slimscroll.js"></script>
    <script src="assets/js/Chart.bundle.js"></script>
    <script src="assets/js/chart.js"></script>
    <script src="assets/js/app.js"></script>
    <script type="text/javascript">
                                            function Validate() {
                                                var password = document.getElementById("txtPassword").value;
                                                var confirmPassword = document.getElementById("txtConfirmPassword").value;
                                                if (password != confirmPassword) {
                                                    alert("Passwords do not match.");
                                                    return false;
                                                }
                                                return true;
                                            }
                                            
                                            function groupByFirst(table) {

  // Add expand/collapse button
  function addButton(cell) {
    var button = cell.appendChild(document.createElement('button'));
    button.className = 'toggleButton';
    button.textContent = '+';
    button.addEventListener('click', toggleHidden, false);
    return button;
  }

  // Expand/collapse all rows below this one until next header reached
  function toggleHidden(evt) {
    var row = this.parentNode.parentNode.nextSibling;
    
    while (row && !row.classList.contains('groupHeader')) {
      row.classList.toggle('hiddenRow');
      row = row.nextSibling;
    }
  }
  
  // Use tBody to avoid Safari bug (appends rows to table outside tbody)
  var tbody = table.tBodies[0];

  // Get rows as an array, exclude first row
  var rows = Array.from(tbody.rows).slice(1);
  
  // Group rows in object using first cell value
  var groups = rows.reduce(function(groups, row) {
    var val = row.cells[0].textContent;
    
    if (!groups[val]) groups[val] = [];
    
    groups[val].push(row);
    return groups;
  }, Object.create(null));
  
  // Put rows in table with extra header row for each group
  Object.keys(groups).forEach(function(value, i) {

    // Add header row
    var row = tbody.insertRow();
    row.className = 'groupHeader';
    var cell = row.appendChild(document.createElement('td'));
    cell.colSpan = groups[value][0].cells.length;
    // cell.colSpan = groups[value][1].cells.length;
    cell.appendChild(
      document.createTextNode(
        'Attendance  ' + table.rows[0].cells[0].textContent +
        ' (' + value + ') ' + groups[value].length + ' counts'
      )
    );
    var button = addButton(cell);

    // Put the group's rows in tbody after header
    groups[value].forEach(function(row){tbody.appendChild(row)});
    
    // Call listener to collapse group
    button.click();
  });
}

window.onload = function(){
  groupByFirst(document.getElementById('table1'));
   groupByFirst(document.getElementById('table2'));
}
    </script>

</body>


</html>