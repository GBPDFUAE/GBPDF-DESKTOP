<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">


    
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
        <title>Wishtopia</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!--[if lt IE 9]>
                    <script src="assets/js/html5shiv.min.js"></script>
                    <script src="assets/js/respond.min.js"></script>
            <![endif]-->
    </head>

    
    <%
    
      String staff_name=request.getAttribute("staffname").toString();
      ArrayList<ArrayList> educational = (ArrayList<ArrayList>) request.getAttribute("educational");
       ArrayList<ArrayList> tution = (ArrayList<ArrayList>) request.getAttribute("tution");
        ArrayList<ArrayList> school = (ArrayList<ArrayList>) request.getAttribute("school");
    
    %>
    
    
    <body>
        <div class="main-wrapper">
            <div class="header">
                <div class="header-left">
                    <a href="#" class="logo">
                        <img src="assets/img/upt.png" width="35" height="35" alt=""> <span>Wishtopia</span>
                    </a>
                </div>
                <a id="toggle_btn" href="javascript:void(0);"><i class="fa fa-bars"></i></a>
                <a id="mobile_btn" class="mobile_btn float-left" href="#sidebar"><i class="fa fa-bars"></i></a>
                <ul class="nav user-menu float-right">
<!--                    <li class="nav-item dropdown d-none d-sm-block">
                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown"><i class="fa fa-bell-o"></i> <span class="badge badge-pill bg-danger float-right">3</span></a>
                        <div class="dropdown-menu notifications">
                            <div class="topnav-dropdown-header">
                                <span>Notifications</span>
                            </div>
                            <div class="drop-scroll">
                                <ul class="notification-list">
                                    <li class="notification-message">
                                        <a href="activities.html">
                                            <div class="media">
                                                <span class="avatar">
                                                    <img alt="rajesh" src="assets/img/user-02.jpg" class="img-fluid">
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
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown d-none d-sm-block">
                        <a href="javascript:void(0);" id="open_msg_box" class="hasnotifications nav-link"><i class="fa fa-comment-o"></i> <span class="badge badge-pill bg-danger float-right">8</span></a>
                    </li>-->
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img"><img class="rounded-circle" src="assets/img/user.jpg" width="40" alt="Admin">
                                <span class="status online"></span></span>
                            <span><%=staff_name %></span>
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="Profile">My Profile</a>
                            
                            <a class="dropdown-item" href="index.jsp">Logout</a>
                        </div>
                    </li>
                </ul>
                <div class="dropdown mobile-user-menu float-right">
                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item" href="Profile">My Profile</a>
                       
                        <a class="dropdown-item" href="index.jsp">Logout</a>
                    </div>
                </div>
            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <jsp:include page="Menu.jsp" />
                    </div>
                </div>
            </div>
                    
                     <%
                               ArrayList Profile_data = (ArrayList) request.getAttribute("personal");
                               
                              String name= Profile_data.get(1).toString().toUpperCase()+" "+Profile_data.get(2).toString().toUpperCase();
                               %>  
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-sm-7 col-6">
                            <h4 class="page-title"> Profile:<%=name%></h4>
                        </div>

<!--                        <div class="col-sm-5 col-6 text-right m-b-30">
                            <a href="edit-profile.html" class="btn btn-primary btn-rounded"><i class="fa fa-plus"></i> Edit Profile</a>
                        </div>-->
                    </div>
                    <div class="card-box profile-header">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="profile-view">
                                    <div class="profile-img-wrap">
                                        <div class="profile-img">
                                            <a href="#"><img class="avatar" src="assets/img/user.jpg" alt=""></a>
                                        </div>
                                    </div>
                                    
                                 
                                    
                                    
                                    <div class="profile-basic">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="profile-info-left"
                                                    <h3 class="user-name m-t-0 mb-0"><%=name %></h3>
                                                    <small class="text-muted"><%=Profile_data.get(7).toString()%></small>
                                                    <div class="staff-id">Staff ID : TL-<%=Profile_data.get(0).toString() %></div>
                                                    <div class="staff-msg"><a href="mail:<%=Profile_data.get(3).toString() %>" class="btn btn-primary">Send Message</a></div>
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <ul class="personal-info">
                                                    <li>
                                                        <span class="title">Phone:</span>
                                                        <span class="text"><a href="tel:<%=Profile_data.get(4).toString() %>"><%=Profile_data.get(4).toString() %></a></span>
                                                    </li>
                                                    <li>
                                                        <span class="title">Email:</span>
                                                        <span class="text"><a href="mail:<%=Profile_data.get(3).toString() %>"><%=Profile_data.get(3).toString() %></a></span>
                                                    </li>
                                                    <li>
                                                        <span class="title">DOB:</span>
                                                        <span class="text"><%=Profile_data.get(6).toString() %></span>
                                                    </li>
                                                    <li>
                                                        <span class="title">Address:</span>
                                                        <span class="text"><%=Profile_data.get(8).toString() %></span>
                                                    </li>
                                                    <li>
                                                        <span class="title">Gender:</span>
                                                        <span class="text"><%=Profile_data.get(5).toString() %></span>
                                                    </li>
                                                </ul>
                                            </div>
                                       
                                        
                                        
                                        
                                        </div>
                                    </div>
                                </div>                        
                            </div>
                        </div>
                    </div>
                    <div class="profile-tabs">
                        <ul class="nav nav-tabs nav-tabs-bottom">
                            <li class="nav-item"><a class="nav-link active" href="#about-cont" data-toggle="tab">About</a></li>
                            <li class="nav-item"><a class="nav-link" href="#bottom-tab1" data-toggle="tab">Education</a></li>
