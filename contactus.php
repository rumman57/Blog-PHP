<?php
$err="";
$result="";
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel ="stylesheet" href="css/home.css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container-fluid">
<div class="row">
<div class="wrapper">
<?php include("includes/header.php")?>
<?php include("includes/menu.php")?>

<div class = "main_content">
<div class ="content_left">
<div class ="cl" style="height:;">
<?php
if(isset($_POST['send']))
{
	 $email_message="";
	$to="rumman142228@gmail.com";
	$name=$_POST['name'];
	$email=$_POST['email'];
	$subject=$_POST['subject'];
	$comments=$_POST['comments'];
	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		   $err = "Invalid email format"; 
		 }
		 
	function clean_string($string) {
 
      $bad = array("content-type","bcc:","to:","cc:","href");
 
      return str_replace($bad,"",$string);
 
    }
 
    $email_message .= "First Name: ".clean_string($name)."<br>";
    $email_message .= "\n\nEmail: ".clean_string($email)."<br>";
    $email_message .= "\n\nSubject: ".clean_string($subject)."<br>";
    $email_message .= "\n\nMessage: ".clean_string($comments)."<br>";	
    $email_message = wordwrap($email_message,70);
	$email_message = str_replace("\n.", "\n..", $email_message);
	$headers = "From: $name<$email> " . "\r\n" .
     "CC: somebodyelse@example.com";

	
	
	
	if($err=="")
	{
		if(mail($to,$subject,$email_message,$headers))
			echo $result="Email Sent Successfully. We will Contact You Shortly.";
	}
}
 ?>


 <h2>This is a free website. You guys always contact us..</h2>
 <h3 style="color:#34516b font-weight:bold;">Admin: </h3>
 <h4 style="line-height:30px;color:maroon;">
 Md. Raqibul Hasan Rumman<br>
 Styding "Computer Science & Telecommunication Engineering" at<br>
 Noakhali Science & Techonology University. 
 </h4><br><br>
  <center><img src="images/contact.jpeg" alt ="" height="200" width="500" /></center><br><br>
<form method ="post" action="<?php echo $_SERVER['PHP_SELF'] ?>" role="form" style="margin-left:15px;">
<div class="form-group">
<label style="">Name :</label>
<input style="width:350px;" type="text"  name="name" class="form-control" placeholder="Enter Name">
</div>
<div class="form-group">
<label>Email :</label>
<input style="width:350px;" type="text"  name="email" class="form-control" placeholder="Enter Email">
 <span style="color:red;"><?php echo $err;?></span>
</div>
<div class="form-group">
<label>Subject :</label>
<input  style="width:350px;" type="text"  name="subject" class="form-control" placeholder ="Enter Contact Subject">
</div>
<div class="form-group">
<label>Comments :</label>
<textarea style="width:400px;"  class="form-control" cols="20" rows="6" name="comments" ></textarea>
</div>
<input type="submit" value ="Send Now" class="btn btn-info" name="send"><br><br>

</form>
   <center><h2><?php echo $result;?></center>
 
</div>
</div>

 <?php include("includes/sidebar.php")?>
</div>

<div class = "footer_part">
 <?php include("includes/footer.php"); ?>
</div>
</div>


</div>
</div>

</body>

</html>
