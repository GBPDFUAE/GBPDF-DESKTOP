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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=sora">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/mob.css">
    <style>
        body,h1 {font-family: "sora", sans-serif}
        body, html {height: 100%}
        .bgimg {
            background-image: url('assets/bg/homebg.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
        }

        .hmbgimg {
            background-image: url('assets/bg/homecard.png');
              min-height: 100%;
  background-position: center;
  background-size: cover;
  width: 320px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  border-radius: 2rem;
  box-shadow: 0px 1rem 1.5rem rgba(0,0,0,0.5);
   
        }
    </style>
    <body>

  <%
           ArrayList stud = (ArrayList)request.getAttribute("al");
           
          
             String Title=stud.get(6).toString().toUpperCase().trim();
             String ttfile=stud.get(7).toString().trim();
              String ttdate=stud.get(8).toString().trim();
           
           %>
        <nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:30%;min-width:180px" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()"
               class="w3-bar-item w3-button blue full-rounded"><h4>X</h4></a>
            <a href="Profile.jsp"  class="w3-bar-item w3-animate-left">  <img id="image" src="assets/icons/profile.png" class="profile-img" /><p>Rajesh</p>
            </a>
            <a href="#" class="w3-bar-item w3-button" style="font-size:7; ">Live Class</a>
            <a href="#" class="w3-bar-item w3-button">Enroll For class</a>
            <a href="#" class="w3-bar-item w3-button">Payment</a>
            <a href="#" class="w3-bar-item w3-button">Certificate</a>
            <a href="#" class="w3-bar-item w3-button">Share</a>
            <a href="#" class="w3-bar-item w3-button">Feed Back</a>
            <a href="Login.jsp" class="w3-bar-item w3-button">Logout</a>
        </nav>

        <!-- Top menu -->
        <div class="w3-top">
            <div class="w3-white w3-xlarge" style="width:100%;margin:auto">
                <div class="w3-button w3-padding-15 w3-left" onclick="w3_open()"><a href="#"><img src="assets/icons/menu.png" alt="logo"width="40" height="30"></a></div>
                <div class="w3-right w3-padding-15"><a href="#"><img src="assets/icons/bell.png" alt="logo" width="35" height="45">&nbsp;</a></div>
                <div class="w3-center w3-padding-16"><span style="font-family: 'sora';"> TECK&nbsp;WHIZZ</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

<!--                <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="40" heigh="40">&nbsp;&nbsp;&nbsp;</div>  -->
            </div>
        </div>

        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">

            <div class="w3-display-topleft w3-padding-large w3-xlarge">
                <!--      <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">-->

                </nav>
            </div>
            <div class="w3-display-middle"  >
                <div class="brand-wrapper" >
<!--                      <p class="login-card-description" style="float: right"><button class="btn blue full-rounded"> ADD </button> </p>-->
                                </div>
                <div class=" hmbgimg" style="overflow-y: auto;" >






                    <form action="Login" method="post">
                        <br/>
                        <div class="form-group">
                            
                                         <b class="lbl"> <%=ttfile %> DETAILS</b>
                                     </div>
                        <br/>
                        <table border="0" width="100%" >
                            
                            <tbody>
                                <tr>
                                    <td class="lbl1">Title :</td>
                                    <td class="tlbl"><%=Title %></td>
                                    
                                </tr>
                                
                                 <tr>
                                    <td class="lbl1">File:</td>
                                    <td class="tlbl"><%=ttfile %></td>
                                  
                                </tr>
                                
                                 <tr>
                                    <td class="lbl1">Status:</td>
                                    
                                    <td class="tlbl"><span style="color: #ff6600">Pending</span></td>
                                </tr>
                                 <tr>
                                    <td class="lbl1">Date:</td>
                                   
                                    <td class="tlbl"><%=ttdate %></td>
                                </tr>
                                
                            </tbody>
                        </table>

                        <div class="brand-wrapper">
                            <p class="login-card-description">&nbsp;</p>
                        </div>
                    </form>                              




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
        <script src="assets/js/common.js"></script>
        <script type="text/javascript">
          $('.inputs').keyup(function () {
              if (this.value.length == this.maxLength) {
                  $(this).next('.inputs').focus();
              }
          });

          function w3_open() {
              document.getElementById("mySidebar").style.display = "block";
          }

          function w3_close() {
              document.getElementById("mySidebar").style.display = "none";
          }
        </script>
    </body>
</html>

