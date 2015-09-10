<?php

require_once("../includes/initialize.php");

global $session;

$level = 100;

if($session->is_logged_in())
{
    $level = $session->user_level;
}

echo $level;
?>