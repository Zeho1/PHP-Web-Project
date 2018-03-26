<?php
ob_start();
session_start();
include("Configuration/access.inc.php");
include("lib/init.inc.php");

if(isset($_SESSION["access"])  && $_SESSION["access"] == "ok")
	{
	include("modeles/modmusic.inc.php");
	include("views/music.inc.php");
	}
else
	{
	if(isset($_REQUEST["submit"]))
		{
		if(isset($_POST["password"]) == "123456" && isset($_POST["login"]) == "guest")
			{
			$_SESSION['access'] = "ok";
			}
		header("Location: intra.php");
		}
	else
		{
		echo "<form method='post' action='?'>";
		echo "Login <input type='text' name='login'/> ";
		echo "Mot de passe <input type='text' name='password'/> ";
		echo "<input type='submit' name='submit' value='connecter'/>";
		echo "</form>";
		}
	}

ob_end_flush();
?>
