<?php
if(isset($_POST["submit"]))
  {
  if (is_uploaded_file($_FILES["image"]["tmp_name"]))
  {
    move_uploaded_file($_FILES["image"]["tmp_name"],"./image/" . $_FILES["image"]["name"]);
  }

  $sql = "INSERT INTO artistes (name, genre_id, year, image, nationalite, biographie, url)
  VALUES (:name, :genre_id, :year, :image, :nationalite, :biographie, :url)";
  $stmt = $dbartistes->prepare($sql);
  $stmt->bindValue("name", $_POST["name"]);
  $stmt->bindValue("genre_id", $_POST["genre_id"]);
  $stmt->bindValue("year", $_POST["year"]);
  $stmt->bindValue("image", $_FILES["image"]["name"]);
  $stmt->bindValue("nationalite", $_POST["nationalite"]);
  $stmt->bindValue("biographie", $_POST["biographie"]);
  $stmt->bindValue("url", $_POST["url"]);
  $exec = $stmt->execute();
  $id = $dbartistes->lastInsertId();

  $asql = "INSERT INTO artgenre (idart, idgenre) VALUES (:idart, :idgenre)";
  $stmt2 = $dbartistes->prepare($asql);
  $stmt2->bindValue("idart", $id);
  $stmt2->bindValue("idgenre", $_POST["genre_id"]);
  $exec2 = $stmt2->execute();
  }
?>
