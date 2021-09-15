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
                            <h4 class="page-title">Questions List</h4>
                        </div>
<!--                        <div class="col-sm-8 col-9 text-right m-b-20">
                            <a href="StaffAdd" class="btn btn btn-primary btn-rounded float-right"><i class="fa fa-user-plus"></i> Add Students</a>
                        </div>    -->

                    </div>

                    <div class="row ">                                           

                        <div class="col-md-10">
                            <div class="form-group form-focus">
                                <label class="focus-label">Search by All Cloumn</label>
                                <input type="text" name="docname" id="myInput" class="form-control floating">
                            </div>
                        </div>    







                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table id="myTable" class="table table-border table-striped custom-table datatable mb-0">
                                    <thead>
                                        <tr>
                                            <th>S.NO</th>	
                                            <th>Student&nbsp;Name</th>  
                                            <th>Standard&nbsp;</th>
                                            <th>Subject&nbsp;</th>
                                            <th>Email&nbsp;</th>
                                            <!--                                                                                <th>Image</th>-->
                                            <th>Mobile&nbsp;Number</th>
                                            <th>Questions</th>
                                            <th>Attachment</th>
                                            <th>Question&nbsp;Date</th>
                                            <th>Answer</th>
                                            <th>Answer&nbsp;Date</th>                                                                                      
                                            <th class="text-right">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        <%
                                            ArrayList<ArrayList> beacomeslst = (ArrayList<ArrayList>) request.getAttribute("doubts");
                                            int sz = beacomeslst.size();
                                            if (sz > 0) {
                                                for (int i = 0; i < sz; i++) {
                                                    ArrayList data = beacomeslst.get(i);
                                                    String qid = data.get(0).toString();
                                                    String Standard = data.get(1).toString();
                                                    String Subject = data.get(2).toString();
                                                    String Mobile = data.get(3).toString();
                                                    String Questions = data.get(4).toString();
                                                    String Attachment = data.get(5).toString();
                                                    String Questiondate = data.get(6).toString();
                                                    String Answer = data.get(7).toString();
                                                    String Answerdate = data.get(8).toString();
                                                     String email = data.get(9).toString();
                                                    String student = data.get(10).toString();
                                        %>	

                                        <tr>

                                            <td><%=(i + 1)%></td>
                                            <td><%=student%></td>
                                            <td><%=Standard%></td>
                                            <td><%=Subject%> </td>
                                            <td><a href="email://<%=email%>"><%=email%></a> </td>
                                            <td><a href="tel://<%=Mobile%>"><%=Mobile%></a></td>
                                            <td><a href="DoubtAnswer.jsp?qid=<%=qid%>&ques=<%=Questions%>"><%=Questions%></a></td>
                                            <td><%=Attachment%></td>
                                            <td><%=Questiondate%></td>
                                            <td><%=Answer%></td>

                                             <td><%=Answerdate%></td>
                                             
                                            
                                                        
                                                                                <td class="text-right">
											<div class="dropdown dropdown-action">
												<a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
												<div class="dropdown-menu dropdown-menu-right">
                                                                                                    <a class="dropdown-item" href="StaffEdit?sid=<%=data.get(0) %>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                                                                    
													<a class="dropdown-item" href="#" data-toggle="modal" data-delete="<%=data.get(0) %>" data-target="#delete_staff"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
												</div>
											</div>
										</td>
                                                                                
                                        </tr>

                                        <%
                                            }
                                        } else {%>
                                    <p>No Record Found</p>                               
                                    <%
                                        }
                                    %>		
                                    </tbody>

                                </table>
                            </div>
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
                                <h3>Are you sure want to delete this Student?</h3>
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