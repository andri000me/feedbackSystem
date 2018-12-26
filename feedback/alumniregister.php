<?php
	session_start();
	require 'dbconfig/config.php';
	//phpinfo();
?>
<!DOCTYPE html>
<html>
<head>
<title>Sign Up Page</title>
<link rel="stylesheet" href="css/style.css">
<style>
	body{
		background-color: #4a689b;
	}
</style>
</head>
<body >
	<div id="main-wrapper">
	<center><h2>Sign Up Form</h2></center>
		<form action="alumniregister.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<label><b>USN</b></label>
				<input type="text" name="usn" required>
				<label><b>Password</b></label>
				<input type="password" name="pass" required>
				<label><b>Confirm Password</b></label>
				<input type="password"  name="cpass" required>
				<label><b>First Name</b></label>
				<input type="text"  name="firstname" required>
				<label><b>Last Name</b></label>
				<input type="text"  name="lastname" required>
				<label><b>Email</b></label>
				<input type="email"  name="email" required>
				<label><b>Year of Graduation</b></label>
				<input type="text" name="year_of_grad" required>
				<label><b>Address</b></label>
				<input type="text" name="address" required>
				<label><b>Department</b></label>
				<input type="text" name="dname" required>
				<button name="register" class="sign_up_btn" type="submit">Sign Up</button>
				
				<a href="alumnilogin.php"><button type="button" class="back_btn"><< Back to Login</button></a>
			</div>
		</form>
		
		<?php
			if(isset($_POST['register']))
			{
				echo '<script type="text/javascript"> alert("Sign up button clicked") </script>';
				@$usn=$_POST['usn'];
				@$pass=$_POST['pass'];
				@$cpass=$_POST['cpass'];
				@$firstname=$_POST['firstname'];
				@$lastname=$_POST['lastname'];
				@$email=$_POST['email'];
				@$year_of_grad=$_POST['year_of_grad'];
				@$address=$_POST['address'];
				@$dname=$_POST['dname'];
				
				
				
				if($password==$cpassword)
				{
					$query = "select * from alumni where usn='$usn'";
					//echo $query;
				$query_run = mysqli_query($con,$query);
				//echo mysql_num_rows($query_run);
				if($query_run)
					{
						if(mysqli_num_rows($query_run)>0)
						{
							echo '<script type="text/javascript">alert("This username already exists.. Please try another username!")</script>';
						}
						else
						{
							$query = "insert into alumni values('$usn','$pass','$firstname','$lastname','$email','$year_of_grad','$address','$dname')";
							$query_run = mysqli_query($con,$query);
							if($query_run)
							{
								echo '<script type="text/javascript">alert("User Registered.. Welcome")</script>';
								$_SESSION['usn'] = $usn;
								$_SESSION['password'] = $password;
								header( "Location: facultyhomepage.php");
							}
							else
							{
								echo '<p class="bg-danger msg-block">Registration Unsuccessful due to server error. Please try later</p>';
							}
						}
					}
					else
					{
						echo '<script type="text/javascript">alert("DB error")</script>';
					}
				}
				else
				{
					echo '<script type="text/javascript">alert("Password and Confirm Password do not match")</script>';
				}
				
			}
			else
			{
			}
		?>
	</div>
</body>
</html>