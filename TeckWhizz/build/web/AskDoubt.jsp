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
        <link rel="stylesheet" href="assets/css/w3.css">
        <link rel="stylesheet" href="css/style.css">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/owl.carousel.css" rel="stylesheet">
        <link href="css/owl.transitions.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!--        <link rel="stylesheet" href="css/modal.css">-->
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
     
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

    <body id="home" class="homepage">

<!--        <header id="header">-->
            
<!--<nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand logo" href="index.jsp"><img src="images/logo.png" alt="logo"></a>
                        
                    </div>

                     menu

                      <div class="collapse navbar-collapse navbar-left" id="bs-example-navbar-collapse-1">
                        
                          <h3  > Wishtopia</h3>
                                                       
                            

                        
                    </div>
                          <div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                             <li class="scroll"><a data-toggle="collapse" data-target=".in" href="#f2f">Doubts</a></li>
                             <li class="scroll"><a data-toggle="collapse" data-target=".in" href="#askdubt">Ask Doubt</a></li>
                            <li class="scroll"><a data-toggle="collapse" data-target=".in" href="#home">Home</a></li>
                            <li class="scroll"><a data-toggle="collapse" data-target=".in" href="Logout">Logout</a></li>
                                                       
                            

                        </ul>
                    </div>


                </div>/.container
            </nav>/nav-->
  <%@include file="nav.jsp" %>
  <div class="w3-top">
            <div class="w3-white w3-xlarge" style="width:100%;margin:auto">
                <div class="w3-button w3-padding-15 w3-left" onclick="w3_open()"><img src="assets/icons/menu.png" alt="logo"width="40" height="30"></div>

                <div class="w3-right w3-padding-15"><img src="assets/icons/bell.png" alt="logo" width="35" height="45">&nbsp;</div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="Logout">Logout</a> </div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="Attendance">Attendance</a> </div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="Liveclass">Live&nbsp;Class</a> </div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="OnlineTest">Online&nbsp;for&nbsp;Test</a></div>
                <div class="w3-button w3-padding-15 w3-right" ><a href="#">FeedBack</a></div>

                <div class="w3-center w3-padding-16"><span style="font-family: 'sora';">  </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>

                <!--                <div class="w3-center w3-padding-16"> <img src="assets/images/upt.png" alt="logo"width="70" height="30">&nbsp;&nbsp;&nbsp;</div>  -->
            </div>
        </div>
        </header><!--/header-->

    
 
        <section id="f2f" >
             <div class="container card">

            <div class="section-header">
                <div class="clear20"></div>	
                <h2 class="section-title text-center wow fadeInDown"> Doubts</h2>
                <a href="#askdubt" <h3 class="btn btn-primary-pur btn-round-lg" style="float: right">Ask Doubt</h3></a>
                <!--                    <p class="text-center wow fadeInDown"> under Constrcution</p>-->
            </div
             </div>
            <div class="clear20"></div>
               <div class="row">
               
                   <div class="col-xs-12 col-xs-12">
                       <div style="overflow-x:auto;">
  <table>
      <tr>
        <th>SNO</th>
      <th>STANDARD</th>
      <th>SUBJECT</th>
      <th>QUESIONS</th>
      <th>CLEAR&nbsp;DOUBTS</th>
      <th>ATTACHMENT</th>
      <th>ANSWER</th>
      <th>DATE&nbsp;TIME</th>
      
    </tr>
    <%
        try{
    
        ArrayList<ArrayList> contactlist = (ArrayList<ArrayList>) request.getAttribute("dl");
        int sz = contactlist.size();
                                            if (sz > 0) {
                                                for (int i = 0; i < sz; i++) {
                                                     ArrayList data = contactlist.get(i);
    %>
    <tr>
      <td><%=(i + 1)%></td>
      <td><%=data.get(2).toString()%></td>
      <td><%=data.get(3).toString()%></td>
      <td><%=data.get(4).toString()%></td>     
      <td><%=data.get(5).toString()%></td>
      <td><a href="askdbt/<%=data.get(6).toString()%>"><%=data.get(6).toString()%></a></td>
      <td> <%=data.get(8).toString()%></td>
      <td><%=data.get(12).toString()%></td>
     
      
    </tr>
    <%
       
                                                }
                                            }
                                                }catch(Exception ex){}
    %>
  </table>
