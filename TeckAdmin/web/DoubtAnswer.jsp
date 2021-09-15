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
                            <h4 class="page-title"> Send Answer </h4>
                        </div>
<!--                        <div class="col-sm-8 col-9 text-right m-b-20">
                            <a href="SendLinkStaffs" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-user-plus"></i> Send Staff Links</a>
                        </div>    -->

<%

String qid=request.getParameter("qid");
String ques=request.getParameter("ques");


%>

                    </div>

                    <div class="row ">                                           

                        



  <div class="col-lg-8 offset-lg-2">
                                               <form method="post" action="ReplayAskdoubtAnswer" enctype="multipart/form-data">
                                                     <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Question</label>
                                                            <input class="form-control" type="text" name="ques" value="<%=ques%>">
                                                            <input class="form-control" type="hidden" name="qid" id="qid" value="<%=qid%>">
                                                        </div>
                                                    </div>
                                                     </div>
                                                  
                                                      <div class="row">
                                                    <div class="col-sm-12 col-md-12 ">
                                                        <div class="form-group">
                                                            <label>Answer Text</label>
                                                            <textarea class="form-control" name="ans" id="ans"></textarea>
                                                        </div>
                                                    </div>                                                   
                                                 
                                                     </div>
                                                        
                                                        
                                                         <div class="row">
                                                    <div class="col-sm-12 col-md-12 ">
                                                        <div class="form-group">
                                                            <label>Answer file</label>
                                                          <input class="form-control" type="file" name="ansfile" >
                                                        </div>
                                                    </div>                                                   
                                                 
                                                     </div>

                                                    <div class="m-t-20 text-center">
                                                        <button class="btn btn-primary submit-btn">Send</button>
                                                    </div>
                                                </form>
                                            </div>



                    </div>
                  
                </div>

            </div>
            <div id="delete_student" class="modal fade delete-modal" role="dialog">
                <div class="modal-dialog modal-dialog-centered">
                    <form action="" method="post">
                        <div class="modal-content">
                            <div class="modal-body text-center">

                                <img src="assets1/img/sent.png" alt="" width="50" height="46">
                                <h3>Are you sure want to delete this link?</h3>
                                <input id="uid" name="dptid" type="hidden"/>
                                <div class="m-t-20"> <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                                    <button type="button" id="del" class="btn btn-danger" >Delete </button>						</div

                            </div>
                        </div>

                </div>
                </form>

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

                $('#delete_staff').on('show.bs.modal', function(e) {
                    var deleteid = $(e.relatedTarget).data('delete');
                    var y = document.getElementById("uid");
                    y.value = deleteid;
                });
                $("#del").click(function() {
                    var y = document.getElementById("uid").value;
                    // alert("The paragraph :"+y);


                    window.location.href = "DeleteStaff?dptid=" + y;

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
