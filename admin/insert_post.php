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
  <br><br>
   <a href = "admin.php"><input type="submit" class="btn btn-success" value="Admin Panel"></a><br>
  <a href ="view_post.php"><input type="submit" class="btn btn-success" value="View All Posts"></a><br>

  </div>

  </div>
  <div class="right_side">
  <div class="right">
     <form method ="post" action="<?php echo $_SERVER['PHP_SELF']?>" role ="form" enctype="multipart/form-data">
    <table class="table">
	<thead>
      <tr>
        <td align="center"><h2>Insert New Posts Here</h2></td>
      </tr>
	  </thead>
	  </table  >
	  <table class="table table-bordered">
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Title</h4></td>
		<td>
		  <div class="form-group">
		     <input type="text" class="form-control" name="post_title">
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Author</h4></td>
		<td>
		  <div class="form-group">
		     <input type="text" class="form-control" name="post_author">
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Keywords</h4></td>
		<td>
		  <div class="form-group">
		     <input type="text" class="form-control" name="post_keywords">
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Image</h4></td>
		<td>
		  <div class="form-group">
		     <input type="file" class="form-control" name="post_image">
		  </div>
		</td>
	  
	  </tr>
	  <tr>
	    <td style="text-align:center;color:green;"><h4>Post Content</h4></td>
		<td>
		  <div class="form-group">
		     <textarea class="form-control" name="post_content" rows="15"></textarea>
		  </div>
		</td>
	</tr>
	<tr>
	    <td style="text-align:center;color:green;"><h4>Select Category</h4></td>
		<td>
		  <div class="form-group">
		     <select name="category">
			   <option>Sports</option>
			   <option>Music</option>
			   <option>News</option>
			   <option>Technology</option>			 
			   <option>Others</option>			 
			 </select>
		  </div>
		</td>
	</tr>
	
	</table>
	<table class="table">
	<thead>
      <tr>
		<td>
		  <div class="form-group">
		     <input type="submit" class="btn btn-info form-control" name="submit" value="Publish Now">
		  </div>
		</td>
	  </tr>
	  </thead>
	  </table>
  </form>
  
<?php
 include("connect.php");
 if(isset($_POST['submit']))
 {
	  $post_title = $_POST['post_title'];
	 // $post_date = NOW();
	  $post_author = $_POST['post_author'];
	  $post_keywords = $_POST['post_keywords'];
	  $post_content = $_POST['post_content'];
	   $category=$_POST['category'];
	  $post_image = $_FILES['post_image']['name'];
	 $tmp_image = $_FILES['post_image']['tmp_name'];
	 if($post_title =="" or $post_author=="" or $post_keywords=="" or $post_content=="" or $category=="")
	 {
		 echo "<script>alert('Any of the file is empty')</script>";
		 exit();
	 }
	 else{
		 
		 move_uploaded_file($tmp_image,"../images/$post_image");
		 $ins = "insert into posts (post_title,post_date,post_author,post_keywords,post_content,post_image,category) values ('$post_title',NOW(),'$post_author','$post_keywords','$post_content','$post_image','$category')";
		 if(mysqli_query($conn,$ins))
		 {
			 echo "<script>alert('Post Published Successfully')</script>";
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