<!--                            <li class="nav-item"><a class="nav-link" href="#bottom-tab2" data-toggle="tab">Profile</a></li>-->
                            <li class="nav-item"><a class="nav-link" href="#bottom-tab2" data-toggle="tab">Bank Details</a></li>
                            <li class="nav-item"><a class="nav-link" href="#bottom-tab3" data-toggle="tab">Class Details</a></li>
                            <li class="nav-item"><a class="nav-link" href="#bottom-tab4" data-toggle="tab">Payment History</a></li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane show active" id="about-cont">
                                <div class="row">
                                    <div class="col-md-12">



                                        <div class="card-box">
                                            <h3 class="card-title">ID Proof Informations</h3>
                                            <div class="experience-box">
                                                <ul class="experience-list">
                                                    <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">Adhar Number</a>
                                                                <div><%=Profile_data.get(13).toString() %></div>
                                                                <a href="#"><img width="70" height="50" src="adhar/<%=Profile_data.get(14).toString() %>" alt=""></a>
                                                                <a href="adhar/<%=Profile_data.get(14).toString() %>" download>Download</a>
                                                                <!--                                                <span class="time">2001 - 2003</span>-->
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">PAN Number</a>
                                                                <div><%=Profile_data.get(11).toString() %></div>
                                                                <!--                                                <span class="time">1997 - 2001</span>-->
                                                            </div>
                                                        </div>
                                                    </li>


                                                    <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">Fathers /Husband name</a>
                                                                <div><%=Profile_data.get(9).toString() %></div>
                                                                <!--                                                <span class="time">1997 - 2001</span>-->
                                                            </div>
                                                        </div>
                                                    </li>


                                                    <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">Alternate Contact Number </a>
                                                                <div><%=Profile_data.get(10).toString() %></div>
                                                                <!--                                                <span class="time">1997 - 2001</span>-->
                                                            </div>
                                                        </div>
                                                    </li>



                                                    <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">Hobbies Interests </a>
                                                                <div><%=Profile_data.get(16).toString() %></div>
                                                                <!--                                                <span class="time">1997 - 2001</span>-->
                                                            </div>
                                                        </div>
                                                    </li>

                                                    
                                                       <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">About Me </a>
                                                                <div><%=Profile_data.get(17).toString() %></div>
                                                                <!--                                                <span class="time">1997 - 2001</span>-->
                                                            </div>
                                                        </div>
                                                    </li>

                                                    
                                                  
                                                            <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">Interested to Taking Online Tution </a>
                                                                    <%
                                                                    int k=0;
                                                                    
                                                                    for (int i = 0; i < tution.size(); i++) {
                                                                        
                                                    ArrayList data = tution.get(i);
                                                                String  sub=data.get(2).toString();
                                                                if(sub.equalsIgnoreCase("")){
                                                                    %>
                                                    
<!--                                                                <div>NO</div>-->
                                                                
                                                                <%
                                                                }else
                                                                {
                                                                if(k==0){
                                                                %>
<!--                                                                <div>YES</div>-->
                                                                <%
                                                                    k=1;
                                                                }
                                                                }
                                                                %>
                                                                <div>&nbsp;</div>
                                                                 <ul class="personal-info">
                                                                     
                                                                     
                                                               
                                                                       <li>
                                                        <span class="title">Subjects: <a href="#"><%=data.get(2).toString() %></a></span>
                                                       
                                                          </li><BR/>
                                                              <li>
                                                        <span class="title">Standard: <a href="#"><%=data.get(5).toString() %></a></span>
                                                       
                                                          </li><BR/>
                                                                 <li>
                                                        <span class="title">Timings: <a href="#"><%=data.get(3).toString() %> - <%=data.get(4).toString() %></a></span>
                                                       
                                                          </li>
                                                          
                                                          <%
                                                                   }
                                                          %>
                                                                 </ul>
                                                                <!--                                                <span class="time">1997 - 2001</span>-->
                                                            </div>
                                                        </div>
                                                    </li>


                                                </ul>
                                            </div>
                                        </div>






                                        <div class="card-box mb-0">
                                            <h3 class="card-title">Working Experience</h3>
                                            <div class="experience-box">
                                                <ul class="experience-list">
                                                    
                                                    <%
                                                           
                                                                    for (int j = 0; j < school.size(); j++) {
                                                    ArrayList data = school.get(j);%>
                                                    
                                                    <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name">School :<%=data.get(2).toString() %> </a>
                                                                <span class="time">Experience :<%=data.get(3).toString() %></span>
                                                                <span class="time">Board :<%=data.get(4).toString() %></span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    
                                                    <%
                                                                   }
                                                    %>
                                                   
                                                
                                                    
                                                    
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <div class="tab-pane" id="bottom-tab1">
                                <div class="row">
                                    <div class="col-md-12">               







                                        <div class="card-box mb-0">
                                            <h3 class="card-title">Education Details</h3>
                                            <div class="experience-box">
                                                <ul class="experience-list">
                                                    
                                                      <%  for (int i = 0; i < educational.size(); i++) {
                                                    ArrayList data = educational.get(i);%>
                                                    <li>
                                                        <div class="experience-user">
                                                            <div class="before-circle"></div>
                                                        </div>
                                                        <div class="experience-content">
                                                            <div class="timeline-content">
                                                                <a href="#/" class="name"><%=data.get(2).toString() %> </a>
                                                                <span class="time"><%=data.get(3).toString() %></span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    
                                                    <%
                                                      }
                                                    %>
                                                  
                                                   
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>

                            <div class="tab-pane" id="bottom-tab2">
                                  <div class="row">
                    <div class="col-md-12">
                        
                        
                        
                          <div class="card-box">
                            <h3 class="card-title">Bank Details</h3>
                            <div class="experience-box">
                                <ul class="experience-list">
                                    <li>
                                        <div class="experience-user">
                                            <div class="before-circle"></div>
                                        </div>
                                        <div class="experience-content">
                                            <div class="timeline-content">
                                                <a href="#/" class="name"><%=Profile_data.get(17).toString()%></a>
                                               
                                                
