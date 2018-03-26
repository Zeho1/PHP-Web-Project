<h2>Liste des titres</h2>
<table class="table table-condensed table-hover">
<?php
foreach($records as $record)
	{
	echo "<tr>";
	echo "<td><a href='?section=fileArtiste&id=" . $record["id"] . "'>" . $record["name"] ."</a></td>";
	echo "<td>". $record["songname"] ."</td>";
	echo "<td>". $record["album"] . "</td>";
  echo "<td>". $record["url"] . "</td>";
	echo "</tr>";

	}
?>
</table>
