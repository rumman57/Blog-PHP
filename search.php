<?php
error_reporting(0);
 $page_needed="";
 $page="";
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
<div class ="cl">
   <center><h1 style="color:green;">Your Search Result Is Here</h1></center>
   <?php
   include("connect.php");
   if(isset($_GET['search']))
	 {
		 $value=$_GET['value'];
	 }
   
   ?>
 <?php
 
	 include("connect.php");
	// if(isset($_GET['search']))
	// {
		 $value=$_GET['value'];
	    $per_page_post=3;
	   $data=mysqli_num_rows(mysqli_query($conn,"select * from posts   where post_keywords like '%$value%'"));
	   $page_needed=ceil($data/$per_page_post);
	   if (isset($_GET["page"]))
		   { 
			   $page  = $_GET["page"];
		   } 
	   else
		  {
			 $page=1; 
		  }; 

	  $start  = ($page-1)* $per_page_post;
		 $sel="select * from posts   where post_keywords like '%$value%' LIMIT $start,$per_page_post ";
		 $run=mysqli_query($conn,$sel);
		 while($row=mysqli_fetch_array($run))
		 {
			 $post_id = $row['post_id'];
			 $post_title = $row['post_title'];
			 $post_content = substr($row['post_content'],0,180);
			 $post_image = $row['post_image'];
		 
		 ?>
		 <h2>
		 <a href="pages.php?id=<?php echo $post_id;?>" class="lca">
		 <?php echo $post_title?></a></h2>
		 
		 
		 <center><img src="images/<?php echo $post_image;?>" height="150" width="250" ></center>
		 
		 
		 <p class = "clp" style ="color:#781B02;"><?php echo $post_content;?></p>
	 
	 <?php	 }  /*}*/?>
<?php
  echo "<br>";
	 if($page<=$page_needed)
	 {
		  for($i=1;$i<=$page_needed;$i++)
	  {
		  if($i==$page)
		  {
			  echo '<ul class="pagination">
			  <li class="active"><a href="?page='.$i.'">'.$i.'</a></li>
			  </ul>';
		  }
		  else
		  {
				echo '<ul class="pagination">
			  <li><a href="?page='.$i.'">'.$i.'</a></li>
			  </ul>';
		  }
		 
	  }
	 }
	 else
	 {
		 echo "<center><h2>You Entered In a Invalid Page</h2></center>";
	 }
	  
?> 
	 
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
