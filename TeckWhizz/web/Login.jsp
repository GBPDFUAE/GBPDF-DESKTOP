<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Wishtopia</title>
        <!-- core CSS -->

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
            /*            * {
                            box-sizing: border-box;
                        }*/





            .image-container {
                height:auto;
                width: 100%;
            }

            @media (max-width: 480px) {
                height: 310px;
            }

            @media (max-width: 375px) {
                height: 275px;
            }

            @media (max-width: 320px) {
                height: 240px;
            }

            .image-container img {
                max-height: 100%;
                object-fit: contain;
                max-width: 100%;
                display: block;
                margin: 0 auto;
            }



            .tab {
                display: none;
            }

            button {
                background-color: #4CAF50;
                color: #ffffff;
                border: none;
                padding: 10px 20px;
                font-size: 17px;
                font-family: Raleway;
                cursor: pointer;
            }

            button:hover {
                opacity: 0.8;
            }

            #prevBtn {
                /*                background-color: #4CAF50;*/
                float: left;

                margin-top:1%;


            }


            #nextBtn
            {

                float: right;
                margin-top: 1%;


            }

            /* Make circles that indicate the steps of the form: */
            .step {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbbbbb;
                border: none;  
                border-radius: 50%;
                display: inline-block;
                opacity: 0.5;
            }

            .step.active {
                opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            .step.finish {
                background-color: #4CAF50;
            }
            .arrow {
                border: solid black;
                border-width: 0 3px 3px 0;
                display: inline-block;
                padding: 3px;
            }

            .up {
                transform: rotate(-135deg);
                -webkit-transform: rotate(-135deg);
            }

            #myBtn {
                display: none;
                position: fixed;
                bottom: 20px;
                right: 30px;
                z-index: 99;
                font-size: 18px;
                border: none;
                outline: none;
                background-color: red;
                color: white;
                cursor: pointer;
                padding: 15px;
                border-radius: 90px;
            }

            #myBtn:hover {
                background-color: #555;
            }
            /*  dropdown-menu {
              display: block !important;
            }*/
        </style>



    </head>


