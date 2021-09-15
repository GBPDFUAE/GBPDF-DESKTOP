<!DOCTYPE html>
<html lang="en">



    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wishtopia</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body >


<!-- Top Navigation Menu -->



        <div class="page-container">
<!--                    <div class="topbar ">
                        <a  class="mhead" href="#home">Home</a>
            <a  class="mhead" href="#news">News</a>
            <a  class="mhead"  href="#contact">Contact</a>
                    </div>-->


<nav role="navigation">
            <div id="menuToggle">
              <input type="checkbox" />
                <span></span>
                <span></span>
                <span></span>
            <ul id="menu">
              
              <li><a href="#">Profile</a></li>
              <li><a href="#">Videos</a></li>
              <li><a href="#">Payment</a></li>
              <li><a href="#">Classes</a></li>
            </ul>
           </div>
          </nav>
       

            <section class="pt-3 pb-3">
                <!--            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="d-flex justify-content-center align-items-center mb-3">
                                            <img class="img-fluid" width="120" src="assets/images/logo.png" alt="" />
                                        </div>
                                    </div>
                                </div>-->
                <!--                <div class="row">
                                    <div class="col-md-10 offset-md-1">
                                        <img class="img-fluid" src="assets/images/callbaner.jpg" alt="" />
                                    </div>
                                </div>-->
                <!--            </div>-->
            </section>
            <!--        <section class="pt-3 pb-3">
                        <div class="container">
                            <div class="row">
                                <img src="assets/images/upt.png" alt="logo" class="logo">
                            </div>
                        </div>
                    </section>-->
            <section class="pb-5">
                <div class="container">
                    <div class="card_center">
                        <div class="row card ">
                            <div class="col-md-12">

                                <div class="brand-wrapper"><br/>
                                    <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">
                                </div>
                                <br/><center>
                                <p class="login-card-description"> Register Mobile Number</p>
                                <form action="#!">
                                    <div class="form-group">
                                     
                                        <input class="inputs" type="text" pattern="[0-9]" placeholder="9" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]" placeholder="8" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]"  placeholder="7" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]"  placeholder="6" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]" placeholder="5" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]"  placeholder="4" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]"  placeholder="3" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]" placeholder="2" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]"  placeholder="1" maxlength="1">
                                        <input class="inputs" type="text" pattern="[0-9]"  placeholder="0" maxlength="1">
                                    </div>
                                    </br>
                                    <!--    <div class="form-group mb-4">
                                          <label for="password" class="sr-only">Password</label>
                                          <input type="password" name="password" id="password" class="form-control" placeholder="***********">
                                        </div>-->
                                    <!--              <input name="login" id="login" class="btn btn-block login-btn mb-4" type="submit" value="Login">-->
                                </form>
                                </center>
                                <!--              
                                                <a href="#!" class="forgot-password-link">Forgot password?</a>
                                                <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
                                                <nav class="login-card-footer-nav">
                                                  <a href="#!">Terms of use.</a>
                                                  <a href="#!">Privacy policy</a>
                                                </nav>-->

                            </div>
                        </div>
                    </div>
            </section>

            <section class="pt-3 pb-3">
                <div class="container">
                    <div class="row">

                    </div>
                </div>
            </section>

     
        <!--    <div class="bottom-bar" >-->
        <!--        <div>CLICK HERE TO CALL US TOLL FREE</div>
                <div class="phone-number">1800 315 3131</div>
                <div class="phone-loader" style="display: none;">Opening Phone App...</div>-->

        <div class="navbar">
            <a href="#home" class="active"><img src="assets/icons/pay.png" width="40" height="30"/></a>
            <a href="#news"><img src="assets/icons/liveclass.png" width="40" height="30"/></a>
            <a href="#contact"><img src="assets/icons/support.png" width="40" height="30"/></a>
        </div>
           </div>
        <!--    </div>-->
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/common.js"></script>
        <script type="text/javascript">
            $('.inputs').keyup(function () {
                if (this.value.length == this.maxLength) {
                    $(this).next('.inputs').focus();
                }
            });
        </script>
    </body>



</html>