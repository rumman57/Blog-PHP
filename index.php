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
 <?php include("includes/content_left.php")?>
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
