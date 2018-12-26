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
		padding-left: 500px;
		padding-right: 500px;
	
	}
	.container{
		margin-left: 340px;
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


	<div id="main-wrapper">
		<center><h2>Welcome <?php echo $_SESSION['email']; ?></h2></center>
		
		<form action="index.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<button class="logout_button" type="submit">Log Out</button>	
			</div>
			
			<div align ="center">
			<a href="index.php"><button type="button" class="back_btn">Back</button></a>
			</div>
			
			
		</form>
	</div>
	
	<?php
	@$cname = $_SESSION['cname'];
	@$no_of_questions;
	echo  '<h2>';
	echo 'Employee Feedback <br>';
	echo 'Company Name: ';
	echo $cname;
	echo '</h2>';


	echo '<p>';
    echo '<div class ="container">';
		
		
	
		@$email = $_SESSION['email'];
		
		
		$query = "select qid, question from empquestion;";
		$query_run = mysqli_query($con,$query);
		@$i=1;
		echo '<div class="questions">';
		echo '<form method="post" action="empsubmitted.php">';
while($row = mysqli_fetch_array($query_run))
{
   
		
		echo '<h3>';
		echo $row['qid'];
		echo '.  ';
		echo $row['question'];
		echo '</h3>';
		echo '<div>';
		echo '<input type="radio" name="q'.$i.'" value="5" checked="checked"> Excellent<br>';
		echo '<input type="radio" name="q'.$i.'" value="4"> Good<br>';
		echo '<input type="radio" name="q'.$i.'" value="3"> Fair<br>';
		echo '<input type="radio" name="q'.$i.'" value="2"> Bad<br>';
		echo '<input type="radio" name="q'.$i.'" value="1"> Very Bad';
		echo '<br>';
		echo '</div>';
		
		$i++;
		
		
}



$_SESSION['noofquestions'] = $i;


echo '<br><br>';

echo '<a href = "empsubmitted.php"> <button name="submit" class="login_button" style="width:300px; margin-left:200px;" type="submit">Submit</button> </a>';

echo '</form>';
echo '</div>';
	
	echo '</div>';
				
	?>
		</p>
		
		
	
</body>
</html>