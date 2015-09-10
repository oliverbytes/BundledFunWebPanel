<?php
error_reporting(E_ALL);
ob_start();
require_once("../includes/initialize.php");

$message = "";

if($session->is_logged_in()){
	$message = "Logged in.";
}else{
	$message = "Not Logged in.";
}

if(isset($_POST['submit'])){
	$username = htmlentities(trim($_POST['username']));
	$password = htmlentities(trim($_POST['password']));
	$found_group = Group::authenticate($username, $password);
	if($found_group){
		$session->login($found_group);
		$message = "Logged in";
	}else{
		$message = "Username or Password Incorrect";	
	}
}

echo $message;
?>
<!doctype html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>Login</title>
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/styles.css">
</head>
<body>
	<div class="container">
		<form action="#" method="post">
		<label for="username">Username:</label>
		<input type="name" name="username" placeholder="username">
		<label for="password">Password:</label>
		<input type="password" name="password" placeholder="password">
		<div id="lower">
		<p><a href="#">Forgot your password?</a>
		<input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>
		<input type="submit" name="submit" value="Login">
		</div>
		</form>
	</div>
</body>
</html>	