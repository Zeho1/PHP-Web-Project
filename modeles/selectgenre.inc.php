<?php
$sql10 = "SELECT * FROM genre";
$stmt10 = $dbartistes->prepare($sql10);
$stmt10->execute();
$genres = $stmt10->fetchAll();
?>
