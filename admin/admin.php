<?php
 session_start();
 if(!$_SESSION['email'])
 {
	 header("Location:login.php");
 }
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel ="stylesheet" href="admin.css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div class="container-fluid">
 <div class="wrapper">
 <div class="header_part">
  <img src="../images/10.jpeg" alt="">
 </div>
 <div class="maincontent_part">
  <div class="left_sidebar">
   <div class="left">

   
  <br><br><br>
  
  <a href ="view_post.php"><input type="submit" class="btn btn-success" value="View All Posts"></a><br>
  <a href="insert_post.php"><input type="submit" class="btn btn-success" value="Insert New Posts"></a><br>
   <a href = "logout.php"><input type="submit" class="btn btn-danger" value="Log Out"></a><br>
  </div>

  </div>
  <div class="right_side">
  <div class="right">
  <?php
	  if(!$_SESSION['email'])
	 {
		 echo "<h1>Welcome To The Admin Panel<h2>";
	 }
	 else
	 {
		  echo "<h1>Welcome-<h1>"."<h2>".$_SESSION['email']."<h2>";
	 }
  
  ?>
    
	<h4>
	  You can manage your post & all others things throught this admin panel.<br>
	  Through this panel U can do the following thing:<br>
	  1. View Your All posts.<br>
	  2. Delete Your posts.<br>
      3. Edit Your Posts.<br>
      4. Update Your Posts.<br>
      5. Insert New Posts etc.<br><br>	  
	</h4>
	  <h3>By clicking the left side buttons you can manage your admin panel.</h3>
    
  </div>
  </div>
 </div>
 </div>


</div>

</body>

</html>