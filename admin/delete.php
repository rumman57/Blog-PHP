<?php
 session_start();
 if(!$_SESSION['email'])
 {
	 header("Location:login.php");
 }
?>
<?php
include("connect.php");
if(isset($_GET['del']))
{
	$del_value=$_GET['del'];
	$delete="delete from posts where post_id='$del_value'";
	$run=mysqli_query($conn,$delete);
	if($run==true)
	{
		echo "<script>Post has been deleted successfully</script>";
		echo "<script>window.open('view_post.php','_self')</script>";
	}
}

?>