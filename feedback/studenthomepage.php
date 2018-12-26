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
		background-color: #4a689b
	}
	#main-wrapper{
		padding-left: 350px;
		padding-right: 350px;
	 background-color: rgba(255, 255, 255, 0.8);
	}
	#abc{
		margin-left:200px;
		margin-right:200px;
		padding-left:20px;
		padding-right:20px;
		
	}
	
	.sems{
	  display: grid;
	  grid-template-columns: auto auto auto;
	  background-color: #2196F3;
	  padding: 10px;
	}
	#hey{
		padding:20px 50px 20px 50px;
		font-size:20px;
		background-color:#4286f4;
	}
	
	.item {
  background-color: rgba(255, 255, 255, 0.8);
  border: 1px solid rgba(0, 0, 0, 0.8);
  padding: 20px;
  font-size: 30px;
  text-align: center;
	}
</style>



</head>
<body>
	<div id="main-wrapper">
		<center><h2>Welcome <?php echo $_SESSION['usn']; ?></h2>
		
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
		<p>
    <?php
		
		
		
		@$usn=$_SESSION['usn'];
		$query = "select semester from student where usn='$usn'";
					
		$query_run = mysqli_query($con,$query);
		if($query_run->num_rows>0)
						{
					while($row=$query_run->fetch_assoc()){
						@$semester=$row['semester'];	
						$_SESSION['studentsem'] = $semester;
						}
						
						
					echo '<div class = "col-sm-2" id="abc">';
					echo '<form action="semester.php" method="post"	align="center">';
					for($i = 1; $i < $semester; $i++){	
					
					
						echo '<div class ="item">';
						
						
						echo '<button id="hey" type="submit" name="sem" value = '.$i.'> Semester '.$i.' </button>';
						echo '</div>';
					
					
					}
					
					
					echo '</form>';	
					
					if($semester == 8){
						echo '<div class ="item">';
						echo '<a href="exitsurvey.php"><button id="hey" type="submit"> Exit Survey </button></a>';
						echo '</div>';
					}
					echo '</div>';
					}
					
					
				
			
				
	?>
		</p>
		
		
	
</body>
</html>