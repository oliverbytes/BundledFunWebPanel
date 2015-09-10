<?php
require_once("../includes/initialize.php");

$message = "";
if(isset($_GET['user_unique_id'])){
	$passed_user_id = $_GET['user_unique_id'];
	$user = User::get_by_strid($passed_user_id);
}else{
	$message = "User not found";
}

if(isset($_POST['submit_update'])){
	$username 		= htmlentities(trim($_POST['username']));
	$password 		= htmlentities(trim($_POST['password']));
	$passed_user_id = $_GET['user_unique_id'];
	
	global $db;
	$user = User::get_by_strid($passed_user_id);
	$user->username = $username;
	$user->password = $password;
	$user->update();
	$message .= "Successfully Updated.";
	redirect_to("index.php");
}
echo $message;
?>
<link href="stylesheets/others.css" rel="stylesheet" type="text/css" />
<link href="stylesheets/dialog.css" rel="stylesheet" type="text/css" />
<link href="stylesheets/button.css" rel="stylesheet" type="text/css" />
<link href="stylesheets/nav_bar.css" rel="stylesheet" type="text/css" />

<div id="form" align="center">
  <h1><?php echo Member::get_by_strid($user->member_id)->name; ?></h1>
    <form action="#" method="post">	
      <fieldset>
      		<label>Userame</label>
            <input type="text" name="username" value="<?php echo $user->username; ?>"/>
            
            <label>Password</label>
            <input type="password" name="password" value="<?php echo $user->password; ?>" />
           <input type="submit" name="submit_update" value="Update" class="button"/>

      </fieldset>				
    </form>	   
</div>