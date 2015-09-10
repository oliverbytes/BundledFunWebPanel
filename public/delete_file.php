<?php 

require_once("../includes/initialize.php");

global $session;

$folder = $_GET['folder'];
$file_name = $_POST['file_name'];

$path = "groups/".Group::get_by_id($session->user_group_id)->name."/files/".$folder."/".$file_name;

$result = "ERROR";

if(unlink($path))
{
	$result = "success";
}

echo $folder.", ".$path;

?>