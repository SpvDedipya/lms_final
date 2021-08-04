<?php
session_start(); 
include "connect.php";
$error="";
$msg="";
	if(isset($_POST["login"])){
    $username=$_POST["username"];
    $password=$_POST["password"];
    $sql1="SELECT * FROM `login` WHERE `username`='$username'";
    $query1=mysqli_query($conn,$sql1);
    $row1=mysqli_fetch_array($query1);
    if($row1["password"]==$password){
        session_start();
        $_SESSION["user"]=$row1["username"];
		$msg="Logged in successfully";
		header('location:./home.php') ;
		
    }
    else{
		$error="incorrect credentials";
		session_unset();
    }
}
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
	<!-- end of navbar -->
	<div class="container">
		<div class="row mx-auto mt-5">
			<div class="col-sm-7 col-md-7 col-lg-7 mx-auto">
				<div class="card mb-5 p-2 shadow rounded">
					<div class="card-body">
						<div class="row mt-5 mb-4">
							<h3 class="mx-auto"><?php $name=$_GET["name"]; echo $name ?> LOGIN</h3>
						</div>
						<form method="post">
							<div class="mb-3">
								<br>
                                <label for="formGroupExampleInput" class="form-label font-weight-bold text-dark">REGISTRATION ID :</label>
                                <input type="text" class="form-control shadow-none" id="formGroupExampleInput" placeholder="Registration ID"name="username" required>
                              </div>
                              <div class="mb-3">
                                <label for="formGroupExampleInput2" class="form-label font-weight-bold text-dark">PASSWORD :</label>
                                <input type="password" class="form-control shadow-none" id="formGroupExampleInput2" placeholder="Password" name="password" required>
                              </div>
							  <?php if($error!=""){ ?>
							 <div class="text-danger">
								 
								 <strong><i class="far fa-times-circle text-danger">&nbsp</i> 
								 <?php echo htmlentities($error); ?> </strong>
								</div><?php }else if($msg !=""){?><div class="text-success"><strong><i class="far fa-check-circle text-success">&nbsp</i><?php echo htmlentities($msg); ?> </strong></div>
								<?php }?>

                              <div class="row mt-5 mb-3 text-center">
                                  <div class="col-sm-3 mb-4 d-grid gap-2 mx-auto"><button class="btn" type="submit" name="login">SUBMIT</button></div>
                              </div>
							  
						  </form>
					</div>
				</div>
			</div>

		</div>
</div>
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

<!--================ LOGIN FORM ===================-->
<?php

?>
<!--*******************END LOGIN ***********************-->