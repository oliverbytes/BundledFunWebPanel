<?php require_once("../initialize.php"); ?>
<?php 
global $session;
if($session->is_logged_in()){
	if(isset($_GET['user_unique_id'])){
		$user_unique_id = $_GET['user_unique_id'];
		$user = User::get_by_strid($user_unique_id);
		$user->delete();
	}
}
redirect_to("../../public/admin/index.php");
?>