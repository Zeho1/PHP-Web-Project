<form class="form-horizontal" enctype="multipart/form-data" method="POST" action="?">
<input type='hidden' name='section' value='AddArtiste'/>
  <fieldset>
    <legend>Remplissez les différents champs d'information concernant l'artiste</legend>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Nom</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputName" name="name" placeholder="Nom de l'artiste (ex: Metallica)">
      </div>
    </div>
    <div class="form-group">
      <label for="inputGenre" class="col-lg-2 control-label">Genre Musical</label>
      <div class="col-lg-10">
        <select class="form-control" id="genre_id" name="genre_id">
          <?php foreach ($genres as $genre): ?>
            <option value="<?= $genre['id']?>"><?= $genre['genremus']?></option>
          <?php endforeach;?>
        </select>
      </div>
    </div>
    <div class="form-group">
      <label for="inputDate" class="col-lg-2 control-label">Date de début</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputDate"  name="year" placeholder="date">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Photo de l'artiste</label>
      <div class="col-lg-10">
        <input type="hidden" name="MAX_FILE_SIZE" value="300000">
        <input type="file"  id="inputImage" name="image"/>
      </div>
    </div>
    <div class="form-group">
      <label for="inputNat" class="col-lg-2 control-label">Nationalité</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputNat" name="nationalite" placeholder="Nationalité de l'artiste (ex: Américain)">
      </div>
    </div>
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Biographie</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="inputBio" name="biographie" placeholder="Résumé des événements marquants de l'artiste (ex: Mort de Cliff Burton en 1986)"></textarea>
      </div>
    </div>
    <div class="form-group">
      <label for="inputURL" class="col-lg-2 control-label">Site Web de l'artiste</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputURL" name="url" placeholder="https://www.metallica.com">
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
