<?php

try
	{
    $dbartistes=new PDO("mysql:host=$hostname;dbname=mediadb",$user,$pass);
    $dbartistes->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	switch($section)
		{
		case "listeArtistes":
				include("modeles/modlisteartiste.inc.php");
			break;
      case "fileArtiste":
				include("modeles/modfileartiste.inc.php");
			break;
			case "songlist":
				include("modeles/modsongs.inc.php");
				break;
			case "modifyArtiste":
				include("modeles/modmodifyartiste.inc.php");
				include("modeles/selectgenre.inc.php");
				break;
      case "AddArtiste":
				include("modeles/modaddartiste.inc.php");
				include("modeles/selectgenre.inc.php");
			break;
      case "suppressionArtiste":
			include("modeles/modsupprartiste.inc.php");
			break;
		}
		unset($dbArtiste);
	}

catch(PDOException $excep)
	{
	echo $excep->getMessage();
	}

?>
