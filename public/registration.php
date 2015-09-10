<?php
require_once("../includes/initialize.php");
$message = "";

if($session->is_logged_in()){
	//redirect_to("index.php");
}

if(isset($_POST['submit'])){

	$group 	= new Group();
	$group->name 		= htmlentities(trim($_POST['group_name']));
	$group->username 	= htmlentities(trim($_POST['username']));
	$group->password 	= htmlentities(trim($_POST['password']));

	if(Group::group_exists($group->name) || Group::username_exists($group->username)){
		die("Group: " . $group->name . " or Username:" . $group->username . " already exists!");
	}else{
		$group->create();
		$folder_path = "groups/".  $group->name . "/";

		if (!mkdir($folder_path, 0700)) {
	    	die("Folder" .  $group->name . " already exists!");
		}else{
			// USERS FOLDER
			mkdir($folder_path . "users", 0700);

			// EASY FOLDER
			mkdir($folder_path . "easy", 0700);
			mkdir($folder_path . "easy/images", 0700);
			mkdir($folder_path . "easy/audios", 0700);
			mkdir($folder_path . "easy/videos", 0700);

			// MEDIUM FOLDER
			mkdir($folder_path . "medium", 0700);
			mkdir($folder_path . "medium/images", 0700);
			mkdir($folder_path . "medium/audios", 0700);
			mkdir($folder_path . "medium/videos", 0700);

			// HARD FOLDER
			mkdir($folder_path . "hard", 0700);
			mkdir($folder_path . "hard/images", 0700);
			mkdir($folder_path . "hard/audios", 0700);
			mkdir($folder_path . "hard/videos", 0700);
		}
	}
}
?>

<!doctype html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Register</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<div class="container">
		<form action="#" method="post">
		<label for="group_name">Group Name:</label>
		<input type="name" name="group_name" placeholder="Group Name">
		<label for="group_name">Username:</label>
		<input type="name" name="username" placeholder="Username">
		<label for="password">Password:</label>
		<input type="password" name="password" placeholder="password">
		<div id="lower">
		<input type="submit" name="submit" value="Register">
		</div>
		</form>
	</div>
</body>
</html>	