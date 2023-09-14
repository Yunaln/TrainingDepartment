<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style.css" /> 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
	body{
		background-color: lightblue;
	}
	.form-container{
		background: fff;
		padding: 30px;
		border-radius: 10px;
		box-shadow: 0px 0px 10px 0px #100;
	}
	footer {  
 background: rgb(9, 95, 234);  
  color: black;  
  margin-top:100px;  
}  
footer a {  
  color: #fff;  
  font-size: 14px;  
  transition-duration: 0.2s;  
}  
footer a:hover {  
  color: #FA944B;  
  text-decoration: none;  
}  
.copy {  
  font-size: 12px;  
  padding: 10px;  
  border-top: 1px solid #FFFFFF;  
}  
.footer-middle {  
  padding-top: 2em;  
  color: white;  
}  
ul.social-network {  
  list-style: none;  
  display: inline;  
  margin-left: 0 !important;  
  padding: 0;  
}  
ul.social-network li {  
  display: inline;  
  margin: 0 5px;  
}  
    
.social-circle li a {  
  display: inline-block;  
  position: relative;  
  margin: 0 auto 0 auto;  
  -moz-border-radius: 50%;  
  -webkit-border-radius: 50%;  
  border-radius: 50%;  
  text-align: center;  
  width: 30px;  
  height: 30px;  
  font-size: 15px;  
}  
.social-circle li i {  
  margin: 0;  
  line-height: 30px;  
  text-align: center;  
}  
.social-circle li a:hover i  
{  
  -moz-transform: rotate(360deg);  
  -webkit-transform: rotate(360deg);  
  -ms--transform: rotate(360deg);  
  transform: rotate(360deg);  
  -webkit-transition: all 0.2s;  
  -moz-transition: all 0.2s;  
  -o-transition: all 0.2s;  
  -ms-transition: all 0.2s;  
  transition: all 0.2s;  
}  
.triggeredHover {  
  -moz-transform: rotate(360deg);  
  -webkit-transform: rotate(360deg);  
  -ms--transform: rotate(360deg);  
  transform: rotate(360deg);  
  -webkit-transition: all 0.2s;  
  -moz-transition: all 0.2s;  
  -o-transition: all 0.2s;  
  -ms-transition: all 0.2s;  
  transition: all 0.2s;  
}  
.social-circle i {  
  color: #595959;  
  -webkit-transition: all 0.8s;  
  -moz-transition: all 0.8s;  
  -o-transition: all 0.8s;  
  -ms-transition: all 0.8s;  
  transition: all 0.8s;  
}  
.social-network a {  
  background-color: #F9F9F9;  
}  
..social-network a:hover {  
background: #ff304d;  
}
.bg-image{
background-image: url("a4.jpg");
  background-repeat: no-repeat;
  background-size: cover;
}
h3{
color: white;
}
p{
color: white;
}
.course-list{
color: white;
}
</style>
<body class="bg-image" >
<!-- Start of Navigation section-->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Training Department Course</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="justify-content-end navbar-collapse" id="collapsibleNavbarRegister">
      <form class="d-flex">
        <a class="btn btn-dark btn-sm" href="index.jsp" role="button">Home</a>
      </form>
       <form class="d-flex">
        <a class="btn btn-dark btn-sm" href="RegistrationServlet" role="button">Register</a>
      </form>
</div> 
</nav>
<!-- End of Navigation section-->
<br><br><br><br>
<h3 style="text-align: center;">Welcome To Our Training Department</h3>
<div class="container my-5">
  <div class="row">
    <div class="col-lg-6">
      <img class="w-100 shadow" src="images/a1.jpg" />
    </div>
    <div class="col-lg-6">
      <div class="p-1 mt-1">
        <p>"Welcome to your new campus! We look forward to serving you the best education you need to fulfill your dreams! Our institution welcomes you! We will make sure that we will have the support and encouragement you as you embark on your academic journey with us"</p>
         <p><strong>Schedule</strong><br>
      Morning session (9 AM - 11 AM) <br>
      Afternoon session (12 PM - 2 PM) <br>
      Evening session (3 PM - 5 PM)
      </p>
      <div class="course-list">
        <p><b>Courses:</b></p>
        <ul class="gg">
          <li>Java(Morning)</li>
          <li>Python(Afternoon)</li>
          <li>JavaScript(Evening)</li>
          <li>Ruby(Afternoon)</li>
          <li>Java(Evening)</li>
          <li>Python(Morning)</li>
          <li>JavaScript(Afternoon)</li>
        </ul>
         
          <a href="RegistrationServlet" class="btn btn-primary" style="text-align =center">Register</a>
        </div>
    </div>
</div>
</div>
</div>
<!--Start Footer Section -->
<footer class="bg-dark text-dark pt-5 pb-4">
  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-6" style="font-size :50%">
      <a href="index.jsp">Training Department Course</a>
      </div>
      <div class="col-sm-6" style="text-align: center;">
        <h4 class="text-warning">Follow Us On>>  <a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook-official" style="font-size:36px"></i></a>
        <a href="https://www.instagram.com" target="_blank"><i class="fa fa-instagram" style="font-size:36px"></i></a>
        <a href="https://www.instagram.com" target="_blank"><i class="fa fa-linkedin" style="font-size: 36px;"></i></a> 
      </h4><br>
             </div>
    </div>  
  </div>
</footer> 
<!--End Footer Section -->
</body>
</html>