<?php
require_once("../includes/initialize.php");

$show_message = "";

global $session;
if($session->is_logged_in()){

}else{
	
}

if(isset($_POST['submit'])){

	$user = new User;
  // $user->group_id         = $session->group_unique_id;
  // $user->user_id          = $_POST['user_id'];
  // $user->name             = $_POST['name'];
  // $user->password         = $_POST['password'];
  // $user->attach_file($_FILES['picture']);
  // $user->high_score       = $_POST['high_score'];
  // $user->time_elapsed     = $_POST['time_elapsed'];
  // $user->correct_answers  = $_POST['correct_answers'];
  //$user->create();

  $user->attach_file($_FILES['picture']);
  echo "<pre>". print_r($_FILES['picture'], true) . "</pre>";
  echo $user->what($_FILES['picture']);
  $user->save();
	$show_message = "User Added.";
}
echo $show_message;
?>
<link href="stylesheets/others.css" rel="stylesheet" />
<link href="stylesheets/dialog.css" rel="stylesheet" />
<link href="stylesheets/button.css" rel="stylesheet" />
<link href="stylesheets/nav_bar.css" rel="stylesheet" />

<div id="form" align="center">

  <h1>Add User</h1>
    <form action="#" enctype="multipart/form-data" method="post">	
      <fieldset>
      		<label>Picture</label>
            <input type="hidden" name="MAX_FILE_SIZE" value="9999999999999999999999999999999"/>
			      <input type="file" name="picture" />
            
            <label>Name</label>
            <input type="text" name="name" />
            
            <label>Email</label>
            <input type="email" name="email" />

          <input type="submit" name="submit" value="Add User" class="button"/>

      </fieldset>				
    </form>	   
</div>
<div align="center">
<a href='index.php'>Go back to Home Page.</a>
</div>
