    <nav class  ="w3-sidebar w3-bar-block w3-card w3-top w3-xlarge w3-animate-left hmbgimg1" style="display:none;z-index:2;width:30%;min-width:180px" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()"
               class="w3-bar-item w3-button"><span style="padding-left: 90px"><img src="assets/bg/clse.png" height="50" width="50"/></span></a>
        <a href="Profile.jsp"  class="w3-bar-item "> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img id="image" src="assets/icons/profile.png" class="profile-img" />
            
            <%
            String studentNamepro=request.getSession().getAttribute("sname").toString().trim();
            %>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=studentNamepro %></p>
            </a>
            <a href="#" class="w3-bar-item w3-button"><img src="assets/menu/m1.png" height="30" width="150"/></a>
            <a href="#" class="w3-bar-item w3-button"><img src="assets/menu/m2.png" height="30" width="150"/></a>
            <a href="#" class="w3-bar-item w3-button"><img src="assets/menu/m3.png" height="30" width="150"/></a>
            <a href="#" class="w3-bar-item w3-button"><img src="assets/menu/m4.png" height="30" width="150"/></a>
            <a href="#" class="w3-bar-item w3-button"><img src="assets/menu/m5.png" height="30" width="150"/></a>
            <a href="#" class="w3-bar-item w3-button"><img src="assets/menu/m6.png" height="30" width="150"/></a>
            <a href="index.jsp" class="w3-bar-item w3-button"><img src="assets/menu/m7.png" height="30" width="150"/></a>
            <a href="PasswordChange" class="w3-bar-item w3-button">Change&nbsp;Password</a>
            <a href="index.jsp" class="w3-bar-item w3-button">Logout</a>
        </nav>