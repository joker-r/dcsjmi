<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Department of computer science</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="profile.css">    
   <link rel="stylesheet" type="text/css" href="/Placement_Webiste/js/rs-plugin/css/settings.css" media="screen">
  <link rel="stylesheet" type="text/css" href="/Placement_Webiste/css/isotope.css" media="screen">
  <link rel="stylesheet" href="/Placement_Webiste/css/flexslider.css" type="text/css">
  <link rel="stylesheet" href="/Placement_Webiste/js/fancybox/jquery.fancybox.css" type="text/css" media="screen">
  <link rel="stylesheet" href="/Placement_Webiste/css/bootstrap.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700">
    

  <link rel="stylesheet" href="/Placement_Webiste/css/style.css">
  <!-- skin -->
  <link rel="stylesheet" href="/Placement_Webiste/skin/default.css">
<style>
.dropdown-menu {
    position:static;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 2px 0 0;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0, 0, 0, .15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
    box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
}
</style>
</head>
 
<body>

 <!-- navbar   --> 

  
  
  <div class="navbar navbar-fixed-top" role="navigation" data-0="line-height:100px; height:100px; background-color:rgba(0,0,0,0.3);" data-300="line-height:60px; height:60px; background-color:rgba(5, 42, 62, 1);">
    <div class="container">
    
      <div class="navbar-header">
      
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
      	  <span class="fa fa-bars color-white"></span>
        </button>
        <div class="navbar-logo">
          <a href="index.html"><img data-0="width:70px;" data-300=" width:50px;" src="/Placement_Webiste/img/imges/logo3.png" alt="jamia logo" style="margin-top:-2px;"></a>
        </div>
      </div>
      <div class="navbar-collapse collapse">
        
        <ul class="nav navbar-nav" data-0="margin-top:20px;" data-300="margin-top:5px;">
          <li class="active"><a href="/Placement_Webiste/index.html">Home</a></li>
          <li><a href="/Placement_Webiste/index.html#section-Alumni">Alumni</a></li>
           <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Profiles<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li role="separator" class="divider"></li>
            <li><a href="/Placement_Webiste/profileCards/ProfileCardStudent.html">Student Profile</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Teacher Profile</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Alumni profile</a></li>
          </ul>
        </li>    
        
          <li><a href="/Placement_Webiste/index.html#section-works">College Events</a></li>
          <li><a href="/Placement_Webiste/index.html#about">About</a></li>
          <li><a href="/Placement_Webiste/index.html#section-contact">Contact</a></li>
         
        </ul>
      </div>
  
      <!--/.navbar-collapse -->
    </div>
  </div>

     <br> 
    <br> 
    
     
 <!-- navbar   --> 
    <% String name=request.getParameter("name");%>

 <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12246881"
         user = "sql12246881"  password = "dYNptIAmes"/>
          <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from placement where name='<%=name%>';
      </sql:query>
 
    
    
<!-- middle section   -->     
<div class="container">   
 
  <div class="middle">

