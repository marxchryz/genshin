<?php
require('./includes/config.php');
?>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
		<link rel="stylesheet" href="./css/style.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src=https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/js/jquery.dataTables.min.js></script>
    <script src=https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/js/dataTables.bootstrap4.min.js></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Prompt:wght@100;300&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet">
		<title>Genshin Impact Guide</title>
	</head>

	<body>
		  <img src="./images/banner.png" class="img-fluid" />
	<nav class="navbar navbar-expand navbar-dark sticky-top bg-dark">
		<div class="container-fluid">
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
          <li class="nav-item "> <a class="nav-link" href="./index.php">HOME</a> </li>
					<li class="nav-item dropdown active"> <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">GUIDES</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="./characters.php">Characters</a></li>
							<li><a class="dropdown-item" href="./weapons.php">Weapons</a></li>
							<li><a class="dropdown-item" href="./artifacts.php">Artifacts</a></li>
							<li><a class="dropdown-item" href="./farm-routes.php">Farm Routes</a></li>
						</ul>
					</li>
          <li class="nav-item dropdown "> <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">MECHANICS</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Elemental Reactions</a></li>
							<li><a class="dropdown-item" href="#">Adventure Ranks</a></li>
							<li><a class="dropdown-item" href="#">World Map</a></li>
							<li><a class="dropdown-item" href="#">Domains</a></li>
							<li><a class="dropdown-item" href="#">World Boss</a></li>
						</ul>
					</li>
				</ul>
				<ul class="navbar-nav ml-auto">
          <li class="nav-item "> <a class="nav-link" href="#">ABOUT US</a> </li>
				</ul>
			</div>
		</div>
	</nav>
  <div class="content container-fluid pt-3">
   	<div class=container>
      <table cellspacing=0 class="table table-dark table-striped" id="weapons-table" width=100%>
        <thead>
          <tr>
            <th colspan=2>Weapon</th>
            <th>Type</th>
            <th>Rarity</th>
            <th>ATK</th>
            <th>Secondary</th>
            <th>Passive</th>
            <th>Bonus</th>
            <th>Location</th>
          </tr>
        </thead>
        <tfoot><tbody>
<?php
$res = mysqli_query($conn, "SELECT * FROM weapons");
while($row = mysqli_fetch_assoc($res)):?>
          <tr>
            <td><img class="weapon" src="<?=$row['image']?>"></td>
            <td class="weapons" data="<?=$row['image']?>"><?=$row['weapon']?></td>
            <td><?=$row['type']?></td>
            <td class="rarity"><?=$row['rarity']?></td>
            <td><?=$row['atk']?></td>
            <td><?=$row['secondary']?></td>
            <td><?=$row['passive']?></td>
            <td><?=$row['bonus']?></td>
            <td><?=$row['location']?></td>
          </tr>
<?php endwhile;?>
        </tfoot></tbody>
		</div>
	</div>
	</body>

	</html>
<script>
$(function() {
  try{
    $('#weapons-table').DataTable({paging: false, searching: false, info: false});
  }catch(err){

  }
  $('.rarity').each(function(){
    rarity = this.innerText;
    this.innerText = '';
    for(i = 0; i < rarity; i++){
      this.innerHTML += '<img class="star" src="./images/star.png">'
    }
  })
});
</script>
<script src="./js/script.js"></script>
