<h2>Liste des artistes</h2>
<table class="table table-condensed table-hover">
<?php

echo "<tr>";
echo '<td><font size="3" color="red"><strong>Nom</strong></font></td>';
echo '<td><font size="3" color="green"><strong>Genre musical</strong></font></td>';
echo '<td><font size="3" color="blue"><strong>Fondation du groupe</strong></font></td>';
echo '<td><font size="3" color="purple"><strong>Origine</strong></font></td>';
echo '<td><font size="3" color="magenta"><strong>Site web</strong></font></td>';
echo "</tr>";

foreach($records as $record)
	{
	echo "<tr>";
	echo "<td><a href='?section=fileArtiste&id=" . $record["id"] . "'>" . $record["name"] ."</a></td>";
	echo "<td>". $record["genremus"] ."</td>";
	echo "<td>". $record["year"] . "</td>";
  echo "<td>". $record["nationalite"] . "</td>";
  echo "<td>". $record["url"] . "</td>";
	echo "<td><a href='?section=songlist&id=" . $record["id"] . "'>Titres</td>";
	echo "<td><a href='?section=modifyArtiste&id=" . $record["id"] . "'>modifier</td>";
  echo "<td><a href='?section=suppressionArtiste&id=" . $record["id"] . "'>effacer</td>";
	echo "</tr>";

	}
?>
</table>
