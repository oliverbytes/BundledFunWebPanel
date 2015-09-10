<?php 
require_once("../initialize.php");

$group_id = $_GET["group_id"];
$group = Group::get_by_id($group_id);

if($group == null){
    die("Group: " . $group_id . " does not exists.");
}

$files = array();

$directory = PUBLIC_PATH.DS.'groups' .DS. $group->name .DS.'files'.DS.'questions'.DS.'*';

foreach(glob($directory) as $file)  {
    array_push($files, basename($file));
}

echo json_encode($files);

?>