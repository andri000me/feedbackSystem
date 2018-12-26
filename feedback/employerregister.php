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
<body style="background-color: #4a689b">
	<div id="main-wrapper">
	<center><h2>Sign Up Form</h2></center>
		<form action="employerregister.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<label><b>Email</b></label>
				<input type="email" name="email" required>
				<label><b>Password</b></label>
				<input type="password" name="pass" required>
				<label><b>Confirm Password</b></label>
				<input type="password"  name="cpass" required>
				<label><b>First Name</b></label>
				<input type="text" name="fname" required>
				<label><b>Last Name</b></label>
				<input type="text" name="lfname" required>
				
				<label><b>Company Name</b></label>
				<input type="text" name="companyname" required>
				<label><b>Company Address</b></label>
				<input type="text" name="companyaddress" required>
				<button name="register" class="sign_up_btn" type="submit">Sign Up</button>
				
				<a href="employerlogin.php"><button type="button" class="back_btn"><< Back to Login</button></a>
			</div>
		</form>
		
		<?php
			if(isset($_POST['register']))
			{
				echo '<script type="text/javascript"> alert("Sign up button clicked") </script>';
				@$email=$_POST['email'];
				@$pass=$_POST['pass'];
				@$cpass=$_POST['cpass'];
				@$fname=$_POST['fname'];
				@$lname=$_POST['lname'];
				
				@$companyname=$_POST['companyname'];
				@$companyaddress=$_POST['companyaddress'];
				
				
				if($pass==$cpass)
				{
					$query = "select * from employer where email='$email';";
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
							$query = "insert into employer values('$email','$pass','$fname','$lname','$companyname')";
							$cquery = "insert into company values('$companyname','$companyaddress')";
							$query_run = mysqli_query($con,$query);
							$cquery_run = mysqli_query($con, $cquery);
							if($query_run && cquery_run)
							{
								echo '<script type="text/javascript">alert("User Registered.. Welcome")</script>';
								$_SESSION['email'] = $email;
								$_SESSION['pass'] = $pass;
								$_SESSION['cname']=$companyname;
								header( "Location: employerhomepage.php");
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
		<p>
	</div>
</body>
</html>