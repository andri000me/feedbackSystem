<?php
	session_start();
	require 'dbconfig/config.php';
	//phpinfo();
?>

<html>
	<head>
		<title>Admin</title>
		<link rel="stylesheet" href="css/style.css">
		<style>
			body {
				background-color: #85c19d;
			}
			

			#main-wrapper{
				padding-left: 500px;
				padding-right: 500px;
			
			}

			select {
		        width: 700px;
		        margin: 10px;
  		 	 }
		    select:focus {
		        min-width: 700px;
		        width: auto;
		    }   


		</style>
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

		
	</head>

	<body>
	<div id="main-wrapper">
		<center><h2>Welcome Admin</h2></center>
		
		<form action="index.php" method="post">
			<div class="imgcontainer">
				<img src="imgs/avatar.png" alt="Avatar" class="avatar">
			</div>
			<div class="inner_container">
				<button class="logout_button" type="submit">Log Out</button>	
			</div>
			
			<div align ="center">
			<a href="adminhomepage.php"><button type="button" class="back_btn">Back</button></a>
			</div>
			
			
		</form>
	</div>
		<center>
		<form action="adminalumni.php" method="post">
		<?php

			$query = "select qid, question from alumniquestion;";
					
			$query_run = mysqli_query($con,$query);
			if($query_run->num_rows>0)
					{
						
					
						echo '<div class = "col-sm-2" id="abc">';
						
							echo '<select name = "qid">';
							while($row=$query_run->fetch_assoc()){
								
							@$qid=$row['qid'];	
							@$question =$row['question'];
							echo '<option value ="'.$qid.'"> '.$question.'</option>';

							
						}
							echo '</select>';		
					
					echo '</div>';

					}

		?>
		<button class="login_button" name="check" type="submit">Check</button>
		</form>
		</center>
		
		<?php
			if(isset($_POST['check']))
			{

				
				@$qid=$_POST['qid'];
				$result=mysqli_query($con, "select question from alumniquestion where qid = ".$qid.";");
				$data=mysqli_fetch_assoc($result);
				@$question = $data['question'];

				echo '<center><h2>'.$question.'</h2></center>';

				$result=mysqli_query($con, "select count(*) as count from alumnifeedback where qid = ".$qid." and answer = 5");
				$data=mysqli_fetch_assoc($result);
				@$v5 = $data['count'];

				$result=mysqli_query($con, "select count(*) as count from alumnifeedback where qid = ".$qid." and answer = 4");
				$data=mysqli_fetch_assoc($result);
				@$v4 = $data['count'];

				$result=mysqli_query($con, "select count(*) as count from alumnifeedback where qid = ".$qid." and answer = 3");
				$data=mysqli_fetch_assoc($result);
				@$v3 = $data['count'];

				$result=mysqli_query($con, "select count(*) as count from alumnifeedback where qid = ".$qid." and answer = 2");
				$data=mysqli_fetch_assoc($result);
				@$v2 = $data['count'];

				$result=mysqli_query($con, "select count(*) as count from alumnifeedback where qid = ".$qid." and answer = 1");
				$data=mysqli_fetch_assoc($result);
				@$v1 = $data['count'];

				echo "<script type='text/javascript'>

				google.charts.load('current', {'packages':['corechart']});
				google.charts.setOnLoadCallback(drawChart);


				// Draw the chart and set the chart values
				function drawChart() {
				  var data = google.visualization.arrayToDataTable([
				  ['Rating', 'Number of people'],
				  ['Excellent',".$v5."],
				  ['Good',".$v4."],
				  ['Fair',".$v3."],
				  ['Bad',".$v2."],
				  ['Very Bad',". $v1."]
				]);

				  // Optional; add a title and set the width and height of the chart
				  var options = {'title':'', 'width':550, 'height':400};
				  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
				  chart.draw(data, options);
				}
		</script>";
				
			}
			else
			{

			}
		?>
	<center>
	<div id="piechart"></div>
</center>
	</body>

</html>