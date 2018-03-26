<?php
if($exec == true)
	{
	echo "
		<div class='alert alert-success'>
		<p><strong>Confirmation:</strong> Ach ja, c'est validé!</p>
		<p><br/>
		</div>
		<a href='?section=listeArtistes'>Retour à la liste des artistes</a></p>
    ";
	}
else
	{
	echo "
	<div class='alert alert-dismissible alert-danger'>
	<p>Ach Schade! C'est l'échec critique!</p>
	</div>";
	}

?>
