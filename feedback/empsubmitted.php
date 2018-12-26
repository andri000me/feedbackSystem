<?php
	session_start();
	require 'dbconfig/config.php';
	//phpinfo();
?>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
<link rel="stylesheet" href="css/style.css">
<style>

	body{
		background-color: #4a689b;
	}
	#main-wrapper{
		padding-left: 350px;
		padding-right: 350px;
		
	
	}
	
	.sems{
	  display: grid;
	  grid-template-columns: auto auto auto;
	  background-color: #2196F3;
	  padding: 10px;
	}
	
	.item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid rgba(0, 0, 0, 0.8);
  padding: 20px;
  font-size: 30px;
  text-align: center;
	}
	
	
   .questions{
	   margin-top: 50px;
	   
   }
}
</style>



</head>
<body>

	<br><br><br><br><br>
	<div id="main-wrapper">
		<form action="index.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<button class="logout_button" type="submit">Log Out</button>	
			</div>
			
			
		</form>

		<center><h2>Thank You For Your Feedback <?php echo $_SESSION['email']; ?></h2></center>
		
		
	</div>
	<p>
<?php
	
			
			
			$i = $_SESSION['noofquestions'];
			$email = $_SESSION['email'];
			
			@$a= array();
			$p = 1;
			while($p < $i){
				$a[$p]=$_POST['q'.$p. ''];

				$query = "insert into empfeedback values('$p','$email','$a[$p]')";
				$query_run = mysqli_query($con,$query);
				$p++;
			}
			
			

	?>
		</p>

		
		
	

		
	
</body>
</html>