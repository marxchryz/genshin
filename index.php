<?php 
require('./includes/config.php');
$featured = mysqli_fetch_assoc(mysqli_query($conn, 'SELECT * FROM featured ORDER BY id DESC LIMIT 1'));
$carousel = mysqli_query($conn, 'SELECT * FROM carousel');
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
	<link rel="stylesheet" href="./css/style.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Prompt:wght@100;300&display=swap" rel="stylesheet">
	<title>Genshin Impact Guide</title>
</head>

<body> 
<?php $page='home'; include('./includes/navbar.php');?>
  <div class="content pt-3">
    <div class="row pb-3">
      <div class="col">
        <div class="container">
          <div class="card">
            <img src="<?=$featured['image']?>" class="card-img-top">
            <div class="card-body text-yellow">
              <?=$featured['description']?>
              <br>
              <div class="float-right">Info</div>
            </div>
          </div>
        </div>
      </div>
      <div class="col">
        <div class="container">
          <div class="mb-3">
            <button class="btn btn-main-page-active" type="button">Wishes</button>
            <button class="btn btn-main-page" type="button">Events</button>
            <button class="btn btn-main-page" type="button">Datamines</button>
          </div>
          <div class="card">
<div id="carousel" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
<?php $i=0; while($row=mysqli_fetch_assoc($carousel)): ?>
    <div class="carousel-item <?=$i++?'':'active'?>">
      <img class="carousel-img" src="<?=$row[image]?>">
    </div>
<?php endwhile; ?>
  </div>
  <ul class="carousel-indicators">
<?php $count = $i; $i = 0; while($i < $count): ?>
    <li data-target="#carousel" data-slide-to="<?=$i?>" class="<?=$i++?'':'active'?>"></li>
<?php endwhile; ?>
  </ul>
<div class="carousel-nav">
  <div class="d-flex justify-content-around">
    <a href="#carousel" data-slide="prev">
      <img src="./images/navigator-left.png">
    </a>
    <a href="#carousel" data-slide="next">
      <img src="./images/navigator-right.png">
    </a>
  </div>
</div>
</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>
