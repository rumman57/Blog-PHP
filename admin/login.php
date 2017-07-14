<?php
session_start();
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
  <form class="form-inline" role="form" method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF'])?>">
   <div class="form-group">
    <label>Email address:</label>
    <input type="text" class="form-control" name="email" required>
  </div>
  <div class="form-group">
    <label>Password:</label>
    <input type="password" class="form-control" name="password" required>
  </div>
   <input type="submit" class="btn btn-success" name="sign_in" value="Sign In"><br>
  </form>
  <a href="register.php"><input type="submit" class="btn btn-danger" value="Sign Up Here"></a>
  </div>

  </div>
  <div class="right_side">
  <div class="right">
    <h1>Welcome To The Admin Panel<h2>
	<h4>
	  You can manage your post & all others things throught this admin panel.<br>
	  Through this panel U can do the following thing:<br>
	  1. View Your All posts.<br>
	  2. Delete Your posts.<br>
      3. Edit Your Posts.<br>
      4. Update Your Posts.<br>
      5. Insert New Posts etc.<br><br>	  
	</h4>
	  <h3>By signing in , you can manage your admin panel.</h3>
    
  </div>
  </div>
 </div>
 </div>
<?php
  include("connect.php");
    if(isset($_POST['sign_in']))
	{
		$email=$_POST['email'];  
		$password=$_POST['password'];   
		$check_user="select * from login WHERE user_email='$email' AND user_password ='$password'";  
	    $run=mysqli_query($conn,$check_user);  
	  
		if(mysqli_num_rows($run))  
		{  
			echo "<script>window.open('admin.php','_self')</script>";  
	  
			$_SESSION['email']= $email;//here session is used and value of $user_email store in $_SESSION.  
	  
		}  
		else  
		{  
		  echo "<script>alert('Email or Password is not correct')</script>";  
		}  
		
	}
 ?>
   
 
 
 
 
 
 
 
 
</div>
</body>

</html>