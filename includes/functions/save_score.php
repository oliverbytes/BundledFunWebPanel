<?php
require_once("../initialize.php");

if(isset($_GET['user_id']) && isset($_GET['high_score']) && isset($_GET['time_elapsed']) && isset($_GET['correct_answers'])){

	$user 					= User::get_by_id(htmlentities(trim($_GET['user_id'])));
	$user->high_score 		= htmlentities(trim($_GET['high_score']));
	$user->correct_answers 	= htmlentities(trim($_GET['correct_answers']));
	$user->time_elapsed 	= htmlentities(trim($_GET['time_elapsed']));
	$user->update();

	echo "updated: " . $user->username;
}

?>