<!--                                                <span class="time">2001 - 2003</span>-->
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="experience-user">
                                            <div class="before-circle"></div>
                                        </div>
                                        <div class="experience-content">
                                            <div class="timeline-content">
                                                <a href="#/" class="name">IFSC</a>
                                                <div><%=Profile_data.get(18).toString()%></div>
<!--                                                <span class="time">1997 - 2001</span>-->
                                            </div>
                                        </div>
                                    </li>
                                    
                                    
                                     <li>
                                        <div class="experience-user">
                                            <div class="before-circle"></div>
                                        </div>
                                        <div class="experience-content">
                                            <div class="timeline-content">
                                                <a href="#/" class="name">MICR </a>
                                                <div><%=Profile_data.get(19).toString()%></div>
<!--                                                <span class="time">1997 - 2001</span>-->
                                            </div>
                                        </div>
                                    </li>
                                    
                                    
                                     <li>
                                        <div class="experience-user">
                                            <div class="before-circle"></div>
                                        </div>
                                        <div class="experience-content">
                                            <div class="timeline-content">
                                                <a href="#/" class="name">Cancelled Checque/ Bassbook  </a>
                                                <div><img src="http://18.217.120.86:8080/wishtopia/Bank/<%=Profile_data.get(20).toString()%>"/></div>
                                                <a href="http://18.217.120.86:8080/wishtopia/Bank/<%=Profile_data.get(20).toString()%>" download>Download</a>
<!--                                                <span class="time">1997 - 2001</span>-->
                                            </div>
                                        </div>
                                    </li>
                                    
                                    
                                    
                                     <li>
                                        <div class="experience-user">
                                            <div class="before-circle"></div>
                                        </div>
                                        <div class="experience-content">
                                            <div class="timeline-content">
                                                <a href="#/" class="name">Bank address </a>
                                                <div><%=Profile_data.get(21).toString()%></div>
<!--                                                <span class="time">1997 - 2001</span>-->
                                            </div>
                                        </div>
                                    </li>
                                    
                                    
                                    
                                </ul>
                            </div>
                        </div>
                        
                        
                        
                      
                        
                        
                      
                    </div>
                </div>
                            </div>



                            <div class="tab-pane" id="bottom-tab3">
                                Tab content 3
                            </div>


<div class="tab-pane" id="bottom-tab4">
                                Tab content 4
                            </div>


                        </div>
                    </div>



                </div>


                <div class="notification-box">
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
    </body>


   
</html>