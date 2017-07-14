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
<div class ="cl">
 <?php
	 include("connect.php");
	  if(isset($_GET['id']))
	  {
		  $id=$_GET['id'];
		 $sel="select * from posts where post_id='$id'";
		 $run=mysqli_query($conn,$sel);
		 while($row=mysqli_fetch_array($run))
		 {
			 $post_id = $row['post_id'];
			 $post_title = $row['post_title'];
			 $post_date = $row['post_date'];
			  $post_author = $row['post_author'];
			  $post_keywords = $row['post_keywords'];
			  $post_content = $row['post_content'];
			  $post_image = $row['post_image'];
		 
		 ?>
		 <h2 style ="color:#34516B;">
		 <a href="pages.php?id=<?php echo $post_id;?>" style="text-decoration:none;color:#0c4b60;">
		 <?php echo $post_title?></a></h2>
		 
		 
		 <center><img src="images/<?php echo $post_image;?>" height="300" width="400" ></center>
		 
		 
		 <p class = "clp" style ="color:#781B02;"><?php echo $post_content;?></p>
		  
		 <pre style="width:auto;color:green;font-weight:bold;font-size:16px;">Post Author : <?php echo $post_author;?><br>Post Date : <?php echo $post_date;?></pre>
	 
	 
	  <?php } } ?>
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
