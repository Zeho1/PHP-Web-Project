<?php
$sql = "DELETE FROM artistes WHERE id=:id";
$stmt = $dbartistes->prepare($sql);
$stmt->bindValue("id", $_GET["id"]);
$exec = $stmt->execute();
?>
