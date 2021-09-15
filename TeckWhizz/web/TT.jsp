<%-- 
    Document   : Login
    Created on : Jul 14, 2020, 10:43:15 PM
    Author     : RedBoxz
--%>

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
   height: 410px;     
        }
    </style>
    <body>
<%
     String studentName=request.getSession().getAttribute("sname").toString().toUpperCase().trim();                  
            
            String sid=request.getSession().getAttribute("sid").toString().trim();

%>

        <nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:30%;min-width:180px" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()"
               class="w3-bar-item w3-button"><h4>X</h4></a>
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
                <div class="w3-center w3-padding-16"><span style="font-family: 'sora';"> HOME</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

<!--                <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="70" height="30">&nbsp;&nbsp;&nbsp;</div>  -->
            </div>
        </div>

        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">

            <div class="w3-display-topleft w3-padding-large w3-xlarge">
                <!--      <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">-->

                </nav>
            </div>
            <div class="w3-display-middle"  >
            
                <div class=" hmbgimg" style="overflow-y: auto;" >





                    <center>
                        <section>
                        <div style="padding-left: 15px;padding-right: 15px">
                            <form action="UploadTakcyTale" method="post" enctype="multipart/form-data">
                        <BR/>
                       <div class="form-group">
                                         <p class="lbl"> UPLOAD STORY TELLING</p>
                                     </div>
                        <br/>
                       <div class="form-group">                                     
                           <input  type="text"  name="stud_name" class="form-control" readonly=""  value="<%=studentName%>" placeholder="Student Name" />
                                    </div>
                                     <div class="form-group">                                     
                                        <Select   class="form-control" name="cls">
                                            
                                            <option value="kg">kinderGarten</option>\
                                            <% for(int i=1;i<=12;i++) {
                                                String cls="Class "+i;
                                            %>
                                            <option value="<%=cls%>"><%=cls%></option>
                                                  <%
                                            }
                                                  %>
                                        </select>   
                                    </div>
                                        
                                         <div class="form-group">                                     
                                        <input  type="text"  name="school_name" class="form-control" required=""  placeholder="School Name" />
                                    </div>
                                         <div class="form-group">                                     
                                             <input  type="number"  name="pincode" class="form-control" required=""  placeholder="Pincode" />
                                    </div>
                                        
                                        <div class="form-group">                                     
                                            <input  type="date"  name="dob" class="form-control" required=""  placeholder="Date of Birth" />
                                    </div>
                                        
                                        <div class="form-group">                                     
                                            <input  type="text"  name="title" class="form-control" required=""  placeholder="Title" />
                                    </div>
                                        
                                         <div class="form-group">                                     
                                             <input  type="file"  name="myfile" class="form-control" required=""  accept="image/*;capture=camera" placeholder="Title" />
                                    </div>
                   
                        <div class="brand-wrapper">
                                 <input name="login" id="login" class="btn blue full-rounded" type="submit" value="Submit">
                        </div>
                    </form>              
                        </div>
  </section> 
                    </center>


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

