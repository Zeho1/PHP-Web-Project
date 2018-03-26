<?php
ob_start();
session_start();
include("config/main.inc.php");
include("lib/init.inc.php");

if(isset($_SESSION["access"]) && $_SESSION["access"] == "ok")
{
  include("views...");
}
else
{
  echo "<form method='post'";
  echo "login pass";
}
ob_end_flush();
 ?>
