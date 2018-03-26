<?php
$sql = "SELECT a.id, a.name, c.songname,c.album,  c.url
FROM artistes as a
LEFT JOIN artsongs as b on a.id = b.idartist
LEFT JOIN songs as c on c.id = b.songid
WHERE a.id=:id";
$stmt = $dbartistes->prepare($sql);
$stmt->bindValue("id", $_GET["id"]);
$stmt->execute();
$records = $stmt->fetchAll();
?>
