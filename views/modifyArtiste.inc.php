<form class="form-horizontal" enctype="multipart/form-data" method="POST" action="?">
<input type='hidden' name='section' value='modifyArtiste'/>
<input type='hidden' name='id' value='<?php echo $_REQUEST["id"] ?>'/>
  <fieldset>
    <legend>Modifiez les différents champs d'information concernant l'artiste</legend>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Nom</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputName" name="name" value="<?php echo $record["name"] ?>" placeholder="Nom de l'artiste (ex: Metallica)">
      </div>
    </div>
    <div class="form-group">
      <label for="inputGenre" class="col-lg-2 control-label">Genre Musical</label>
      <div class="col-lg-10">
        <select class="form-control" id="genre_id" name="genre_id">
          <?php foreach ($genres as $genre){
            echo '<option value="'. $genre['id'];
            if ($record['genre_id'] == $genre['id']) echo '" selected="selected'; echo '">' . $genre['genremus'] .

            '</option>';
          }?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="inputDate" class="col-lg-2 control-label">Date de début</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputDate"  name="year" value="<?php echo $record["year"] ?>" placeholder="date">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Photo de l'artiste</label>
      <div class="col-lg-10">
        <input type="hidden" name="MAX_FILE_SIZE" value="300000">
        <input type="file"  id="inputImage" name="image" value="<?php echo $record["image"] ?>"/>
      </div>
    </div>
    <div class="form-group">
      <label for="inputNat" class="col-lg-2 control-label">Nationalité</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputNat" name="nationalite" value="<?php echo $record["nationalite"] ?>" placeholder="Nationalité de l'artiste (ex: Américain)">
      </div>
    </div>
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Biographie</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="inputBio" name="biographie"><?php echo $record["biographie"] ?></textarea>
      </div>
    </div>
    <div class="form-group">
      <label for="inputURL" class="col-lg-2 control-label">Site Web de l'artiste</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputURL" name="url" value="<?php echo $record["url"] ?>" placeholder="https://www.metallica.com">
      </div>
    </div>

    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">En fait, non</button>
        <button type="submit" name="submit" class="btn btn-primary">Let's Go!</button>
      </div>
    </div>
  </fieldset>
</form>
