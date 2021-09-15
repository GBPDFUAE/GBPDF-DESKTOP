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
    String mno=request.getAttribute("mno").toString();
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
                            <h4 class="page-title">Couselling Report </h4>
                        </div>
                          

                    </div>

                    <div class="row ">                                           

                        



  <div class="col-lg-8 offset-lg-2">
                                                <form action="AddCousellingReport" method="post">
                                                     <div class="row">
                                                    <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Entry Date</label>
                                                            <input class="form-control" type="date" name="edate">
                                                        </div>
                                                    </div>
                                                     </div>
                                                     <div class="row">
                                                      <div class="col-sm-12">
                                                        <div class="form-group">
                                                            <label>Contact Number</label>
                                                            <input class="form-control" type="text" name="mno" value="<%=mno%>">
                                                        </div>
                                                    </div>
                                                     </div>
                                                     <div class="row">
                                                    <div class="col-sm-12 col-md-12 ">
                                                        <div class="form-group">
                                                            <label>Status</label>
                                                           
                                                            
                                                            <select name="status" class="form-control">
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
                                                            <textarea class="form-control" name="remark"></textarea>
                                                        </div>
                                                    </div>                                                   
                                                 
                                                     </div>

                                                    <div class="m-t-20 text-center">
                                                        <button class="btn btn-primary submit-btn">Submit</button>
                                                    </div>
                                                </form>
                                            </div>



                    </div>
                    
                    
                           <div class="row">
                                                    </br>
                                                    <h2>Counselling Report List</h2>
                                                   <div class="table-responsive">
                                            <table class="datatable table table-stripped " id="table2excel">
                                                <thead>
                                                    <tr>
                                                        
                                                        <th>SNO</th>
                                                        <th>Entry Date </th>
                                                         <th>Contact Number</th>
                                                        <th>Status</th>
                                                         <th>Remarks</th>
                                                        
                                                        <th>Action</th>
                                                      
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <%
                                                     ArrayList<ArrayList> md = (ArrayList<ArrayList>) request.getAttribute("md");
                                                   int c=0;
                                                     for (int m = 0; m < md.size(); m++) {
                                                           ArrayList data =md.get(m); 
                                                       
c++;
String st=data.get(3).toString();

if(st.equalsIgnoreCase("Not Intrested"))
    
{%>
<tr style="background-color: red;color: white">
                                                    <td><%=c%> </td>
                                                     <td><%=data.get(1).toString()%> </td>
                                                    <td><%=data.get(2).toString()%></td>
                                                     <td><%=data.get(3) %></td>
                                                    <td><%=data.get(4).toString()%></td>
                                                
                                                          <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                     
 <a class="dropdown-item" href="EditCousellingReport?cid=<%=data.get(0)%>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-delete="<%=data.get(0)%>" data-target="#delete_Counsellingreport"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                                     </tr>

<%}else{
                                                    %>
                                                       <tr>
                                                    <td><%=c%> </td>
                                                     <td><%=data.get(1).toString()%> </td>
                                                    <td><%=data.get(2).toString()%></td>
                                                     <td><%=data.get(3) %></td>
                                                    <td><%=data.get(4).toString()%></td>
                                                
                                                          <td class="text-right">
                                                <div class="dropdown dropdown-action">
                                                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
                                                    <div class="dropdown-menu dropdown-menu-right">
                                                     
 <a class="dropdown-item" href="EditCousellingReport?cid=<%=data.get(0)%>"><i class="fa fa-pencil m-r-5"></i> Edit</a>
                                                        <a class="dropdown-item" href="#" data-toggle="modal" data-delete="<%=data.get(0)%>" data-target="#delete_Counsellingreport"><i class="fa fa-trash-o m-r-5"></i> Delete</a>
                                                    </div>
                                                </div>
                                            </td>
                                                     </tr>
                                                    
                                                    <%
}

}%>
                                                </tbody>
                                            </table>
                                        </div>
                </div>
                  
                                                  <div class="clearfix">&nbsp;</div>
                            <button id="exceldwn" class="btn btn btn-primary  btn-rounded float-md-left"><i class="fa fa-download"></i> Download Excel</button>
                
                </div>

            </div>
            <div id="delete_Counsellingreport" class="modal fade delete-modal" role="dialog">
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
        <div class="sidebar-overlay" data-reff=""></div>


        <div class="sidebar-overlay" data-reff=""></div>
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.dataTables.min.js"></script>
        <script src="assets/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/app.js"></script>
         <script src="assets/js/jquery.table2excel.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                
                            
              $(function() {
        $("#exceldwn").click(function() {
            
            $("#table2excel").table2excel({
                exclude: ".noExl",
                name: "Doctor List"
            });
        });
    });

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