</div>
                       
                   </div>
               </div>
            
        </section>
        
        
        
        <section id="askdubt" >
        <div class="container card">

            <div class="section-header">
                <div class="clear20"></div>	
                <h2 class="section-title text-center wow fadeInDown">Ask Doubt</h2>
                <!--                    <p class="text-center wow fadeInDown"> under Constrcution</p>-->
            </div>
            
            <form action="AddDoubts" method="post" enctype="multipart/form-data">

            <div class="row">
               
                <div class="col-xs-6 col-xs-12">

                    <div class="clear20"></div>						

                    <div class="form-group ">
                        <label for="first_name">Standard</label>
                        <Select   class="" name="cls">

                            <option value="NURSERY">NURSERY </option>
                            <option value="JUNIOR KG">JUNIOR KG </option>
                            <option value="SENIOR KG">SENIOR KG </option>
                            <% for (int i = 1; i <= 12; i++) {
                                    String cls = "Class " + i;
                            %>
                            <option value="<%=cls%>"><%=cls%></option>
                            <%
                                }
                            %>
                        </select>   
                    </div>                         

                    <div class="clear"></div>
                </div>


                <div class="col-xs-6 col-xs-12">

                    <div class="clear20"></div>	
                    <div class="form-group ">
                        <label for="first_name" >Subject</label>
                        <select name="sub"  class="" id="meal_preference"  onchange="CheckSubOthers(this.value);">
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
                            <option value="Others">Others</option>
                        </select>

                        <input style="display: none" id="txtsub"  type="text"  name="txtsub" class=""   placeholder="Subject Name" />
                    </div>   

                </div>




            </div>



            <div class="row text-left">
                
                <div class="col-xs-12 col-xs-12">

                    <div class="clear20"></div>						

                    <div class="form-group">
                        <label for="qa" >Question</label>
                        <div class="form-input">

                            <textarea  name="qa" id="qa" rows="6" class="" placeholder="Enter the question here,question must be  type minimum 30 charectors need "></textarea>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>
            </div>


            <div class="row ">

                
                <div class="col-xs-6 col-xs-12">
                    <div>Do you need a  subject expect to call and clear your  doubts ? &nbsp;  
                           </div>
                    <div class="clear10"></div>		
                </div>  
                
                 <div class="col-xs-6 col-xs-12 pull-left">
                    
                     <div class="col-xs-3">
                     <input  type="radio" style="visibility: visible;" name="calus" value="yes" onClick="CheckCall(this.value)"/><b>YES </b>
                     </div>
                      <div class="col-xs-3">
                            <input type="radio" style="visibility: visible;" name="calus" value="no"  onClick="CheckCall(this.value)" checked=""/><b>NO
                        </b>
                      </div>
                      </div>
                    <div class="clear10"></div>		
                </div>  
          


            <div class="row">

                <div class="col-xs-6 col-xs-6">

                </div>
                <div class="col-xs-4 col-xs-6">
                    <input  type="text"  name="txtcall" id="txtcall" style="display: none;" class=""   placeholder="Enter Moblie Number" />
                    <div class="clear20"></div>		
                </div>  
            </div>           


            <div class="row ">

                
                <div class="col-xs-12 col-xs-12">
                    <div>Click the upload icon below to upload a file.</div>
                </div>

            </div>

            <div class="row ">
               
                <div class="col-xs-3 col-xs-4">




                    <div class="image-upload">
                        <label for="file-input">
                            <img src="images/askdoubt/attach.png"/>
                        </label>

                        <input id="file-input" name="myfile" type="file"/>
                        
                    </div>
                    <div id="file-upload-filename"></div>

                    <div class="clear"></div>
                </div>


<!--                <div class="col-xs-3 col-xs-4">



                    <div class="image-upload">
                        <label for="file-input1s">
                            <img src="images/askdoubt/attach.png" />
                        </label>

                        <input id="file-input1" name="attach" type="file"/>
                    </div>
<div id="file-upload-filename1"></div>


                    <div class="clear"></div>
                </div>-->
                
                
                 <div class="col-xs-3 col-xs-4">

                </div>

            </div>



            <div class="row">
                <div class="col-xs-4 col-xs-12">

                </div>

                <div class="col-xs-6 col-xs-12">
                    <input type="submit" class="btn btn-primary-pur btn-round-lg" value="Submit" />
                </div>

                <div class="col-xs-2 col-xs-12">

                </div>
            </div>


        </form>

            <div class="row">



                <div class="col-xs-12 col-xs-12">
                    <div class="clear20"></div>	
                </div>
            </div>
        </div>
    </section>


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        





      









  


                        
                        
                        
                        
     
    
                   
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        

    
    
    
    
    
    
    
    

 

    <!--/#footer-->

    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    $(document).ready(function () {
    $('.navbar-collapse ul li a').on('click', function() { 
   
        $("#bs-example-navbar-collapse-1").attr("aria-expanded","false");
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



                                
                               var input = document.getElementById( 'file-input' );
                               var input1 = document.getElementById( 'file-input1' );
var infoArea = document.getElementById( 'file-upload-filename' );
var infoArea1 = document.getElementById( 'file-upload-filename1' );
input.addEventListener( 'change', showFileName );
//input1.addEventListener( 'change', showFileName1() );

function showFileName( event ) {
  
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
    
<!--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$("#myModal").modal('show');
	});
</script>
</body>
</html>