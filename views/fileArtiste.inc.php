<h2 >Fiche d'un artiste</h2>
<div class="jumbotron" style="background-color:black;">
<br/><br/>
<ul class='breadcrumb' style="background-color:transparent;">
  <li><strong><a href='#'><?php echo $record["name"] ?></a></strong></li>
  <li class='active'><?php echo $record["genremus"] ?></li>
</ul>
<blockquote><p><?php echo $record["biographie"] ?></p></blockquote>
<img src='./image/<?php echo $record["image"] ?>'/>
<p><a href='<?php echo $record["url"] ?>'/>plus d'info</a></p>
</div>