<!------------ profile------------->    
    <div class="row"> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br>  <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br>  <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    <br> 
    
     <div class="col-lg-4" id="profilepart1">
      <c:forEach var = "row" items = "${result.rows}">
       <img src="<c:out value = "${row.image}"/>" alt="map" width="240" height="250" id="profilepic">    
         </c:forEach>
         <div class="personaleDetail" style="padding-top:40px;">
        
             Personal Detail ------------------------<br>
              <c:forEach var = "row" items = "${result.rows}">
             <span><b>Birthday</b></span>  <span>:<c:out value = "${row.DateOfBirth}"/></span><br>
             <span><b>Gender</b></span>  <span>:<c:out value = "${row.gender}"/></span><br>
             <span><b>Current location</b></span>:<span><c:out value = "${row.CurrentLocation}"/></span><br>
             <span><b>Marital Status</b></span>  <span>:Single</span><br>
           </c:forEach>
         </div> 
         
         
         <div class="personaleDetail" style="" id="contactheading">
              Contact Detail -------------------------<br>
               <c:forEach var = "row" items = "${result.rows}">
              <img src="icons/smartphone.png" alt="smartphonelogo1" name="logo1" id="logo1"><span><c:out value = "${row.Mobile}"/></span><br>
              &nbsp;<img src="icons/linkdein1.png" alt="linkedinlogo" name="logo1" id="logo2"><a href="<c:out value = "${row.LinkedinProfileLink}"/>"><span><c:out value = "${row.LinkedinProfileLink}"/></span></a><br> 
              
        </c:forEach>
         </div>  
           
        </div>     
    <div class="col-lg-8" id="profilepart2">
          <div class="row">
            <br> 
   
           <c:forEach var = "row" items = "${result.rows}">
              <h1> <span><c:out value = "${row.name}"/></span></h1><span><i style="color:blue;"><c:out value = "${row.CurrentLocation}"/></i></span><br> 
              <span style="font-size:18px;"><b>Graduation</b></span> <span style="padding-left:5px;"><c:out value = "${row.Graduation}"/></span><br>
              <span style="font-size:18px;"><b>Pursuing:</b></span> <span style="padding-left:5px;">Master Of Computer Science</span>
         </c:forEach>
            </div>
        
        <div class="row" style="padding-top:30px;"> 
           Acadmics-------------------------------------- 
            <h4><b>Educational Detail</b></h4>
            <c:forEach var = "row" items = "${result.rows}">
            <p style="" id="detailheadings" >1.<c:out value = "${row.Graduation}"/> </p>
            <p id="detailheadings">2.<c:out value = "${row.XIIth}"/> </p>
            <p id="detailheadings">3.<c:out value = "${row.Xth}"/> </p>
            
      </c:forEach>
        </div> 
        <div class="row" style="padding-top:20px;"> 
            <c:forEach var = "row" items = "${result.rows}">
            <h4><b>Programming Language</b></h4>
            <p id="detailheadings"><c:out value = "${row.ProgrammingLanguage}"/> </p>
            <h4><b>Database</b></h4>
            <p id="detailheadings"><c:out value = "${row.Databas}"/> </p>
               <h4> <b> Tools:</b></h4>
            <p id="detailheadings"><c:out value = "${row.Tools}"/> </p>
            </c:forEach>
            </div>
           <div class="row" style="padding-top:20px;"> 
            Other--------------------------------------
              <c:forEach var = "row" items = "${result.rows}">
               <h4 id=""><b>Achievments</b></h4>
        
            <p id="detailheadings"><c:out value = "${row.Achievement}"/> 
             </p>
               <h4 id=""><b>Area of Interest</b>:</h4>   
               <p id="detailheadings"><c:out value = "${row.AreaOfInterest}"/> </p>
               <h4 id=""><b>Hobbies:</b></h4>   
               <p id="detailheadings"><c:out value = "${row.Hobbies}"/> </p>
       </c:forEach>
        </div>
              
    </div>  
      </div> 
</div>    
      
</div>
    
 <!-- middle section -->  


    
<!-- footer  -->     
<footer class="footer1">
<div class="row">
    
<div class="col-lg-4">
 <h2 class="font-weight-bold text-uppercase mt-3 mb-4">Our location</h2>      
<img src="icons/map1.png" alt="map" width="300" height="220">    
</div>
    
 <!-- Contact us -->   
<div class="col-lg-4">
  <h2 class="font-weight-bold text-uppercase mt-3 mb-4">Contact us</h2>  
   <form action="" method="" class="form-group">
    <input type="text" name="email" class="form-control" placeholder="Your Email address">
    <div class="form-group">
       <label for="comment">Message:</label>
       <textarea class="form-control" rows="5" id="comment" placeholder="Write Your Message"></textarea>
       <button type="submit" class="btn btn-primary btn-md" name="sendMeassage" id="sendMessage" > Send Message</button>   
    </div>
 </form>
</div>  
 <!-- Contact us -->     


    
    
    
<!-- Student coordinators --> 
<div class="col-lg-4" id="coordinators">
    <h3 class="font-weight-bold text-uppercase mt-3 mb-4">Student coordinators</h3> 
    <div class="row" >
      <div class="col-lg-2">    
        <img src="icons/coordinators.png" alt="map" width="70" height="70">
         </div>
        <div class="col-lg-2" id="coordinator1">    
          <span>Coordinator1 </span>
          <span  >+919089786790</span>
        </div>
    </div>
    
    <div class="row" >
      <div class="col-lg-2">    
        <img src="icons/coordinators.png" alt="map" width="70" height="70">
         </div>
        <div class="col-lg-2" id="coordinator1">    
          <span>Coordinator1 </span>
          <span  >+919089786790</span>
        </div>
    </div>
    
    <div class="row" >
      <div class="col-lg-2">    
        <img src="icons/coordinators.png" alt="map" width="70" height="70">
         </div>
        <div class="col-lg-2" id="coordinator1">    
          <span>Coordinator1 </span>
          <span  >+919089786790</span>
        </div>
    </div>
</div> 
<!-- Student coordinators --> 
</div>

<!-- footer -->     
    

<!-- horizontal line -->  
     <hr class="clearfix w-100 d-md-none">
<!-- horizontal line -->  
    

<!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="https://mdbootstrap.com/bootstrap-tutorial/"> Department Of Computer Science</a>
  </div>
<!-- Copyright -->
    </footer>    
</body>
</html>
