<?php
if(isset($_POST["submit"]))
  {
  if (is_uploaded_file($_FILES["image"]["tmp_name"]))
  {
    move_uploaded_file($_FILES["image"]["tmp_name"],"./image/" . $_FILES["image"]["name"]);
  }
$sql = "UPDATE artistes SET name =:name, genre_id =:genre_id, year=:year, image=:image, nationalite=:nationalite, biographie=:biographie, url=:url
WHERE id=:id";
$stmt = $dbartistes->prepare($sql);
$stmt->bindValue("name", $_POST["name"]);
$stmt->bindValue("genre_id", $_POST["genre_id"]);
$stmt->bindValue("year", $_POST["year"]);
$stmt->bindValue("image", $_FILES["image"]["name"]);
$stmt->bindValue("nationalite", $_POST["nationalite"]);
$stmt->bindValue("biographie", $_POST["biographie"]);
$stmt->bindValue("url", $_POST["url"]);
$stmt->bindValue("id", $_POST["id"]);
$exec = $stmt->execute();

$sql2 = "UPDATE artgenre SET idgenre=:idgenre
WHERE idart=:id";
$stmt2 = $dbartistes->prepare($sql2);
$stmt2->bindValue("idgenre", $_POST["genre_id"]);
$stmt2->bindValue("id", $_POST["id"]);
$exec2 = $stmt2->execute();
  }
else
  {
  $sql = "SELECT * FROM artistes WHERE id=:id";
			$stmt = $dbartistes->prepare($sql);
			$stmt->bindValue("id", $_GET["id"]);
			$stmt->execute();
			$record = $stmt->fetch();
  $sql2 = "SELECT * FROM genre WHERE id=:id";
      $stmt2 = $dbartistes->prepare($sql2);
      $stmt2->bindValue("id", $_GET["id"]);
      $stmt2->execute();
      $record2 = $stmt2->fetch();


  }
?>
