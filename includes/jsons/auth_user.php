<?php 
require_once("../initialize.php");

$username = $_GET["username"];
$password = $_GET["password"];

echo User::authenticate($username, $password);
?>