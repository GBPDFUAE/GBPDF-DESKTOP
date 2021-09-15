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
        
      
<style>
            table {
  border-collapse: collapse;
  border-left: 1px solid #bbbbbb;
  border-top: 1px solid #bbbbbb;
}
th, td {
  border-right: 1px solid #bbbbbb;
  border-bottom: 1px solid #bbbbbb;
}
.toggleButton {
  float: right;
}
.hiddenRow {
  display: none;
}
        </style>
    </head><!--/head-->

    <body id="home" class="homepage">

    <header id="header">
              <%@include file="SuccessMenu.jsp" %>
        </header>

    
 
        <section id="f2f" >
             <div class="container card">

            <div class="section-header">
                <div class="clear20"></div>	
                <h2 class="section-title text-center wow fadeInDown"> Attendance</h2>
                
                <!--                    <p class="text-center wow fadeInDown"> under Constrcution</p>-->
            </div
             </div>
            <div class="clear20"></div>
            
<%
 ArrayList<ArrayList> ques = (ArrayList<ArrayList>) request.getAttribute("attance");
%>
               <div class="row">
               
                   <div class="col-xs-12 col-xs-12">
                       <div style="overflow-x:auto;">
         <table class="table mb-0" id="table1">
                                            <thead >
                                                <tr id="tr1">
                                                   
                                                    <th>Date</th>
                                                    <th>Login</th>
 <th>Logout</th>
                                                </tr>
                                            </thead>
                                            <tbody>
 <%
 int j=1; 
                                                        for (int i = 0; i < ques.size(); i++) {

                                                            ArrayList data = ques.get(i);

j=j+(i+1);
                                                    %>
                                                     <tr id="tr<%=j%>">
                                                    
                                                    <td><%=data.get(2).toString()%></td>
                                                    <td><%=data.get(3).toString()%></td>
                                                    <td><%=data.get(4).toString()%></td>
                                                     </tr>
                                                    <%
                                                        }
                                                    %>
<!--                                                <tr>
                                                    <td>1</td>
                                                    <td>25-09-2020</td>
                                                    <td>
                                                        <table class="table mb-0">
                                                            <thead >
                                                                <tr>

                                                                    <th>Login Time</th>
                                                                    <th>Logout Time</th>

                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                 <tr>

                                                                    <td>11:50</td>
                                                                    <td>11:55</td>

                                                                </tr>
                                                                 <tr>

                                                                    <td>12:50</td>
                                                                    <td>1:55</td>

                                                                </tr>
                                                            </tbody>
                                                        </table>

                                                    </td>

                                                </tr>-->
                                            </tbody> 

                                        </table>
</div>
                       
                   </div>
               </div>
            
        </section>
        
        
        
    


        
        
        
        
        
        
        
        
        
        
        
        
        
        
        





      









  


                        
                        
                        
                        
     
    
                   
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        

    
    
    
    
    
    
    
    

 
    <section id="ctaf">
<!--        <footer id="footer">

            <div class="container">
                
                <div class="row">
                    <div class="col-xs-6 col-xs-6">
                       
                        <h5 style="color: #ffffff">COMPANY</h5>
                            <li class="scroll"><a href="#">About Us</a></li>
                            <li class="scroll"><a href="#get-in-touch">Contact Us</a></li>
                            <li class="scroll"><a href="#">Careers</a></li>
                            <li class="scroll"><a href="#">Cancellation &AMP Refund Policy</a></li>
                              <li class="scroll"><a href="#">PrivacyPolicy</a></li>
                            <li class="scroll"><a href="#">Teacher Login</a></li>


                       
                    </div>
                    <div class="col-xs-6 col-xs-6">
                        <h5 style="color: #ffffff">Quick Links</h5>
                        <li class="scroll"><a href="#home">Home</a></li>
                            <li class="scroll"><a href="#f2f">Face To Face</a></li>
                            <li class="scroll"><a href="#whykids">Why Teck Whizz</a></li>
                            <li class="scroll"><a href="#kidlrn">Crash Course</a></li>
                            <li class="scroll"><a href=#tution>Tution</a></li>
                            <li class="scroll"><a href="#askdubtl">Ask Doubt</a></li>
                            <li class="scroll"><a href="#teacher">Become a Teacher</a></li>
                             <li class="scroll"><a href="#counsling">Counselling</a></li>
                            <li class="scroll"><a href="LearMore.jsp">Learn More</a></li>
                                   
                             
                    </div>
                    <div class="col-xs-4 col-xs-6">
                        
                    </div>
                    <div class="clear10"></div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        &copy; 2020   <a target="_blank" href="$" title="Teck Learnings">Whistopia Learnings Private Limited</a>
                    </div>
                    <div class="col-sm-6">
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </footer>-->

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

     <script type="text/javascript">
                                            
                                            
                                            function groupByFirst(table) {

  // Add expand/collapse button
  function addButton(cell) {
    var button = cell.appendChild(document.createElement('button'));
    button.className = 'toggleButton';
    button.textContent = '+';
    button.addEventListener('click', toggleHidden, false);
    return button;
  }

  // Expand/collapse all rows below this one until next header reached
  function toggleHidden(evt) {
    var row = this.parentNode.parentNode.nextSibling;
    
    while (row && !row.classList.contains('groupHeader')) {
      row.classList.toggle('hiddenRow');
      row = row.nextSibling;
    }
  }
  
  // Use tBody to avoid Safari bug (appends rows to table outside tbody)
  var tbody = table.tBodies[0];

  // Get rows as an array, exclude first row
  var rows = Array.from(tbody.rows).slice(1);
  
  // Group rows in object using first cell value
  var groups = rows.reduce(function(groups, row) {
    var val = row.cells[0].textContent;
    
    if (!groups[val]) groups[val] = [];
    
    groups[val].push(row);
    return groups;
  }, Object.create(null));
  
  // Put rows in table with extra header row for each group
  Object.keys(groups).forEach(function(value, i) {

    // Add header row
    var row = tbody.insertRow();
    row.className = 'groupHeader';
    var cell = row.appendChild(document.createElement('td'));
    cell.colSpan = groups[value][0].cells.length;
    cell.appendChild(
      document.createTextNode(
        'Attendance  ' + table.rows[0].cells[0].textContent +
        ' (' + value + ') ' + groups[value].length + ' counts'
      )
    );
    var button = addButton(cell);

    // Put the group's rows in tbody after header
    groups[value].forEach(function(row){tbody.appendChild(row)});
    
    // Call listener to collapse group
    button.click();
  });
}

window.onload = function(){
  groupByFirst(document.getElementById('table1'));
}
    </script>
   
</body>
</html>