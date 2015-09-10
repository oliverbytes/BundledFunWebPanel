<?php 
require_once("../initialize.php");

$group_name = $_GET["group_name"];

if(!Group::group_exists($group_name)){
    die("Group: " . $group_name . " does not exists.");
}

$questions = Question::get_all_by_group_name($group_name);

echo json_encode($questions);
//echo "<pre>". print_r($questions, true) ."</pre>";

?>