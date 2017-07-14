<div class = "sidebar">
<div class="sd">
<div class="search_box">
<h3>Search Here</h3>
 <form action="search.php" method="get" enctype="multipart/form-data" role="form" class="form-inline">
   <div class="form-group">
    <input style="width:120px;" type="text" class="form-control" name="value">
  </div>
  <input type="submit" class="btn btn-success" value="Search" name="search">
 
 </form>


</div>
<div class="follow_us">
<h3>Follow Us</h3>
<a href = "https://www.facebook.com/profile.php?id=100007914910361&_rdr" target="_blank"><img src="images/facebook.png" alt="" /></a>
<img src="images/linkedin.png" alt="" />
<img src="images/twitter.png" alt="" />
<img src="images/yahoo.png" alt="" />
</div>
<div class="recent_post">
<h3>Recent  Post</h3>
<?php
include('connect.php');
$sel="select * from posts order by 1 DESC LIMIT 0,3";
$run=mysqli_query($conn,$sel);
while($row=mysqli_fetch_array($run))
{
	$post_id=$row['post_id'];
	$post_title=$row['post_title'];
	$post_image=$row['post_image'];
	

?>
   <a href="pages.php?id=<?php echo $post_id;?>" class="sra" ><h4><?php echo $post_title;?></a></h4>
   <center><img src="images/<?php echo $post_image?>" alt="" height="100" width="100" ></center>
   <?php }?>

</div>
<div class="category">
<h3>Category</h3>
<ul>
<?php
include("connect.php");
$sel="SELECT * FROM posts WHERE posts.category ='Others'";
$run=mysqli_query($conn,$sel);
$result=mysqli_num_rows($run);
$sel1="SELECT * FROM posts WHERE posts.category ='News'";
$run1=mysqli_query($conn,$sel1);
$result1=mysqli_num_rows($run1);
$sel2="SELECT * FROM posts WHERE posts.category ='Music'";
$run2=mysqli_query($conn,$sel2);
$result2=mysqli_num_rows($run2);
$sel3="SELECT * FROM posts WHERE posts.category ='Technology'";
$run3=mysqli_query($conn,$sel3);
$result3=mysqli_num_rows($run3);
$sel4="SELECT * FROM posts WHERE posts.category ='Sports'";
$run4=mysqli_query($conn,$sel4);
$result4=mysqli_num_rows($run4);



?>
    <li><a href="sports.php">Sports (<?php echo $result4;?>)</a></li>
    <li><a href="music.php">Music (<?php echo $result2;?>)</a></li>
    <li><a href="news.php">News (<?php echo $result1;?>)</a></li>
    <li><a href="technology.php">Thechnology (<?php echo $result3;?>)</a></li>
    <li><a href="others.php">Others (<?php echo $result;?>)</a></li>
</ul>
</div>

<br><br>
</div>
</div>