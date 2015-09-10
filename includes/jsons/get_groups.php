<?php 
require_once("../initialize.php");

$groups = Group::get_all();

echo json_encode($groups);

?>