<?php
require_once("../initialize.php");

if(isset($_GET['name']) && isset($_GET['username']) && isset($_GET['password'])){

	$errors = new Error();

	$user 	= new User();
	$user->name 		= htmlentities(trim($_GET['name']));
	$user->group_id 	= htmlentities(trim($_GET['group_id']));
	$user->user_id 		= htmlentities(trim($_GET['username']));
	$user->password 	= htmlentities(trim($_GET['password']));
	$user->access_token = md5($user->user_id);
	$user->picture 		= "default.jpg";
	$user->high_score 	= 0;
	$user->correct_answers 	= 0;
	$user->time_elapsed = "00:00";

	if(Group::group_exists($user->group_id)){
		if(User::user_id_exists($user->user_id, $user->group_id)){
		$errors->exceptions = "Username: " . $user->user_id . " already exists";
		}else{
			$user->create();
		}
	}else{
		$errors->exceptions = "The group: " . $user->group_id . " you're trying to register to does not exists";
	}

	if($errors != ""){
		$response = array($errors, $user);
	}else{
		$response = array($user);
	}

	echo json_encode($response);
}
?>