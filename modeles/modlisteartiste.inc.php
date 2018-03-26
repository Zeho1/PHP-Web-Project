<?php
$sql = "SELECT a.id, a.name, g.genremus, a.year, a.image, a.nationalite, a.url
FROM artistes a
LEFT JOIN genre g on a.genre_id = g.id";
if(!empty($_GET["motcle"])) $sql .= " WHERE name LIKE :filter";
$stmt = $dbartistes->prepare($sql);
if(!empty($_GET["motcle"])) $stmt->bindValue("filter", "%" . $_GET["motcle"] . "%");
$stmt->execute();
$records = $stmt->fetchAll();
?>
