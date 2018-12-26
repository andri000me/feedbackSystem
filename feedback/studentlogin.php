<?php
	session_start();
	require 'dbconfig/config.php';
	//phpinfo();
?>

<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #4a689b">
	<div id="main-wrapper">
	<center><h2>Student Login Form</h2></center>
			
		<form action="studentlogin.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<label><b>USN</b></label> 
				<input type="text"  name="usn" required> <br/><br/>
				<label><b>Password</b></label>
				<input type="password"  name="pass" required>
				<button class="login_button" name="login" type="submit">Login</button>
				<a href="studentregister.php"><button type="button" class="register_btn">Register</button></a>
				<a href="index.php"><button type="button" class="back_btn">Back</button></a>
			</div>
		</form>
		
		<?php
			if(isset($_POST['login']))
			{
				@$usn=$_POST['usn'];
				@$pass=$_POST['pass'];
				$query = "select * from student where usn='$usn' and pass='$pass';";
				//echo $query;
				$query_run = mysqli_query($con,$query);
				//echo mysql_num_rows($query_run);
				if($query_run)
				{
					if(mysqli_num_rows($query_run)>0)
					{
					$row = mysqli_fetch_array($query_run,MYSQLI_ASSOC);
					
					$_SESSION['usn'] = $usn;
					$_SESSION['pass'] = $pass;
					
					
					
					header( "Location: studenthomepage.php");
					}
					else
					{
						echo '<script type="text/javascript">alert("No such User exists. Invalid Credentials")</script>';
					}
				}
				else
				{
					echo '<script type="text/javascript">alert("Database Error")</script>';
				}
			}
			else
			{
			}
		?>
		
	</div>
</body>
</html>