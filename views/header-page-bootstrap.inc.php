<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>Projet WEB</title>
		<link rel="stylesheet" href="design/bootstrap/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="design/bootstrap/css/bootstrap-superhero.min.css"/>
	</head>

	<body background="./views/musicwall.jpg">
		<nav class="navbar navbar-default navbar-static-top">
		  <div class="container">
				<div class="navbar-header">
			  	<a href="?" class="navbar-brand"><font size = "6"><strong>WAHo0</strong></font></a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><font size="4">Menu Principal </font><span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="?section=listeArtistes"><font size="3">Liste des artistes</font></a></li>
										<li role="separator" class="divider"></li>
				            <li><a href="?section=AddArtiste"><font size="3">Ajout d'un artiste</font></a></li>
				          </ul>
				        </li>
				      </ul>
						<form class="navbar-form navbar-right" role="search" method="get">
						<input type="hidden" name="section" value="listeArtistes"/>
	  				<div class="form-group">
	    				<input type="text" class="form-control" id="inputKeyword" name="motcle" placeholder="Entrer le nom">
	  				</div>
	  				<button type="submit" class="btn btn-default"><font size="4">Rechercher</font></button>
					</form>
					<p class="navbar-text navbar-right"><font size="4">Designed by Vincent Clerc</font></p>
		  	</div>
			</div>
		</nav>
		<div class="container">
