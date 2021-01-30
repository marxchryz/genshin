  <img src="./images/banner.png" class="img-fluid" />
	<nav class="navbar navbar-expand navbar-dark sticky-top bg-dark">
		<div class="container-fluid">
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
          <li class="nav-item <?=$page=='home'?'active':''?>"> <a class="nav-link" href="./index.php">HOME</a> </li>
					<li class="nav-item dropdown <?=$page=='guides'?'active':''?>"> <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">GUIDES</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="./characters.php">Characters</a></li>
							<li><a class="dropdown-item" href="./weapons.php">Weapons</a></li>
							<li><a class="dropdown-item" href="./artifacts.php">Artifacts</a></li>
							<li><a class="dropdown-item" href="./farm-routes.php">Farm Routes</a></li>
						</ul>
					</li>
          <li class="nav-item dropdown <?=$page=='mechanics'?'active':''?>"> <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">MECHANICS</a>
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
          <li class="nav-item <?=$page=='about us'?'active':''?>"> <a class="nav-link" href="#">ABOUT US</a> </li>
				</ul>
			</div>
		</div>
	</nav>

