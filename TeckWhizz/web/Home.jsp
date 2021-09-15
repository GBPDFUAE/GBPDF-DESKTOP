<%-- 
    Document   : Login
    Created on : Jul 14, 2020, 10:43:15 PM
    Author     : RedBoxz
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <title>Wishtopia</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/mob.css">
    
    
    
    
    
    
    
    
          <link href="css/bootstrap.min.css" rel="stylesheet">
        <!--         <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">-->

        <!-- Main css -->
        <!--        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>-->
        <link rel="stylesheet" href="css/style.css">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.transitions.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <!--        <link rel="stylesheet" href="css/modal.css">-->
        <link href="css/main.css" rel="stylesheet">

        <link href="css/menu.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" href="images/logo.png">
    
    
    
    
    
    
    <style>
        body,h1 {font-family: "Raleway", sans-serif}
        body, html {height: 100%}
        .bgimg {
            background-image: url('assets/bg/hm.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
        }

        .hmbgimg {
            background-image: url('assets/bg/homecard.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
            width: 100%;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            border-radius: 2rem;
            box-shadow: 0px 1rem 1.5rem rgba(0,0,0,0.5);

        }
        
.modal{
		
		top: 30%;
                left: 35%;
                width: 400px;
	}
        
 .close {
  color: red;
  float: right;
/*  font-size: 35px;
  font-weight: bold;
   position: absolute;
  cursor: pointer;
  color: #fff;
  font-size: 20px;
  font-family: Arial, sans-serif;
  border-radius: 50px;
  background: #605F61;
  line-height: 0px;
  padding: 23px 9px 23px 9px;*/
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
        
 

/*.sample-1 {
  position: relative;
  width: 50px;
  height: 50px;
  margin: auto;
  padding: 20px 0;
}

.sample-1-close {
  position: absolute;
  cursor: pointer;
  color: #fff;
  font-size: 50px;
  font-family: Arial, sans-serif;
  border-radius: 50px;
  background: #605F61;
  line-height: 0px;
  padding: 23px 9px 23px 9px;
}*/

.sample-1-close:before {
  content: "\00d7";
}
    </style>
    <body>

        <%      ArrayList stud = (ArrayList) request.getAttribute("stud");
            String studentName = "", cls = "nur";
            studentName = request.getSession().getAttribute("sname").toString().trim();
      //            
            // String sid=request.getSession().getAttribute("sid").toString().trim();
            //cls=stud.get(4).toString().toUpperCase().trim();
            
            String cp=request.getAttribute("cp").toString();
         //     String fp=request.getAttribute("fp").toString();
      //           
        %> 
        
        <!-- Top menu -->
<!--        <div class="w3-top">
            <div class="w3-white w3-xlarge" style="width:100%;margin:auto">
                <div class="w3-button w3-padding-15 w3-left" onclick="w3_open()"><img src="assets/icons/menu.png" alt="logo"width="40" height="30"></div>

                <div class="w3-right w3-padding-15"><img src="assets/icons/bell.png" alt="logo" width="35" height="45">&nbsp;</div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="Logout">Logout</a> </div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="Attendance">Attendance</a> </div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="Liveclass">Live&nbsp;Class</a> </div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="OnlineTest">Online&nbsp;for&nbsp;Test</a></div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="#">FeedBack</a></div>

                <div class="w3-center w3-padding-16"><span style="font-family: 'sora';">  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                                <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="70" height="30">&nbsp;&nbsp;&nbsp;</div>  
            </div>
        </div>-->

  <header id="header">
              <%@include file="SuccessMenu.jsp" %>
        </header>
        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">

            <div class="w3-display-topleft w3-padding-large w3-xlarge">
                <!--      <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">-->

                <!--                </nav>-->
                
                
                <%
                            try {
                                String msg = request.getAttribute("sucss").toString();
                                if (msg != null || msg.equalsIgnoreCase("") == false) {%>
                                <script>alert("Change,New Password Updated Successfully");</script>
                                
                                <%
                                }
                            }catch(Exception ex){}
                                
                                %>
                  <div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
<!--    <span class="close">&times;</span>-->
    <div class="modal-header">
        <% 
         if(cp.equalsIgnoreCase("2")){
        %>
        <a href="#" onclick="history.go(-1)"> <span  class=" pull-left" style="margin-left: 20px" ><img src="images/close.png"/></span></a>
        <h4 class="modal-title" style="color: black;float: right">Change&nbsp;Your&nbsp;Password</h4>
        <%
         }else{
            %> 
           <h4 class="modal-title" style="color: black;float: right">Create&nbsp;Your&nbsp;Password</h4>  
        <% }
        %>
                
            </div>
            <div class="modal-body">
                <form action="Changepassword" method="post">
<!--                 <div class="field-wrap">-->
<!--                                    <label class="lbl">
                                        Mobile Number :<span class="req">*</span>
                                    </label>-->

<input type="hidden"  name="pmod" value="<%=cp%>" autocomplete="off"/></br>
<input type="password" placeholder="Enter New password" required="" name="newpwd"  id="txtPassword"  class="form-control" autocomplete="off"/></br>
<input type="password" placeholder="Enter Confirm password" required="" name="crmpwd" id="txtConfirmPassword"  onblur="return Validate()"  class="form-control"  autocomplete="off"/> </br>
<!--                                </div>
                   <div class="field-wrap">-->
                   <button type="submit"  class="button button-block "/>Get Started</button>
<!--                   </div>-->
                </form>
            </div>
  </div>

</div>
                
            </div>





          


            <div class="w3-display-middle" id="midcard">
                <div class=" hmbgimg">







                    <div class="brand-wrapper">
                        <p class="login-card-description">&nbsp;</p>
                    </div>

                    <%
                        if (cls.equalsIgnoreCase("nur") || cls.equalsIgnoreCase("jkg") || cls.equalsIgnoreCase("skg")) {
                    %>
                    <table border="0" width="100%" >



                        <% if (cls.equalsIgnoreCase("nur")) {  %>
                        <tr>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/eng.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/mat.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="TeckyTale" >   <img id="image" src="assets/icons/home/tt.png" class="home-img" /></a>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <a href="LearMore.jsp" >   <img id="image" src="assets/icons/home/lm.png" class="home-img" /></a>
                            </td>

                            <td> 
                                <a href="AskDoubt.jsp" >    <img id="image" src="assets/icons/home/adt.png" class="home-img" /></a>
                            </td>                           

                            <td>

                                <a href="#" >    <img id="image" src="assets/icons/home/faq.png" class="home-img" /></a>
                            </td>

                            </td>
                        </tr>


                        <%
                        } else if (cls.equalsIgnoreCase("jkg")) {
                        %>

                        <tr>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/ta.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/eng.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/hd.png" class="home-img" /></a>
                            </td>

                        </tr>


                        <tr>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/mat.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/evs.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="TeckyTale" >   <img id="image" src="assets/icons/home/tt.png" class="home-img" /></a>
                            </td>

                        </tr>

                        <tr>
                            <td> 
                                <a href="LearMore.jsp" >   <img id="image" src="assets/icons/home/lm.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="AskDoubt.jsp" >   <img id="image" src="assets/icons/home/adt.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/faq.png" class="home-img" /></a>
                            </td>

                        </tr>


                        <%
                        } else if (cls.equalsIgnoreCase("skg")) {
                        %>
                        <tr>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/ta.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/eng.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/hd.png" class="home-img" /></a>
                            </td>

                        </tr>


                        <tr>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/mat.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/evs.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="TeckyTale" >   <img id="image" src="assets/icons/home/tt.png" class="home-img" /></a>
                            </td>

                        </tr>

                        <tr>
                            <td> 
                                <a href="LearMore.jsp" >   <img id="image" src="assets/icons/home/lm.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="AskDoubt.jsp" >   <img id="image" src="assets/icons/home/adt.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/faq.png" class="home-img" /></a>
                            </td>

                        </tr>


                        <%
                            }
                        } else {
                        %>

                        <tr>
                            <td> 
                                <a href="ch1.jsp" >   <img id="image" src="assets/icons/home/cs.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="TeckyTale" >   <img id="image" src="assets/icons/home/tt.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/lm.png" class="home-img" /></a>
                            </td>

                        </tr>

                        <tr>
                            <td> 
                                <a href="AskDoubt.jsp" >   <img id="image" src="assets/icons/home/adt.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <a href="#" >   <img id="image" src="assets/icons/home/faq.png" class="home-img" /></a>
                            </td>
                            <td> 
                                <!--                                     <a href="#" >   <img id="image" src="assets/icons/home/lm.png" class="home-img" /></a>-->
                            </td>

                        </tr>










                        <%
                            }
                        %>
                    </table>
                    <div class="brand-wrapper">
                        <p class="login-card-description">&nbsp;</p>
                    </div>





                </div>

            </div>
            <!--  <div class="w3-display-bottomleft w3-padding-large">
                Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
              </div>-->
        </div>
        <%@include file="FixedBottomMenu.jsp" %>
        <!--        <div class="navbar">
                    <a href="#home" class="active"><img src="assets/icons/pay.png" width="40" height="35"/></a>
                    <a href="#news"><img src="assets/icons/liveclass.png" width="40" height="35"/></a>
                    <a href="#contact"><img src="assets/icons/support.png" width="40" height="35"/></a>
                </div>-->
        <!--    </div>-->
        <script src="assets/js/jquery.js"></script>

       <script>
// Get the modal

<%
if(cp.equalsIgnoreCase("1") || cp.equalsIgnoreCase("2")){
%>
$(document).ready(function(){
    //alert("1");
      
		 modal.style.display = "block";
            // document.getElementById("hmenu").disabled =true;  fixedfooter
             $('#header').hide(); 
              $('#fixedfooter').hide();
              $('#midcard').hide();
             ////add   
	});
        <%
}else
{
        %>
             modal.style.display = "none";
             $('#header').show();
             $('#fixedfooter').show();
             $('#midcard').show();
         <%
}
         %>   
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
//btn.onclick = function() {
//  modal.style.display = "block";
//}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
//window.onclick = function(event) {
//  if (event.target == modal) {
//    modal.style.display = "none";
//  }
//}

function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
</script>
    </body>
</html>

