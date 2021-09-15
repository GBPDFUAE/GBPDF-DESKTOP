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
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/mob.css">
    <link rel="stylesheet" href="assets/css/ch1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body,h1 {font-family: "sora", sans-serif}
        body, html {height: 100%}
        .bgimg {
            background-image: url('assets/bg/ch1bg.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
        }

        .hmbgimg {
            background-image: url('assets/bg/ch1card1.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
            width: 320px;
            height: 450px;
            display: flex;
            flex-direction: column;
            overflow: hidden;
            border-radius: 2rem;
            box-shadow: 0px 1rem 1.5rem rgba(0,0,0,0.5);

        }
        
        
        .hmbgimg1 {
            background-image: url('assets/bg/ch1card1.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
            
        }
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <body>


        <%@include file="nav.jsp" %>
        

        <!-- Top menu -->
        <div class="w3-top">
            <div class="w3-white w3-xlarge" style="width:100%;margin:auto">
                <div class="w3-button w3-padding-15 w3-left" onclick="w3_open()"><a href="#"><img src="assets/icons/menu.png" alt="logo"width="40" height="30"></a></div>
                <div class="w3-right w3-padding-15"><a href="#"><img src="assets/icons/bell.png" alt="logo" width="35" height="45">&nbsp;</a></div>
                <div class="w3-center w3-padding-16"><span style="font-family: 'sora';"> CLASS 1</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <!--                <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="70" height="30">&nbsp;&nbsp;&nbsp;</div>  -->
            </div>
        </div>

        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white">

            <div class="w3-display-topleft w3-padding-large w3-xlarge">
                <!--      <img src="assets/images/upt.png" alt="logo" class="logo img-fluid">-->

                </nav>
            </div>
            <div class="w3-display-topmiddle"  >
                <div class="brand-wrapper" style="padding: 10%">

                </div>
                <div class=" hmbgimg" style="overflow-y: auto;" >






                    <div class="container">

                        <div class="row ">
                            <div class="game col-3" id="gme1" >
                                <!--        <div class="text">
                                          <h5>.</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="game col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="notific col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>

                            <div class="assginment col-3">

                            </div>



                        </div>

                        <div class="row right-line">
                            <div class="hd col-3 circle5"><br/><br/><p> Chapter6</p>
                            </div>

                            >
                            <div class="book col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="video col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>




                        </div>


                        <div class="row left-line">
                            <div class="game col-3">

                            </div>
                            >
                            <div class="notific col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="assginment col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>




                        </div>


                        <div class="row right-line">
                            <div class="hd col-3 circle4"><br/><br/><p> Chapter5</p>
                            </div>


                            <div class="book col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="video col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>




                        </div>



                        <div class="row left-line">
                            <div class="game col-3">

                            </div>
                            >
                            <div class="notific col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="assginment col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>




                        </div>

                        <div class="row right-line">
                            <div class="hd col-3 circle3"><br/><br/><p> Chapter4</p>
                            </div>

                            >
                            <div class="book col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="video col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>




                        </div>


                        <div class="row left-line">
                            <div class="game col-3">

                            </div>
                            >
                            <div class="notific col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="assginment col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>




                        </div>
                        <div class="row right-line">



                            <div class="hd col-3 circle2"><br/><br/><p> Chapter3</p>
                            </div>

                            <div class="book col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>
                            <div class="video col-3">
                                <!--         <div class="text">
                                         <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>

                            <!--
                                                        <div class="book col-3">
                            
                                                        </div>-->


                        </div>
                        <div class="row left-line">


                            <div class="book col-3">

                            </div>

                            <div class="game col-3">

                            </div>
                            <div class="no-gutters col-3">
                                <!--         <div class="text">
                                          <h5>chaptor-1</h5>
                                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>  
                                        </div>-->
                            </div>

                            <div class="assginment col-3">

                            </div>
                        </div>
                        <div class="row right-line">


                            <div class="hd col-3 circle1"><br/><br/><p> Chapter2</p>

                            </div>

                            <div class="book col-3">

                            </div>
                            <div class="video col-3">

                            </div>




                        </div>


                        <div class="row left-line">

                            <div class="game col-3">

                            </div>
                            <div class="notific col-3">

                            </div>

                            <div class="assginment col-3" id="as1">

                            </div>

                        </div>   



                        <div class="row right-line">

                            <div class="hd col-3 circle"><br/><br/><p>Chapter1</p>

                            </div>
                            <div class="book col-3" id="bk1"  data-toggle="modal" data-target="#myModal" >
                            </div>

                            <div class="video col-3" id="v1">

                            </div>



                        </div>           






                    </div>


                    <div class="brand-wrapper" style="padding-top: 10%">

                    </div>



                </div>

            </div>


            <!--  <div class="w3-display-bottomleft w3-padding-large">
                Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
              </div>-->
        </div>
        <!--         <div id="snackbar">Some text some message..</div>-->

        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">

                        <h4 class="modal-title">demo.pdf</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">

                        <!--                        <embed src="CH1/demo.pdf"
                                                       frameborder="0" width="100%" height="400px">-->
                        <object width="100%" type="application/pdf" height="400px" data="http://docs.google.com/gview?embedded=true&url=http://dizinely.com/books/Std1_Ebook.pdf&amp;embedded=true"></object>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/common.js"></script>
        <script src="assets/js/toast.min.js"></script>
        <script src="assets/js/toast.js"></script>

        <script type="text/javascript">
                    $('.inputs').keyup(function() {
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

                    function myFunction() {

                        var x = document.getElementById("snackbar");

                        x.className = "show";

                        setTimeout(function() {
                            x.className = x.className.replace("show", "");
                        }, 3000);
                        alert(x.className);
                    }
        </script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="assets/js/script.js"></script>
    </body>
</html>

