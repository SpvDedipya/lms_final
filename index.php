<?php
include "connect.php";
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Required Meta Tags -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <meta name="description" content="We are committed to provoke mindsets towards self learningand  provide unlimited opportunities with redefined look.">
    <meta name="keywords" content="sac,aitam,aitamsac,aditya tekkali,aitam tekkali,Student Activity Center,Student Activity Center aitam,Aditya Institute of Technology and Management (AITAM College, Tekkali),Student Activity Center | AITAM">
    <meta name="author" content="Student Activity Center | AITAM">
	<title>Student Activity Center | AITAM</title>
	<!-- Favicon  -->
	<link rel="icon" href="assets/images/sac-favicon.png">
	<!-- CSS -->
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/styles.css" rel="stylesheet">
	<link href="assets/css/my_style.css" rel="stylesheet">
	<link href="assets/css/swiper.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<!-- fonts-->
	<link href="https://fonts.googleapis.com/css2?family=Artifika&family=Oldenburg&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="style.css">
	<style type="text/css">    
	
	</style>
</head>

<body data-spy="scroll" data-target=".fixed-top">
	<?php
	include "include/nav.php";
	?>
	<!-- end of navigation -->
	<section>
		<div class="row main"> 
            <div class="col-md">
                <div class="content">
                    <div class="contents">
               <h1>SAC LMS</h1>
               <p>Training platform designed to<br><br> help great teams grow</p>
               <div class="justify-content-center d-flex">
                   <div>
                       <button class="m-3 mentor"><a href="login.php?name=MENTOR">Mentor</a></button>
                   </div>
                   <div>
                    <button class="m-3 student"><a href="login.php?name=STUDENT">Student</a></button>
                   </div>
               </div>
               </div>
               </div>
            </div>
            <div class="col-md index">
                <img class="rounded mx-auto d-block img" src="assets/images/index.svg" width="70%">
            </div>
        </div>
	</section>
    
	<!-- Footer -->
	<?php
	include "include/footer.php";
	?>
	<!-- Footer -->
	<!-- Scripts -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/82b716bd33.js" crossorigin="anonymous"></script>
	<script src="assets/js/jquery.min.js"></script>
	<!-- jQuery for Bootstrap's JavaScript plugins -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- Bootstrap framework -->
	<script src="assets/js/my_script.js"></script>
	<script src="assets/js/scripts.js"></script>
	<!-- Custom scripts -->
	<script src="assets/js/jquery.easing.min.js"></script>
</body>

</html>