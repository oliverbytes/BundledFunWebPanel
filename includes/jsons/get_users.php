<?php 
require_once("../initialize.php");

$group_id = $_GET["group_id"];
$group = Group::get_by_id($group_id);

if($group == null){
    die("Group: " . $group_id . " does not exists.");
}

$users = User::get_all_by_group_id($group_id);

echo json_encode($users);

?>