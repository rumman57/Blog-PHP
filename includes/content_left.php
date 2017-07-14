<div class ="content_left">
<div class ="cl">
 <?php
 include("connect.php");
   $per_page_post=4;
   $data=mysqli_num_rows(mysqli_query($conn,"select * from posts"));
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
 $sel="select * from posts ORDER BY 1 DESC LIMIT $start,$per_page_post";
 $run=mysqli_query($conn,$sel);
 while($row=mysqli_fetch_array($run))
 {
	 $post_id = $row['post_id'];
	 $post_title = $row['post_title'];
	 $post_date = $row['post_date'];
	  $post_author = $row['post_author'];
	  $post_keywords = $row['post_keywords'];
	  $post_content = substr($row['post_content'],0,250);
	  $post_image = $row['post_image'];
 
 ?>
 <h2>
 <a href="pages.php?id=<?php echo $post_id;?>" class="lca">
 <?php echo $post_title?></a></h2>
 
 
 <center><img src="images/<?php echo $post_image;?>" height="300" width="400" ></center>
 
 
 <p class = "clp" style ="color:#781B02;"><?php echo $post_content;?></p>
 
 
 <!--<button type="button" class="btn btn-info" style="align:right;margin-left:630px;margin-top:-9px;"><a href="pages.php?id=<?php //echo $post_id;?>" style="text-decoration:none;color:black;font-weight:bold;">Read More</a></button>-->
 <a href="pages.php?id=<?php echo $post_id;?>"><input type="submit" style="align:right;margin-left:630px;margin-top:-9px;" class="btn btn-info" value="Read More"></a>
 
 <pre style="width:auto;color:green;font-weight:bold;font-size:16px;">Post Author : <?php echo $post_author;?><br>Post Date : <?php echo $post_date;?></pre>
 
 
 <?php } ?>
 
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