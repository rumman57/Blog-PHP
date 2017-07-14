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
  <center><h2 style="color:black;">Here Are Your All Posts</h2>
  <table class="table table-bordered">
   <tr style="color:green;" class="success">
	 <th>Post ID</th>
	 <th>Post Title</th>
	 <th>Post Date</th>
	 <th>Post Image</th>
	 <th><center>Post Author</center></th>
	 <th>Post Keywords</th>
	 <th><center>Post Content</center></th>
	 <th>Delete</th>
	 <th>Edit</th>
	</tr>
	<?php
	include("connect.php");
	$sel="select * from posts order by 1 DESC";
	$run=mysqli_query($conn,$sel);
	while($row=mysqli_fetch_array($run))
	{
		$post_id=$row['post_id'];
		$post_title=$row['post_title'];
		$post_date=$row['post_date'];
		$post_image=$row['post_image'];
		$post_author=$row['post_author'];
		$post_keywords=$row['post_keywords'];
		$post_content=substr($row['post_content'],0,200);
	?>
	<tr style="text-align:center; text-align:justify;" class="warning">
	   <td><?php echo $post_id;?></td>
	   <td><?php echo $post_title;?></td>
	   <td><?php echo $post_date;?></td>
	   <td><img src="../images/<?php echo $post_image;?>" height="80" width="80"></td>
	   <td><?php echo $post_author;?></td>
	   <td><?php echo $post_keywords;?></td>
	   <td><?php echo $post_content;?></td>
	   <td><a href="delete.php?del=<?php echo $post_id;?>">Delete</a></td>
	   <td><a href="edit.php?edit=<?php echo $post_id;?>">Edit</a></td>
	</tr>
	<?php }?>
  
  </table>
 </div>
 </div>


</div>

</body>

</html>