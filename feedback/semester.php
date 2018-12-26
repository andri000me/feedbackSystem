<?php
	session_start();
	require 'dbconfig/config.php';
	//phpinfo();
?>
<!DOCTYPE html>
<html>
<head>
<title>Courses</title>
<link rel="stylesheet" href="css/style.css">
<style>
	body{
		background-color: #4a689b;
	}

	#main-wrapper{
		padding-left: 350px;
		 background-color: rgba(255, 255, 255, 0.8);
		padding-right: 350px;
	
	}
	

	#abc{
		margin-left:200px;
		margin-right:200px;
		padding-left:20px;
		padding-right:20px;
		
	}
	#hey{
		padding:20px 50px 20px 50px;
		font-size:20px;
		background-color:#4286f4;
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
</style>
<script type="text/javascript">
	function abc(cid){
		<?php
			$_SESSION['cid'] = $cid;
		?>
	}
</script>


</head>
<body>
	<div id="main-wrapper">
		<center><h2>Welcome <?php echo $_SESSION['usn']; ?></h2></center>
		
		<form action="index.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<button class="logout_button" type="submit">Log Out</button>	
			</div>
			<div align ="center">
			<a href="studenthomepage.php"><button type="button" class="back_btn">Back</button></a>
			</div>
			
		</form>
	</div>
		<p>
    <?php
		
		
	
		@$usn = $_SESSION['usn'];
		
		@$semester = $_POST['sem'];
		
		
		$query = "select cid, cname from course where semester=".$semester.";";
					
		$query_run = mysqli_query($con,$query);
		if($query_run->num_rows>0)
					{
						
					
						echo '<div class = "col-sm-2" id="abc">';
						echo '<form method="post" action="course.php">';
						
							while($row=$query_run->fetch_assoc()){
							@$cid=$row['cid'];	
							@$cname=$row['cname'];
							echo '<div class ="item">';
							echo '<button id = "hey" type="submit" name="course" value ="'.$cid.'"> '.$cid.': '.$cname.'</button>';
							echo '</div>';
						}
					
						
						
						
					
					echo '</form>';	
					echo '</div>';
					}
				
				
	?>
		</p>
		
		
	
</body>
</html>