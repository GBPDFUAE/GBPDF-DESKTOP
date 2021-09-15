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
body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
  background-image: url('images/counsling/regbg.png');
  min-height: 110%;
  background-position: center;
  background-size: cover;
}

.otpbgimg {
            background-image: url('assets/bg/otpcard.png');
            
          
  background-position: center;
  background-size: cover;
  width: 300px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  border-radius: 2rem;
  box-shadow: 0px 1rem 1.5rem rgba(0,0,0,0.5);
        }
        
        
        
        


 #OtpInput .field-wrapper {
                position: relative;
                padding-left: 1%;
              
                width: auto;
            }
            #OtpInput .form-group {
/*                min-width: 100px;
                width: 50%;
                margin: 1em auto;*/
/*                display: flex;*/
               
            }
            #OtpInput .letter {
                  background-color: transparent;
                height: 43px;
                border-radius: 0;
                border: none;
                text-align: center;
                max-width: calc((100% / 10) - 1px);
                flex-grow: 1;
                flex-shrink: 1;
                flex-basis: calc(100% / 10);
                outline-style: none;
                padding: 5px 0;
                font-size: 18px;
                font-weight: bold;
                 margin: 0 2px;
                 border-bottom: 1px solid gray;
            }
            #OtpInput .letter + .letter {
/*                border-left: 1px solid rgba(96,100,104,0.3);*/

            }
            @media (max-width: 480px) {
                #OtpInput .letter {
                    font-size: 16px;
                    padding: 2px 0;
                    height: 38px;
                }
            }  
     

.lbl {
    position: absolute;
    -webkit-transform: translateY(6px);
    transform: translateY(6px);
    left: 13px;
    /*  color: rgba(255, 255, 255, 0.5);*/
    -webkit-transition: all 0.25s ease;
    transition: all 0.25s ease;
    -webkit-backface-visibility: hidden;
    pointer-events: none;
    font-size: 22px;
}
.lbl .req {
    margin: 2px;
    /*  color: #1ab188;*/
}

.lbl.active {
    -webkit-transform: translateY(50px);
    transform: translateY(50px);
    left: 2px;
    font-size: 14px;
}
.lbl.active .req {
    opacity: 0;
}

.lbl.highlight {
    color: #ffffff;
}   
        
        
</style>

 <%

        String otp = request.getAttribute("otp").toString();
         String mno=request.getAttribute("mno").toString();;
            
        %>
<body>


<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
    
  <div class="w3-display-topleft w3-padding-large w3-xlarge">
<!--      <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">-->

          </nav>
  </div>
  <div class="w3-display-middle">
      <div class="otpbgimg ">
          
<!--                            <div class="col-md-12">-->

                               <div class="form-group">
                                   <br/>
                                          <%
             String msg="";
           
                         try{
                              msg=request.getAttribute("msg").toString();
                             
                             if(msg!=null||msg.equalsIgnoreCase("")==false )
                             {%>
                            <div class="hide-tax">    
                                <center>  <p style="color: #ff0000 " ><%=msg%></p></center>
                            </div>
                            <% }
                             else
                             {%>
                                <p ></p>   
                             <%}
                             
                         }catch(Exception ex){}
                     %>
                                     </div>                          
                        
                                     
                                                           
		
                <div style="padding-top: 2%">
                    <h2 style="color: black;padding-left: 23%">ENTER OTP</h2>
                    <form class="login" action="CounsellingOTPVerification" method="post">

                        
                        <center>              
                 
                <div class="form-group  " >
 <div id="OtpInput"   >
            <div class="field-wrapper">
                <div class="form-group phone"style="padding-left: 1%" >
                    <input type="text" name="otps" class="letter"
                           pattern="[0-9]*" inputmode="numeric" maxlength="1">
                    <input type="text" name="otps" class="letter"
                           pattern="[0-9]*" inputmode="numeric" maxlength="1">
                    <input type="text" name="otps" class="letter"
                           pattern="[0-9]*" inputmode="numeric" maxlength="1">
                    <input type="text" name="otps" class="letter"
                           pattern="[0-9]*" inputmode="numeric" maxlength="1">
                    <input  type="hidden" value="<%=otp%>" name="gotp"  placeholder="" >
                     <input  type="hidden" value="<%=mno%>" name="gmno"  placeholder="" >
                </div>
            </div>
        </div>
                </div></center>
                    
                      
                     
                     <div class="form-group">
                            <div class="m-t-20 text-center">
                                <input type="submit" class="btn-round-lg btn-primary submit-btn" value="Next">
                            </div>
                       
                    
			
                </form></div>


	</div>

<!--                            </div>-->
           
      </div>
   
  </div>
                                        
                                           <div class="w3-display-bottommiddle">
<!--                                            <h5>Ⓒ&nbsp;Wishtopia&nbsp;learings</h5> -->
<!--<img src="assets/bg/ocw.png" height="60" width="150"/>-->
                                            <br/>  <br/>  <br/>    <br/>              
                                </div>
<!--  <div class="w3-display-bottomleft w3-padding-large">
    Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
  </div>-->
</div>
<!--       <div class="navbar">
            <a href="#home" class="active"><img src="assets/icons/pay.png" width="40" height="35"/></a>
            <a href="#news"><img src="assets/icons/liveclass.png" width="40" height="35"/></a>
            <a href="#contact"><img src="assets/icons/support.png" width="40" height="35"/></a>
        </div>-->
  <!--    </div>-->
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/common.js"></script>
         <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="js/jquery.inputLettering.js"></script>
        <script>
            $( function() {
                $('#OtpInput').letteringInput({
                    inputClass: 'letter',
                    onLetterKeyup: function ($item, event) {
                        console.log('$item:', $item);
                        console.log('event:', event);
                    },
                    onSet: function ($el, event, value) {
                        console.log('element:', $el);
                        console.log('event:', event);
                        console.log('value:', value);
                    }
                });
            } );
        </script>
</body>
</html>

