<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

<body>
    <div class="main-wrapper account-wrapper">
        <div class="account-page">
			<div class="account-center">
				<div class="account-box">
                                    <form action="Forgetpasword" class="form-signin" method="post">
						<div class="account-logo">
                                                    <a href="#"><img src="assets/img/upt.png" alt=""></a>
                        </div>
                        <div class="form-group">
                            <label>Enter Registered Mobile Number</label>
                            <input type="text" autofocus="" name="mobno" pattern="^\d{10}$"  title="Enter valid Mobile Number" class="form-control">
                        </div>
                       
                       
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary account-btn">Next</button>
                        </div>
                                        
                                          
                                        <div class="clearfix"></div>
                                            
                       
                    </form>
                                    
                                     <%
                                                        try{
                                                            String msg=request.getAttribute("msg").toString();
                                                            if(msg!=null || msg.equalsIgnoreCase("")==false)
                                                            {%>
                                                            <p style="color: red"><%=msg%></p>      
                                                            <%}
                                                            
                                                        }catch(Exception ex){}
                                                    %>
                </div>
                            
                               
			</div>
        </div>
    </div>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>



</html>