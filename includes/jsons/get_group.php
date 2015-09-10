<?php 
require_once("../initialize.php");

$group_id = $_GET["group_id"];
$group = Group::get_by_id($group_id);

$groups = array();

if($group == null){
    die("Group: " . $group_id . " does not exists.");
}

array_push($groups, $group);

echo json_encode($groups);

?>