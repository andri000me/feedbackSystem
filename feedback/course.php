<?php
	session_start();
	require 'dbconfig/config.php';
	//phpinfo();
?>
<!DOCTYPE html>
<html>
<head>
<title>Feedback</title>
<link rel="stylesheet" href="css/style.css">
<style>
	body{
		background-color: #4a689b;
	}

	#main-wrapper{
		padding-left: 500px;
		padding-right: 500px;
	
	}
	
	
   .questions{
	   margin-top: 50px;
	  
   }
}
</style>



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
	
	<?php
	
	@$course = $_POST['course'];
	@$usn = $_SESSION['usn'];
	@$no_of_questions;
	echo  '<h2 align="center">';
	echo 'Course Feedback <br>';
	echo 'Course ID: ';
	echo $course;
	echo '<br>';
	
	$isgiven =  "select * from coursefeedback where usn = '$usn' and cid= '$course'";
	$isgiven_run = mysqli_query($con, $isgiven);
	
	if(mysqli_num_rows($isgiven_run)>0){
			echo '<script type="text/javascript">alert("You have already given feedback for this course!") </script>';
			
	} else {
	
	$coursenamequery = "select cname from course where cid = '$course';";
	$coursenamequery_run = mysqli_query($con, $coursenamequery);
	while($row=$coursenamequery_run->fetch_assoc()){
			@$coursename = $row['cname'];
	}
	echo 'Course Name: ';
	echo $coursename;
	echo '</h2>';

	echo '<p>';
    
		
		
	
		@$usn = $_SESSION['usn'];
		
		
		$query = "select qid, question from coursequestion where cid='".$course."';";
		$query_run = mysqli_query($con,$query);
		@$i=1;
		echo '<div class="questions" >';
		echo '<form method="post" action="aftercourse.php">';
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
$_SESSION['course'] = $course;
		
		

echo '<br><br>';
//echo '<a href = "aftercourse.php"> <button name="submit" type="submit">Submit</button> </a>';
echo '<button name="submit" class="login_button" type="submit">Submit</button>';
echo '</form>';
echo '</div>';
	
	}			
	?>
		</p>
		
		
	
</body>
</html>