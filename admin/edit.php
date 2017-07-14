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
  <a href = "admin.php"><input type="submit" class="btn btn-success" value="Admin Panel"></a><br>
  <a href ="view_post.php"><input type="submit" class="btn btn-success" value="View All Posts"></a><br>
  <a href="insert_post.php"><input type="submit" class="btn btn-success" value="Insert New Posts"></a><br>
  </div>

  </div>
  <div class="right_side">
  <div class="right">
  <?php
  include("connect.php");
   if(isset($_GET['edit']))
   {
	   $edit_value = $_GET['edit'];
	   $sel="select * from posts where post_id='$edit_value' ";
	   $run=mysqli_query($conn,$sel);
	   if($row=mysqli_fetch_array($run))
	   {
		   $post_id=$row['post_id'];
		   $post_title=$row['post_title'];
		   $post_date=$row['post_date'];
		   $post_author=$row['post_author'];
		   $post_keywords=$row['post_keywords'];
		   $post_content=$row['post_content'];
		   $post_image=$row['post_image'];
	   }
   }
  
  ?>
  
  
    <form method ="post" action="edit.php?edit_form=<?php echo $post_id?>" role ="form" enctype="multipart/form-data">
    <table class="table">
	<thead>
      <tr>
        <td align="center"><h2>Edit Your Posts Here</h2></td>
      </tr>
	  </thead>
	  </table  >
	  <table class="table table-bordered">
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Title</h4></td>
		<td>
		  <div class="form-group">
		     <input type="text" class="form-control" name="post_title" value="<?php echo $post_title;?>">
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Author</h4></td>
		<td>
		  <div class="form-group">
		     <input type="text" class="form-control" name="post_author" value="<?php echo $post_author;?>">
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Keywords</h4></td>
		<td>
		  <div class="form-group">
		     <input type="text" class="form-control" name="post_keywords" value="<?php echo $post_keywords;?>">
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Image</h4></td>
		<td>
		  <div class="form-group">
		     <input type="file" class="form-control" name="post_image" >
			 <img src="../images/<?php echo $post_image;?>" height="100" width="100" />
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Content</h4></td>
		<td>
		  <div class="form-group">
		     <textarea class="form-control" name="post_content" rows="15"><?php echo $post_content;?></textarea>
		  </div>
		</td>
	</tr>
	</table>
	<table class="table">
	<thead>
      <tr>
		<td>
		  <div class="form-group">
		     <input type="submit" class="btn btn-danger form-control" name="update" value="Update Now">
		  </div>
		</td>
	  </tr>
	  </thead>
	  </table>
  </form>
  
<?php
 include("connect.php");
 if(isset($_POST['update']))
 {    
      $post_update=$_GET['edit_form'];
	  $post_title1 = $_POST['post_title'];
	  $post_author1 = $_POST['post_author'];
	  $post_keywords1 = $_POST['post_keywords'];
	  $post_content1 = $_POST['post_content'];
	  $post_image1 = $_FILES['post_image']['name'];
	 $tmp_image1 = $_FILES['post_image']['tmp_name'];
	 if($post_title1 =="" or $post_author1 =="" or $post_keywords1 =="" or $post_content1 =="")
	 {
		 echo "<script>alert('Any of the file is empty')</script>";
		 exit();
	 }
	 else{
		 
		 move_uploaded_file($tmp_image1,"../images/$post_image1");
		 $ins = "update posts set post_title ='$post_title1',post_author='$post_author1',  post_keywords ='$post_keywords1',post_content='$post_content1',post_image ='$post_image1' where post_id = '$post_update'";
		 if(mysqli_query($conn,$ins))
		 {
			 echo "<script>alert('Post Updated Successfully')</script>";
			 echo "<script>window.open('view_post.php','_self')</script>";
		 }
	 }
	 
	 
	 
	 
	 
 }
 
 
 
 ?> 
    
  </div>
  </div>
 </div>
 </div>


</div>

</body>

</html>