<body   style="background: url('images/kidslearn/fbg.png'); background-size: cover; font-family: 'Livvic', sans-serif;">        
        <header id="header">
              <%@include file="Menu.jsp" %>
        </header><!--/header-->

 <div class="clear40"></div>

    <div class="formlogin ">

                            <ul class="tab-group">
                                 <li class="lli ltab active"><a href="#login">LogIn</a></li>
                                <li class="lli ltab"><a href="#signup">Sign Up</a></li>
                               
                            </ul>

                            <div class="tab-content bgreimg">
                             

                                <div id="login">
                                     <%
                try {
                    String msg = request.getAttribute("cmsg").toString();
                    if (msg != null || msg.equalsIgnoreCase("") == false) {%>
                                    <center>
                                    <p style="color: red"> <%=msg%></p>
                                    </center>
                                    
                                     <%}

                } catch (Exception ex) {
                }
            %>

                                    <h1>Welcome Back!</h1>
 

                                    <form action="Authetication" method="post">

                                        <!--            <div class="field-wrap">
                                                    <label class="lbl">
                                                      Mobile Number<span class="req">*</span>
                                                    </label>
                                                    <input type="tel"required autocomplete="off"/>
                                                  </div>
                                        -->


                                        <div class="field-wrap">

                                            <div id="phoneInput">

                                                <div class="field-wrapper">

                                                    <center> <label class="lbl">
                                                            Mobile Number<span class="req"></span>
                                                        </label></center><br/>
                                                    <div class="form-group phone">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1"autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1"autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                        <input type="text" name="mno" class="letter"
                                                               pattern="[0-9]*" inputmode="numeric" maxlength="1" autocomplete="off">
                                                    </div>
                                                </div>
                                            </div> </div>

                                        <center>
                                            <div class="field-wrap">
                                                <!--                                    <label class="lbl">
                                                                                        Mobile Number :<span class="req">*</span>
                                                                                    </label>-->
                                                <center>
                                                    <input type="password" placeholder="Enter Password" class="inputLoginpwd" required name="pwd"   autocomplete="off"/>
                                                </center>
                                            </div>
                                        </center>
                                        <div class="field-wrapforget">
                                            <p class="forgot"><a style="color: #E7202E" href="forgetPassword.jsp">Forgot Password ?</a></p>
                                        </div>
                                        <button class="button button-block"/>LogIn</button>

                                    </form>

                                </div>

                                
                                   <div id="signup" >   

                                       <form action="Register" method="post" style="color: #000">

                                        <!--          <div class="top-row">-->
                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Student Name:<span class="req">*</span>
                                                                                </label>-->
                                            <input type="text" required  placeholder="Student Name" name="stud_name" pattern="([^\s][A-za-z\s]+)"
                                                   autocomplete="off" />
                                        </div>

                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Mobile Number :<span class="req">*</span>
                                                                                </label>-->
                                            <input type="tel" placeholder="Mobile Number" required name="mno"  pattern="^\d{10}$"  title="Enter valid Mobile Number" autocomplete="off"/>
                                        </div>
                                        <!--          </div>-->

                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Email Address<span class="req">*</span>
                                                                                </label>-->
                                            <input type="email" placeholder="Email" required name="email"  autocomplete="off"/>
                                        </div>


                                        <div class="field-wrap">
                                            <!--                                    <label class="lbl">
                                                                                    Pin code :<span class="req">*</span>
                                                                                </label>-->
                                            <input type="text" placeholder="Pincode" minlength="6"  required name="pincode"  pattern="[0-9]{6}" title="Format: 6 digits Pincode"   autocomplete="off"/>
                                        </div>

                                        <div class="field-wrap">
                                            <!--            <label class="lbl">
                                                          Standard<span class="req">*</span>
                                                        </label>-->
                                            <select style="border-radius:20px;"   name="cls">
                                                <option value="select" selected="">select </option>
                                                <option value="nur">NURSERY </option>
                                                <option value="jkg">JUNIOR KG </option>
                                                <option value="skg">SENIOR KG </option>
                                                <% for (int i = 1; i <= 12; i++) {
                                                        String cls = "Class " + i;
                                                %>
                                                <option value="<%=cls%>"><%=cls%></option>
                                                <%
                                                    }
                                                %>
                                            </select>  
                                        </div>

                                        <button type="submit" class="button  btn-primary-pur button-block"/>Get Started</button>

                                    </form>

                                </div>
                            </div><!-- tab-content -->

                        </div>    
         <div class="clear60"></div> 
         
           <section id="ctaf">
          <%@include file="Footer.jsp" %>

        </section>
         <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>


        <!--        <script src="http://maps.google.com/maps/api/js?sensor=true"></script>-->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/mousescroll.js"></script>
        <script src="js/smoothscroll.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/jquery.inview.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/login.js"></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="js/slider.js"></script>


        <script src="js/jquery.inputLettering.js"></script>

        <script type="text/javascript">
                                    function CheckSubOthers(val) {
                                        // alert(val);
                                        // var element=document.getElementById('sub');
                                        var txtsub = document.getElementById('txtsub');
                                        if (val == 'Others')
                                            txtsub.style.display = 'block';
                                        else
                                            txtsub.style.display = 'none';
                                    }

                                    function CheckCall(val) {
                                        // alert(val);
                                        // var element=document.getElementById('sub');
                                        var txtsub = document.getElementById('txtcall');
                                        if (val == 'Yes' || val == 'yes')
                                            txtsub.style.display = 'block';
                                        else
                                            txtsub.style.display = 'none';
                                    }



                                    var currentTab = 0; // Current tab is set to be the first tab (0)
                                    showTab(currentTab); // Display the current tab

                                    function showTab(n) {
                                        // This function will display the specified tab of the form...
                                        var x = document.getElementsByClassName("tab");
                                        x[n].style.display = "block";
                                        //... and fix the Previous/Next buttons:
                                        if (n == 0) {
                                            document.getElementById("prevBtn").style.display = "inline";
                                        } else {
                                            document.getElementById("prevBtn").style.display = "inline";
                                        }
                                        if (n == (x.length - 1)) {
                                            document.getElementById("nextBtn").innerHTML = "Finish";
                                        } else {
                                            document.getElementById("nextBtn").innerHTML = "Next";
                                        }
                                        //... and run a function that will display the correct step indicator:
                                        fixStepIndicator(n)
                                    }

                                    function nextPrev(n) {
                                        // This function will figure out which tab to display
                                        var x = document.getElementsByClassName("tab");
                                        // Exit the function if any field in the current tab is invalid:

                                        if (n == 1 && !validateForm())
                                            return false;
                                        // Hide the current tab:
                                        x[currentTab].style.display = "none";
                                        // Increase or decrease the current tab by 1:
                                        currentTab = currentTab + n;

                                        // if you have reached the end of the form...
                                        if (currentTab >= x.length) {
                                            // ... the form gets submitted:
                                            document.getElementById("register-form").submit();
                                            return false;
                                        }
                                        // Otherwise, display the correct tab:
                                        if (currentTab == -1) {
                                            currentTab = 0;
                                            showTab(currentTab);

                                        } else
                                        {
                                            showTab(currentTab);
                                        }

                                    }

                                    function validateForm() {
                                        // This function deals with validation of the form fields
                                        var x, y, i, valid = true;
                                        x = document.getElementsByClassName("tab");
                                        y = x[currentTab].getElementsByTagName("input");
                                        // A loop that checks every input field in the current tab:
                                        for (i = 0; i < y.length; i++) {
                                            // If a field is empty...
                                            if (y[i].value == "") {
                                                // add an "invalid" class to the field:
                                                y[i].className += " invalid";
                                                // and set the current valid status to false
                                                valid = false;
                                            }
                                        }
                                        // If the valid status is true, mark the step as finished and valid:
                                        if (valid) {
                                            document.getElementsByClassName("step")[currentTab].className += " finish";
                                        }
                                        return valid; // return the valid status
                                    }

                                    function fixStepIndicator(n) {
                                        // This function removes the "active" class of all steps...
                                        var i, x = document.getElementsByClassName("step");
                                        for (i = 0; i < x.length; i++) {
                                            x[i].className = x[i].className.replace(" active", "");
                                        }
                                        //... and adds the "active" class on the current step:
                                        x[n].className += " active";
                                    }


        </script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="js/jquery.inputLettering.js"></script>
        <script type="text/javascript">

                                    $(function() {

                                      
                                        $('#phoneInput').letteringInput({
                                            inputClass: 'letter',
                                            onLetterKeyup: function($item, event) {

                                                console.log('$item:', $item);
                                                console.log('event:', event);
                                            },
                                            onSet: function($el, event, value) {
                                                console.log('element:', $el);
                                                console.log('event:', event);
                                                console.log('value:', value);
                                            }
                                        });
                                    });



        </script>
        <script>
            //Get the button
            var mybutton = document.getElementById("myBtn");

            // When the user scrolls down 20px from the top of the document, show the button
            window.onscroll = function() {
                scrollFunction()
            };

            function scrollFunction() {
                if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                    mybutton.style.display = "block";
                } else {
                    mybutton.style.display = "none";
                }
            }

            // When the user clicks on the button, scroll to the top of the document
            function topFunction() {
                document.body.scrollTop = 0;
                document.documentElement.scrollTop = 0;
            }
        </script>
     

    </body>
</html>
    </body>
</html>

