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

	<p>
<?php
	
			
			
			$i = $_SESSION['noofquestions'];
			$usn = $_SESSION['usn'];
			$course = $_SESSION['course'];
			@$a= array();
			$p = 1;
			while($p < $i){
				$a[$p]=$_POST['q'.$p.''];

				$query = "insert into coursefeedback values('$p','$course','$usn','$a[$p]')";
				$query_run = mysqli_query($con,$query);
				$p++;
			}
			
			echo '<script type="text/javascript">'; 
			echo 'alert("Thanks for the feedback!");'; 
			echo 'window.location.href = "studenthomepage.php";';
			echo '</script>';
			
			

	?>
		</p>
		
		
	
</body>
</html>