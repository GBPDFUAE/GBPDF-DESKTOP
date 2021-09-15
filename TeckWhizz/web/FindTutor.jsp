<%@page import="java.util.ArrayList"%>
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
        <link rel="stylesheet" href="css/style.css">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.transitions.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <!--          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <!--        <link rel="stylesheet" href="css/modal.css">-->
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
         <link href="css/menu.css" rel="stylesheet">
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

            table {
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
                border: 1px solid #ddd;
            }
            th
            {
                background-image:linear-gradient(to right, #5c72ff, #8c3fff);
                color: white;
            }
            th, td {
                text-align: center;
                word-wrap: break-word;
                padding: 8px;
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
        </style>



    </head><!--/head-->

    <body id="home" style="background-color: #f1f3f6;" >

     <header id="header">
          <%@include file="Menu.jsp" %>
        </header><!--/header-->




        <section id="f2f" >
            <form action="FindTutor" method="POST">
                <div class="container   ">


                    <div class="clear20"></div>
                    <div class="row ">
                        <div class="ftrt-top-search ">
                            <div class="col-md-3 col-sm-3">
                                <div class="form-input">
                                    <label for="studyarea" class="required">Study Area</label>
                                    <div class="select-list">
                                        <select name="studyarea" class="inp" id="stud" onchange="langlrn(this.value)">
                                            <option value="1" selected="">School Education</option>
                                            <option value="2">Language Learning</option>
                                            <option value="3">Crash Course</option>

                                        </select>
                                    </div>
                                </div>


                            </div>
                            <div id="se" style="display: block">
                                <div class="col-md-3 col-sm-3">
                                    <div class="form-input">
                                        <label for="board" class="required">Board</label>
                                        <div class="select-list">
                                            <select name="board" class="inp" id="meal_preference">
                                                <option value="CBSE">CBSE </option>
                                                <option value="ICSE">ICSE </option>
                                                <option value="IB">IB </option>
                                                <option value="IGCSE">IGCSE </option>
                                                <option value="STB">STATE BOARD </option>
                                                <option value="Matric">Matric </option>
                                            </select>
                                        </div>
                                    </div>


                                </div>


                                <div class="col-md-2 col-sm-2">
                                    <div class="form-input">
                                        <label for="grade" class="required">Grade</label>
                                        <div class="select-list">
                                            <select name="grade" class="inp" id="meal_preference">
                                                <option value="Nursery" selected="">Nursery</option>
                                                <option value="Juniorkg">Junior KG</option>
                                                <option value="Seniorkg">Senior KG</option>  
                                                <%
                                                    for (int i = 1; i <= 12; i++) {
                                                %>
                                                <option value="<%=i%>">Class <%=i%></option>

                                                <%
                                                    }
                                                %>
                                            </select>
                                        </div>
                                    </div>


                                </div>

                                <div class="col-md-2 col-sm-2">
                                    <div class="form-input">
                                        <label for="sub" class="required">Subject</label>
                                        <div class="select-list">
                                            <select name="sub" class="inp" id="meal_preference">
                                                <option value="Tamil">Tamil</option>
                                                <option value="English">English</option>
                                                <option value="Hindi">Hindi</option>
                                                <option value="French">French</option>
                                                <option value="Kindergarten">Kindergarten</option>
                                                <option value="Maths">Maths</option>
                                                <option value="Science">Science</option>
                                                <option value="History">History</option>
                                                <option value="Economics">Economics</option>
                                                <option value="Statistics">Statistics</option>
                                                <option value="Botany">Botany</option>
                                                <option value="Zoology">Zoology</option>
                                                <option value="Physics">Physics</option>
                                                <option value="Chemistry">Chemistry</option>
                                                <option value="Accountancy">Accountancy</option>
                                                <option value="Business Math">Business Math</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                           <div class="col-md-2 col-sm-2">
                                <label for="serch" >&nbsp;</label>
                                <div class="form-input">
                                    <input type="submit"  class="btn btn-primary-pur btn-round-lg" value="Search" />

                                </div>
                            </div>
                            
                            </div>



                            <div id="ll" style="display: none">
                                <div class="col-md-4 col-sm-3">
                                    <div class="form-input">
                                        <label for="board" class="required">Language</label>
                                        <div class="select-list">
                                            <select name="lan" class="inp" id="meal_preference">
                                                <option value="Tamil">Tamil </option>
                                                <option value="English">English </option>
                                                <option value="Hindi">Hindi </option>
                                                <option value="French">French </option>

                                            </select>
                                        </div>
                                    </div>


                                </div>


                                <div class="col-md-4 col-sm-3">
                                    <div class="form-input">
                                        <label for="leve" class="required">Level</label>
                                        <div class="select-list">
                                            <select name="lvl" class="inp" id="meal_preference">
                                                <option value="Beginner" selected="">Beginner</option>
                                                <option value="Intermediate">Intermediate</option>

                                            </select>
                                        </div>
                                    </div>


                                </div>

  <div class="col-md-3 col-sm-3">
                                <label for="serch" >&nbsp;</label>
                                <div class="form-input">
                                    <input type="submit"  class="btn btn-fintutor" value="Search" />

                                </div>
                            </div>
                            </div>

                            <div id="crsh" style="display: none">
                                <div class="col-md-4 col-sm-4">
                                    <div class="form-input">
                                        <label for="board" class="required">Crash Course</label>
                                        <div class="select-list">
                                            <select name="lan" class="inp" id="meal_preference">
                                                <option value="Tamil">Select </option>
                                                <!--                                            <option value="English">English </option>
                                                                                            <option value="Hindi">Hindi </option>
                                                                                            <option value="French">French </option>-->

                                            </select>
                                        </div>
                                    </div>


                                </div>


                                <div class="col-md-4 col-sm-4">
                                    <div class="form-input">
                                        <label for="leve" class="required">Course</label>
                                        <div class="select-list">
                                            <select name="lvl" class="inp" id="meal_preference">
                                                <!--                                            <option value="Beginner" selected="">Beginner</option>
                                                                                            <option value="Intermediate">Intermediate</option>-->

                                            </select>
                                        </div>
                                    </div>


                                </div>

  <div class="col-md-3 col-sm-3">
                                <label for="serch" >&nbsp;</label>
                                <div class="form-input">
                                    <input type="submit"  class="btn btn-primary-pur btn-round-lg" value="Search" />

                                </div>
                            </div>
                                
                                <div class="col-md-3 col-sm-3">
                                <label for="serch" >&nbsp;</label>
                                
                            </div>
                            </div>


                          






                        </div>


                        <div class="clear20"></div>
                    </div>

                </div>
            </form>
            <div class="container">

                <%
                    try {

                        ArrayList<ArrayList> contactlist = (ArrayList<ArrayList>) request.getAttribute("tut");
                        String sub = request.getAttribute("sub").toString();
                        int sz = contactlist.size();

                        if (sz > 0) {
                            for (int i = 0; i < sz; i++) {
                                ArrayList data = contactlist.get(i);
                %>
                <div class="row ">
                    <div class="ftrt-top-search">
                        <div class="col-md-7 col-sm-7 pull-left">
                            <div class="profile-img pull-left" style="margin-top: 20px">
                                <img src="assets/icons/profile.png"/> 
                            </div>

                            <div class="pull-left" style="margin-left: 10px">
                                <span><h3><%=data.get(0).toString()%> <%=data.get(1).toString()%></h3></span>
                                <span><h5><%=data.get(2).toString()%></h5></span>




                                <!--                                <div class="tut-rating">
                                                                    <div style="display: inline-block; position: relative;" class="dv-star-rating">
                                                                        <input style="display: none; position: absolute; margin-left: -9999px;" class="dv-star-rating-input" type="radio" name="class_rating" id="class_rating_5" value="5"><label style="float: right; cursor: pointer; color: rgb(224, 228, 239);" class="dv-star-rating-star dv-star-rating-empty-star" for="class_rating_5">
                                                                            <i style="font-style: normal;">?</i></label>
                                                                        <input style="display: none; position: absolute; margin-left: -9999px;" class="dv-star-rating-input" type="radio" name="class_rating" id="class_rating_4" value="4">
                                                                        <label style="float: right; cursor: pointer; color: rgb(224, 228, 239);" class="dv-star-rating-star dv-star-rating-empty-star" for="class_rating_4"><i style="font-style: normal;">?</i></label><input style="display: none; position: absolute; margin-left: -9999px;" class="dv-star-rating-input" type="radio" name="class_rating" id="class_rating_3" value="3" checked="">
                                                                        <label style="float: right; cursor: pointer; color: rgb(252, 185, 19);" class="dv-star-rating-star dv-star-rating-full-star" for="class_rating_3"><i style="font-style: normal;">?</i></label><input style="display: none; position: absolute; margin-left: -9999px;" class="dv-star-rating-input" type="radio" name="class_rating" id="class_rating_2" value="2">
                                                                        <label style="float: right; cursor: pointer; color: rgb(252, 185, 19);" class="dv-star-rating-star dv-star-rating-full-star" for="class_rating_2"><i style="font-style: normal;">?</i></label><input style="display: none; position: absolute; margin-left: -9999px;" class="dv-star-rating-input" type="radio" name="class_rating" id="class_rating_1" value="1">
                                                                        <label style="float: right; cursor: pointer; color: rgb(252, 185, 19);" class="dv-star-rating-star dv-star-rating-full-star" for="class_rating_1"><i style="font-style: normal;">?</i></label></div><strong>3.0</strong></div>
                                -->
                            </div>

                        </div>
                        <!--                         <div class="col-md-3 col-sm-3 pull-left">
                                                     
                         <span><h1>&nbsp;</h1></span>
                                                </div>-->

                        <div class="col-md-3 col-sm-3 pull-left">
                            <span><h1>&nbsp;</h1></span>

                        </div>

                        <div class="col-md-2 col-sm-2 pull-left">
                            <div class="form-input">
                                <br/> <br/> <br/>
                                <a href="BookClass.jsp?sub=<%=sub%>" >   <input type="button"  class="btn btn-primary-pur1 " value="Book Class" /></a>

                            </div>

                        </div>

                    </div>

                </div> 


                <!--                    <div class="row ">
                                    <div class="ftrt-top-search ">
                                        <div class="col-md-3 col-sm-3 pull-left">
                                            
                                            <div class="profile-img pull-left" style="margin-top: 20px">
                                               
                                                <img src="assets/icons/profile.png"/>
                                            </div>
                                            &nbsp;
                                            <div class="pull-left" style="margin-left: 10px">
                                                <span><h3>JACK</h3></span>
                                                 <span><h5>5 years</h5></span>
                                                <span><i class="fa fa-desktop" title="Online tution"></i>&nbsp;<i class="fa fa-user" title="Individual Class"></i></span>
                                                <span><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAWCAYAAAAvg9c4AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MTM2MDU1RUU2NThBMTFFOTgwNEY4OTAxRTY5MUI2RTciIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MTM2MDU1RUY2NThBMTFFOTgwNEY4OTAxRTY5MUI2RTciPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxMzYwNTVFQzY1OEExMUU5ODA0Rjg5MDFFNjkxQjZFNyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoxMzYwNTVFRDY1OEExMUU5ODA0Rjg5MDFFNjkxQjZFNyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pudn7q0AAAM+SURBVHjarFXdS5NRGP+dM21f2nTzY4rBUsggxUpdSjBv7CLCQuxC8KL+gaAoiq6im666kK66aeFFIJiWhVqjYKEYUlGGJckqpZFoaczX6ZY7Oz3vu7l6dWZiDzyc8z7nnN953ufjd5h47MAGYiU9DkgPZKwGMl4O8AB4xkuADdLaA9JQuoMsLSjj5yEil7Cs5EPSdyYpZ0CcPmLJPeasHzCYr9Nl1zYBZU4w1ovwNzcIA0XHwArJ2ay9gMFCoMvA4gTkzENguhcQtCcrb5QuPkF/NJUGlOXSwjiUuULk7Qc/fAvIOLhRaCDnhiDfXwBmR4Bs+zz9SiVZv+pBGXuL0PdKtuso2KF+RMg0MfaBvIsmlxkcDgeKi4v14C9ayMcewOb4RB6XaUYVVPjyz4oeSOGvkqoI0traWjWa67SiokK2t7fLP0UM1knRTed9BVdUPNVTI8UqhMiSkR8hz6x7EI3+hMlk1C4tLS2F2WxGLBZDIBCAEEKzNzQ0wO/3J9xdnkLc5wJ2UNwNZht5mnda3KUcvmpJ3RyNRqXJZNI8m52dTdnD4bDs7OyURqNRW2tubk6txUdPSRWH8M5APMq5o7oenxnQgZJ32sFgMCjXysjISCocQ0NDCdC5Z1LcJ9ABWy+HCFfBagOzHUib5Ugkss7mdrvR1NSkzbu6uhKJtFGlWAspSUoFh1wpQ6adymcntiKNjY3aqMZZE0MWNQlVkowXcWxTOF8PwcEyP2KFaje2sCUwn8+njeXl5QmDUICVObXFpzkM1lGEQ5ALr/VFLaU2WiyWdYDDw8Po6+vT5q2trYn9oTdAeIbCkD1GnmY80fL4xZu+HZPgqiiKgo6ODq1GVWlra0N1dXViMXg7QTY886naUSYxYImIe3R+cSJVUqsl43Q6pcvlkiUlJbrOouz/rrGlyUQ59ZupTh22ZJsW6No0TurxeNK2aX19vfR6vZu26SqhjBGh7FslFFU+fg7qCMVutyMnJ2cNoZwkQulWCWWSrt29lvpoEn8HZb4Q+dXgdTepl2v+Tn3jF4GZ50R9uVQ+hiq1ATcm6UUiaf5fSFr3nFym5+TcJs/JPDHSDeqgq//2Rm3z4fslwAClfxEFHFSrYwAAAABJRU5ErkJggg==" alt="Free demo class" title="Free Demo Class"></span>
                                           
                                            </div>
                
                                        </div>
                                         <div class="col-md-3 col-sm-3 pull-left">
                                             
                 <span><h1>&nbsp;</h1></span>
                                        </div>
                                        
                                        <div class="col-md-3 col-sm-3 pull-left">
                                            <span><h1>&nbsp;</h1></span>
                
                                        </div>
                                        
                                        <div class="col-md-2 col-sm-2 pull-left">
                                              <div class="form-input">
                                                  <br/> <br/> <br/>
                                              <a href="BookClass.jsp?sub=<%=sub%>" >   <input type="button"  class="btn btn-primary-pur1 " value="Book class" /></a>
                
                                                </div>
                
                                        </div>
                                        
                                    </div>
                
                                </div> -->

                <%
                            }
                        }
                    } catch (Exception ex) {
                    }
                %>
            </div>
        </section>






































































        <section id="ctaf">
          <%@include file="Footer.jsp" %>

        </section>
        <!--/#footer-->

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $('.navbar-collapse ul li a').on('click', function() {

                                                    $("#bs-example-navbar-collapse-1").attr("aria-expanded", "false");
                                                    $("#bs-example-navbar-collapse-1").removeClass("in");
                                                });
                                            });
        </script>
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

                                            function langlrn(val) {
                                                //  alert(val);
// var element=document.getElementById('sub');
                                                var txtsub1 = document.getElementById('se');
                                                var txtsub2 = document.getElementById('ll');
                                                var txtsub3 = document.getElementById('crsh');
                                                if (val == 'schooledu') {
                                                    txtsub1.style.display = 'block';
                                                    txtsub2.style.display = 'none';
                                                    txtsub3.style.display = 'none';
                                                }
                                                else if (val == 'LL') {
                                                    txtsub2.style.display = 'block';
                                                    txtsub1.style.display = 'none';
                                                    txtsub3.style.display = 'none';
                                                }
                                                else
                                                {
                                                    txtsub3.style.display = 'block';
                                                    txtsub1.style.display = 'none';
                                                    txtsub2.style.display = 'none';
                                                }
                                            }
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




                                            var input = document.getElementById('file-input');
                                            var input1 = document.getElementById('file-input1');
                                            var infoArea = document.getElementById('file-upload-filename');
                                            var infoArea1 = document.getElementById('file-upload-filename1');
                                            input.addEventListener('change', showFileName);
                                            //input1.addEventListener( 'change', showFileName1() );

                                            function showFileName(event) {

                                                // the change event gives us the input it occurred in 
                                                var input = event.srcElement;

                                                // the input has an array of files in the `files` property, each one has a name that you can use. We're just using the name here.
                                                var fileName = input.files[0].name;

                                                // use fileName however fits your app best, i.e. add it into a div
                                                infoArea.textContent = 'File name: ' + fileName;
                                            }

                                            //function showFileName1( event ) {
                                            //  
                                            //  // the change event gives us the input it occurred in 
                                            //  var input1 = event.srcElement;
                                            //  
                                            //  // the input has an array of files in the `files` property, each one has a name that you can use. We're just using the name here.
                                            //  var fileName = input1.files[0].name;
                                            //  
                                            //  // use fileName however fits your app best, i.e. add it into a div
                                            //  infoArea1.textContent = 'File name: ' + fileName;
                                            //}

        </script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
        <script src="js/jquery.inputLettering.js"></script>

        <script type="text/javascript">

                                            $(function() {

                                                //             $('#phoneInput').letteringInput() 
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

         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js'></script>
        <script  src="js/menu.js"></script>

        <script>
            $(document).ready(function() {
                $("#myModal").modal('show');
            });
        </script>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>


    </body>
</html>