<?php 
require('./includes/config.php');
$featured = mysqli_fetch_assoc(mysqli_query($conn, 'SELECT * FROM featured ORDER BY id DESC LIMIT 1'));
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
							<div class="card"> <img src="<?=$featured['image']?>" class="card-img-top">
								<div class="card-body text-yellow">
									<?=$featured['description']?>
										<br>
								</div>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="container">
							<div class="mb-3">
								<ul class="nav nav-pills" id="pills-tab">
									<li class="nav-item"> <a class="nav-link btn btn-main-page active" id="wishes-tab" data-toggle="pill" href="#wishes" aria-selected="true">Wishes</a> </li>
									<li class="nav-item"> <a class="nav-link btn btn-main-page" id="events-tab" data-toggle="pill" href="#events" aria-selected="false">Events</a> </li>
									<li class="nav-item"> <a class="nav-link btn btn-main-page" id="datamines-tab" data-toggle="pill" href="#datamines" aria-selected="false">Datamines</a> </li>
								</ul>
							</div>
							<div class="tab-content">
								<?php
$types = ['wishes', 'events', 'datamines'];
foreach($types as $type): 
  $carousel = mysqli_query($conn, "SELECT * FROM carousel WHERE type='$type'")
?>
									<div id="<?=$type?>" class="tab-pane fade <?=$type=='wishes'?'show active':'';?>">
										<div id="<?=$type?>-carousel" class="carousel slide" data-ride="<?=$type?>-carousel">
											<div class="carousel-inner">
												<?php $i=0; while($row=mysqli_fetch_assoc($carousel)): ?>
													<div class="carousel-item <?=$i++?'':'active'?>"> <img class="carousel-img" src="<?=$row['image']?>"> </div>
													<?php endwhile; ?>
											</div>
											<ul class="carousel-indicators">
												<?php $count = $i; $i = 0; while($i < $count): ?>
													<li data-target="#<?=$type?>-carousel" data-slide-to="<?=$i?>" class="<?=$i++?'':'active'?>"></li>
													<?php endwhile; ?>
											</ul>
											<div class="carousel-nav">
												<div class="d-flex justify-content-around">
													<a href="#<?=$type?>-carousel" data-slide="prev"> <img src="./images/icons/navigator-left.png"> </a>
													<a href="#<?=$type?>-carousel" data-slide="next"> <img src="./images/icons/navigator-right.png"> </a>
												</div>
											</div>
										</div>
									</div>
									<?php endforeach;?>
							</div>
						</div>
					</div>
				</div>
			</div>
	</body>

	</html>
