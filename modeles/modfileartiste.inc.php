<?php
$sql = "SELECT a.id, a.name, g.genremus, a.year, a.image, a.biographie, a.nationalite, a.url
FROM artistes a
LEFT JOIN genre g on a.genre_id = g.id
WHERE a.id=:id";
$stmt = $dbartistes->prepare($sql);
$stmt->bindValue("id", $_GET["id"]);
$stmt->execute();
$record = $stmt->fetch();
?>
