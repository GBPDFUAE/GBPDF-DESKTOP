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
   

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/logo.png">
        <link rel="apple-touch-icon-precomposed" href="images/logo.png">
    <link rel="stylesheet" href="assets/css/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=sora">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/mob.css">
    <link rel="stylesheet" href="quizjs/jquery.quiz.css">
    
       <link rel="stylesheet" href="css/style.css">
        <link href="css/font-awesome.min.css" rel="stylesheet">        
        <link href="css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-datetimepicker.min.css">
        <!--        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <!--        <link rel="stylesheet" href="css/modal.css">-->
        <link href="css/main.css" rel="stylesheet">
        <link href="css/menu.css" rel="stylesheet">
       
    <style>
        body,h1 {font-family: "sora", sans-serif}
        body, html {height: 100%}
        .bgimg {
            background-image: url('assets/bg/hm.png');
            min-height: 100%;
            background-position: center;
            background-size: cover;
        }
      
    </style>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
    <script src="quizjs/jquery.quiz.js"></script>
    <body>

    



<!--         Top menu -->
<div class="w3-top" >
            <div class="w3-white w3-xlarge" style="width:100%;">
<!--                <div class="w3-button w3-padding-16 w3-left"><a href="Back"><img src="assets/icons/back.png" alt="logo"width="40" height="30"></a></div>
                <div class="w3-right w3-padding-16"><a href="#"><img src="assets/icons/bell.png" alt="logo" width="35" height="45">&nbsp;</a></div>
                      <div class="w3-center w3-padding-16">Login&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="70" height="30">&nbsp;&nbsp;&nbsp;</div>  -->
<header id="header">
              <%@include file="SuccessMenu.jsp" %>
        </header>
            </div>
 
        </div>

        <div class="bgimg w3-display-container w3-animate-opacity w3-text-white" >

            <div class="w3-display-topleft w3-padding-large w3-xlarge">

               
            </div>
            <div class="w3-display-middle" >
                <div class="card" style="overflow-y: auto;width: 350px;padding: 8px;" >
                    <section>
                        <center>
                            
                                <div id="quiz">
                                    <div id="quiz-header" style="color: black">
                                      
                                        <p><a id="quiz-home-btn">Online test</a></p>
                                    </div>
                                    <div id="quiz-start-screen">
                                        <p><a id="quiz-home-btn">Back</a></p>
                                        <p><a href="#" id="quiz-start-btn" class="quiz-button">Start</a></p>
                                    </div>
                                </div>
                                    

                            <script>
                                
                                 <%
        try{
    
        ArrayList<ArrayList> contactlist = (ArrayList<ArrayList>) request.getAttribute("qll");
        int sz = contactlist.size();
                                            if (sz > 0) {
                                               
    %>
                                $('#quiz').quiz({
                                    resultsScreen: '#results-screen',
                                    counter: true,
                                    homeButton: '#custom-home',
                                    counterFormat: 'Question %current of %total',
                                    questions: [
                                        <%
                                         for (int i = 0; i < sz; i++) {
                                                     ArrayList data = contactlist.get(i);
                                                     String ans=data.get(5).toString();
                                                     int slz=ans.length();
                                                     String substring=ans.substring(slz-1, slz);
                                                     int aa=Integer.parseInt(substring);
                                        %>
                                        {
                                            'q': '<%=data.get(0) %>',
                                            'options': [
                                                '<%=data.get(1) %>',
                                                '<%=data.get(2) %>',
                                                '<%=data.get(3) %>',
                                                '<%=data.get(4) %>'
                                            ],
                                            
                                            'correctIndex': parseInt('<%=aa%>')-1,
                                            'correctResponse': 'Custom correct response.',
                                            'incorrectResponse': 'Custom incorrect response.'
                                        },
                                        <%
                                         }
                                        %>
//                                        {
//                                            'q': 'A smaple question?',
//                                            'options': [
//                                                'Answer 1',
//                                                'Answer 2'
//                                            ],
//                                            'correctIndex': 1,
//                                            'correctResponse': 'Custom correct response.',
//                                            'incorrectResponse': 'Custom incorrect response.'
//                                        },
//                                        {
//                                            'q': 'A smaple question?',
//                                            'options': [
//                                                'Answer 1',
//                                                'Answer 2',
//                                                'Answer 3',
//                                                'Answer 4'
//                                            ],
//                                            'correctIndex': 2,
//                                            'correctResponse': 'Custom correct response.',
//                                            'incorrectResponse': 'Custom incorrect response.'
//                                        },
//                                        {
//                                            'q': 'A smaple question?',
//                                            'options': [
//                                                'Answer 1',
//                                                'Answer 2'
//                                            ],
//                                            'correctIndex': 1,
//                                            'correctResponse': 'Custom correct response.',
//                                            'incorrectResponse': 'Custom incorrect response.'
//                                        },
//                                        {
//                                            'q': 'A smaple question?',
//                                            'options': [
//                                                'Answer 1',
//                                                'Answer 2',
//                                                'Answer 3',
//                                                'Answer 4'
//                                            ],
//                                            'correctIndex': 3,
//                                            'correctResponse': 'Custom correct response.',
//                                            'incorrectResponse': 'Custom incorrect response.'
//                                        }
                                    ]
                                });
                            </script>
                            
                            <%
                                               
                                                
                                            }
        }catch(Exception ex){}
                            %>

                        </center>
                    </section>   
                </div>

            </div>

        </div>
    
    </div>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/common.js"></script>
    <script type="text/javascript">
                $('#image').click(function() {
                    $('#myfile').click()
                })
                function w3_open() {
                    window.history.back();
                }
    </script>
</body>
</html>

