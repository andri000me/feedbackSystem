<?php

?>


<!DOCTYPE html>
<html>
<head>
	<title>Feedback Login</title>
	<style>
	
	a{
		text-decoration: none;
		font-size: 20px;
		color: black;
	}
		body{
			background-color: #4a689b;
		}
		.imag{
			margin-top: 15px;
		
			
		}
		
		#student{
			
			margin-top:25px;
			padding-top: 20px;
			padding-bottom: 20px;
			background-color: #cccccc;
			margin-left:430px;
			margin-right: 430px;
			border:1px solid black;
		}
		#alumni{
			padding-top: 20px;
			padding-bottom: 20px;
			background-color: #cccccc;
			margin-left:430px;
			margin-right: 430px;
			border:1px solid black;
		}
		#employer{
			padding-top: 20px;
			padding-bottom: 20px;
			background-color: #cccccc;
			margin-left:430px;
			margin-right: 430px;
			border:1px solid black;
		}
		
		#admin{
			
			margin-right:30px;
		}
	</style>
	
</head>

<body>
		<div align="right">
		<a href ="adminlogin.php" > <h3 id="admin">  Admin </h3> </a>
		</div>
	<div align=center class ='imag'>
	<img src="imgs/bmslogo.png">
	</div>
	
	
	<div >
	<h1 align=center> Feedback System </h1>
		<div align=center >
		<a href ="studentlogin.php"> <h3  id="student"> Student </h3> </a>
		</div>
		<br>
		<div align=center>
		<a href = "alumnilogin.php"> <h3  id="alumni"> Alumni </h3> </a>
		</div>
		<br>
		<div align=center>
		<a href = "employerlogin.php"> <h3 id="employer"> Employer </h3> </a>
		</div>
		
		
	</div>
	
</body>
</html>
