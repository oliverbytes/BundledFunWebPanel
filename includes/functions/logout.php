<?php 
require_once("../initialize.php");
global $session;
if($session->is_logged_in()){
	$session->logout($session->user_unique_id);	
	redirect_to("../../public/index.php");
}else{
	redirect_to("../../public/layouts/form_login.php");
}
?>