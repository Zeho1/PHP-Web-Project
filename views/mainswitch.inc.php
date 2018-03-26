<?php
switch($section)
	{
	case "listeArtistes":
		include("views/listeArtistes.inc.php");
		break;
    case "fileArtiste":
		include("views/fileArtiste.inc.php");
		break;
		case "songlist":
		include("views/songlist.inc.php");
		break;
		case "modifyArtiste":
			if(isset($exec))
				{
				include("views/Confirmation.inc.php");
				}
			else
				{
				include("views/modifyArtiste.inc.php");
				}
		break;
    case "AddArtiste":
		if(isset($exec))
			{
			include("views/Confirmation.inc.php");
			}
		else
			{
			include("views/FormulaireAdd.inc.php");
			}
		break;
    case "suppressionArtiste":
		include("views/Confirmation.inc.php");
		break;
	default:
		include("views/accueil.inc.php");
	}
?>
