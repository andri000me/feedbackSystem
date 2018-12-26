<html>
	<head>
		<title>Admin</title>
		<link rel="stylesheet" href="css/style.css">
		<style>
			body {
				background-color: #85c19d;
			}

			a {
				text-decoration: none;
				font-size: 20px;
				color: black;
			}


			#main-wrapper{
				padding-left: 350px;
				padding-right: 350px;
		 		background-color: rgba(255, 255, 255, 0.8);
			}

			#course{
			
			margin-top:25px;
			padding-top: 20px;
			padding-bottom: 20px;
			background-color: #cccccc;
			margin-left:430px;
			margin-right: 430px;
			border:1px solid black;
			}
		
			#exit{
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
		</style>
	</head>
	<body>

		<div id="main-wrapper">
		<center><h2>Welcome Admin</h2>
		
		<form action="index.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<button class="logout_button" type="submit">Log Out</button>	
			</div>
			
		</form>
		</center>
	</div>

		<div align=center >
		<a href ="admincourse.php"> <h3  id="course"> Courses Feedback</h3> </a>
		</div>
		<br>
		<div align=center >
		<a href ="adminexit.php"> <h3  id="exit"> Exit Survey </h3> </a>
		</div>
		<br>
		<div align=center>
		<a href = "adminalumni.php"> <h3  id="alumni"> Alumni Feedback</h3> </a>
		</div>
		<br>
		<div align=center>
		<a href = "adminemp.php"> <h3 id="employer"> Employer Feedback</h3> </a>
		</div>
	</body>
</html>