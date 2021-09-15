<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
      <link rel="shortcut icon" type="image/x-icon" href="assets/img/upt.png">
        <title>Wishtopia</title>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <!--[if lt IE 9]>
                    <script src="assets1/js/html5shiv.min.js"></script>
                    <script src="assets1/js/respond.min.js"></script>
            <![endif]-->
    </head>

    <%
    String cid=request.getAttribute("cid").toString();
     ArrayList<ArrayList> md = (ArrayList<ArrayList>) request.getAttribute("md");
                                                 
                                                           ArrayList data =md.get(0); 
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
                    <li class="nav-item dropdown has-arrow">
                        <a href="#" class="dropdown-toggle nav-link user-link" data-toggle="dropdown">
                            <span class="user-img">
                                <img class="rounded-circle" src="assets/img/user.jpg" width="24" >
                                <span class="status online"></span>
                            </span>
                            <span>Admin</span>
                        </a>
                        <div class="dropdown-menu">

                            <a class="dropdown-item" href="Login.jsp">Logout</a>
                        </div>
                    </li>
                </ul>

            </div>
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <jsp:include page="Menu.jsp" />

                    </div>
                </div>
            </div>
            <div class="page-wrapper">
                <div class="content">
                    <div class="row">
                        <div class="col-sm-4 col-3">
                            <h4 class="page-title">Enroll Tuition Report </h4>
                        </div>
                          

                    </div>

                    <div class="row ">                                           

                        



  <div class="col-lg-8 offset-lg-2">
                                                <form action="UpdateEnrollingReport" method="post">
                                                     <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Entry Date</label>
                                                            <input class="form-control" type="date" name="edate" value="<%=data.get(1).toString() %>">
                                                        </div>
                                                    </div>
                                                     </div>
                                                     <div class="row">
                                                      <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Contact Number</label>
                                                            <input class="form-control" type="text" name="mno" value="<%=data.get(2).toString() %>">
                                                            <input class="form-control" type="hidden" name="cid" value="<%=cid %>">
                                                        </div>
                                                    </div>
                                                     </div>
                                                     <div class="row">
                                                    <div class="col-sm-12 col-md-12 ">
                                                        <div class="form-group">
                                                            <label>Status</label>
                                                           
                                                            
                                                            <select name="status" class="form-control">
                                                                <option value="<%=data.get(3).toString() %>"selected=""><%=data.get(3).toString() %></option>
                                                                <option value="Ringing">Ringing</option>                                                                  
                                                                <option value="Intrested">Intrested</option>                                                                  
                                                                <option value="Not Intrested">Not Intrested</option>                                                                  
                                                                <option value="Joined Course">Joined Course</option>                                                                  
                                                                <option value="Fees High">Fees High</option>                                                                  
                                                                <option value="Follow Up On">Follow Up On</option>                                                                  
                                                                <option value="Course not available">Course not available</option>                                                                  
                                                                
                                                            </select>
                                                        </div>
                                                    </div>
                                                     </div>
                                                      <div class="row">
                                                    <div class="col-sm-12 col-md-12 ">
                                                        <div class="form-group">
                                                            <label>Remarks</label>
                                                            <textarea class="form-control" name="remark"><%=data.get(4).toString() %></textarea>
                                                        </div>
                                                    </div>                                                   
                                                 
                                                     </div>

                                                    <div class="m-t-20 text-center">
                                                        <button class="btn btn-primary submit-btn">Update</button>
                                                    </div>
                                                </form>
                                            </div>



                    </div>
                    
                    
                    
                  
                </div>

            </div>
           
        <div class="sidebar-overlay" data-reff=""></div>


        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/app.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('#delete_Counsellingreport').on('show.bs.modal', function(e) {
                    var deleteid = $(e.relatedTarget).data('delete');
                    var y = document.getElementById("uid");
                    y.value = deleteid;
                });
                $("#del").click(function() {
                    var y = document.getElementById("uid").value;
                    // alert("The paragraph :"+y);


                    window.location.href = "DeleteCounsellingReport?dptid=" + y;

                });




            });


            $(document).ready(function() {
                $("#myInput").on("keyup", function() {
                    var value = $(this).val().toLowerCase();
                    $("#myTable tr").filter(function() {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
    </body>



</html>
