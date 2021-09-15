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
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
   <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/mob.css">
<style>
body,h1,p,div,span,h2,h3,input,button {font-family: "sora", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('assets/bg/regbg.png');
  min-height: 100%;
  background-position: center;
  background-size: cover;
}

  .rcbgimg {
            background-image: url('assets/bg/regcard.png');
            
           min-height: 100%;
  background-position: center;
  background-size: cover;
  width: 300px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  border-radius: 2rem;
  box-shadow: 0px 1rem 1.5rem rgba(0,0,0,0.5);
        }
</style>
<body>

    <!-- Sidebar (hidden by default) -->
<!--<nav class="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left" style="display:none;z-index:2;width:30%;min-width:180px" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()"
  class="w3-bar-item w3-button">X</a>
  <a href="#"  class="w3-bar-item w3-button">Profile</a>
  <a href="#" class="w3-bar-item w3-button">About</a>
</nav>-->

<!-- Top menu -->
<!--<div class="w3-top">
  <div class="w3-white w3-xlarge" style="width:100%;margin:auto">
      <div class="w3-button w3-padding-16 w3-left" onclick="w3_open()"><a href="#"><img src="assets/icons/back.png" alt="logo"width="40" height="30"></a></div>
      <div class="w3-right w3-padding-16"><a href="#"><img src="assets/icons/bell.png" alt="logo" width="35" height="45">&nbsp;</a></div>
      <div class="w3-center w3-padding-16">Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

  <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="70" height="30">&nbsp;&nbsp;&nbsp;</div>  
  </div>
</div>-->
  
<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
    
  <div class="w3-display-topleft w3-padding-large w3-xlarge">
<!--      <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">-->

          </nav>
  </div>
  <div class="w3-display-middle">
      <div class="rcbgimg ">
            <center>
                            <div class="col-md-12">

                                <div class="brand-wrapper"><br/>
                                   
                                </div>
                             
                              
                                <form action="Register" method="post">
                                    <div class="form-group">
                                         <p class="lbl"> REGISTER HERE </p>
                                     </div>
                                    <div class="form-group">                                     
                                        <input  type="text"  name="stud_name" class="form-control" required=""  placeholder="Student Name" />
                                    </div>
                                      <div class="form-group">                                     
                                          <input  type="number"  class="form-control" name="mno" maxlength="10" required="" placeholder="Mobile Number" />
                                    </div>
                                    
                                      <div class="form-group">                                     
                                          <input  type="number"  class="form-control" name="pincode" required=""  placeholder="Pin code" />
                                    </div>
                                    
                                       <div class="form-group">                                     
                                        <Select   class="form-control" name="cls">
                                            
                                            <option value="nur">NURSERY </option>
                                            <option value="jkg">JUNIOR KG </option>
                                            <option value="skg">SENIOR KG </option>
                                            <% for(int i=1;i<=12;i++) {
                                                String cls="Class "+i;
                                            %>
                                            <option value="<%=cls%>"><%=cls%></option>
                                                  <%
                                            }
                                                  %>
                                        </select>   
                                    </div>
                                    

                                    </div>
                                    
                                    <!--    <div class="form-group mb-4">
                                          <label for="password" class="sr-only">Password</label>
                                          <input type="password" name="password" id="password" class="form-control" placeholder="***********">
                                        </div>-->
                                                  <input name="login" id="login" class="btn blue full-rounded" type="submit" value="Register">
                                                  </form>                       
 <div class="brand-wrapper"><br/>
                                   
                                </div>

                            </div>
           </center>
                                        
      </div>
                                        
                                        <div class="w3-display-bottommiddle">
<!--                                            <h5>Ⓒ&nbsp;Wishtopia&nbsp;learings</h5>-->
<!--<img src="assets/bg/cw.png" height="60" width="150"/>-->
                                            <br/>  <br/>  <br/>               
                                </div>
      
                                   
                                 
  </div>
                                        
                                  
<!--  <div
class="w3-display-bottomleft w3-padding-large">
    Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
  </div>-->
</div>

  
<%--<%@include file="FixedBottomMenu.jsp" %>--%>
<!--       <div class="navbar">
            <a href="#home" class="active"><img src="assets/icons/footer/pay.png" width="40" height="40"/></a>
           <a href="#news"><img src="assets/icons/footer/profile.png" width="40" height="40"/></a>
           <a href="#contact"><img src="assets/icons/footer/Livecls.png" width="40" height="40"/></a>
           <a href="#contact"><img src="assets/icons/footer/suport.png" width="40" height="40"/></a>
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
  alert('Regsiter Complete first');
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
}
        </script>
</body>
</html>

