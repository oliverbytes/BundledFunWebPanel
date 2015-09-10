<?php 

require_once("../initialize.php");

$username = $_GET["username"];

echo User::get_by_username($username);

?>