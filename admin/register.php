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

  <br><br>
  <a href ="login.php"><input type="submit" class="btn btn-success" value="Sign In"></a>
  </div>

  </div>
  <div class="right_side">
  <div class="right">
    <?php
  include("connect.php");
   $msg="";
    if(isset($_POST['register']))
	{
		$user=$_POST['user'];  
		$email=$_POST['email'];  
		$password=$_POST['password']; 
        $sel_email = "select * from login where user_email= '$email'";		
	    $run=mysqli_query($conn,$sel_email);  
	  
		if(mysqli_num_rows($run)==1)  
		{  
			echo "<script>alert('Email is already Registered')</script>";  
		}  
		else  
		{  
		  $check_user="insert into login (user_name,user_email,user_password) values ('$user','$email','$password')";
           if (mysqli_query($conn, $check_user))
			   {
				 $msg="Registration Successfully,Sign-In Now";
			   } 		  
		}  
		
	}
 ?>
   
	  <h1 style="color:maroon;">Register Here</h1><br><br>
     <form  role="form" method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>">
	 <div class="form-group">
    <label>User Name:</label>
    <input style="width:250px;" type="text" class="form-control" name="user" required >
  </div>
   <div class="form-group">
    <label>Email Address:</label>
    <input  style="width:250px;" type="text" class="form-control" name="email" required>
  </div>
  <div class="form-group">
    <label>Password:</label>
    <input style="width:250px;" type="password" class="form-control" name="password" required>
  </div>
   <input type="submit" class="btn btn-danger" name="register" value="Sign In">

  </form><br>
        <h2><?php echo $msg;?></h2>
  </div>
  </div>
 </div>
 </div>
</div>
</body>

</html>