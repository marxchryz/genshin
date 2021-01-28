  <img src="./images/banner.png" class="img-fluid" />
	<nav class="navbar navbar-expand navbar-dark sticky-top bg-dark">
		<div class="container-fluid">
			<div class="collapse navbar-collapse">
				<ul class="navbar-nav">
          <li class="nav-item <?=$page=='home'?'active':''?>"> <a class="nav-link" href="#">HOME</a> </li>
					<li class="nav-item dropdown <?=$page=='guides'?'active':''?>"> <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">GUIDES</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Characters</a></li>
							<li><a class="dropdown-item" href="#">Weapons</a></li>
							<li><a class="dropdown-item" href="#">Artifacts</a></li>
							<li><a class="dropdown-item" href="#">Farm Routes</a></li>
						</ul>
					</li>
          <li class="nav-item dropdown <?=$page=='mechanics'?'active':''?>"> <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">MECHANICS</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Characters</a></li>
							<li><a class="dropdown-item" href="#">Weapons</a></li>
							<li><a class="dropdown-item" href="#">Artifacts</a></li>
							<li><a class="dropdown-item" href="#">Farm Routes</a></li>
						</ul>
					</li>
				</ul>
				<ul class="navbar-nav ml-auto">
          <li class="nav-item <?=$page=='about us'?'active':''?>"> <a class="nav-link" href="#">ABOUT US</a> </li>
				</ul>
			</div>
		</div>
	</nav>

