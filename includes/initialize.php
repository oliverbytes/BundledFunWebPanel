<?php 
defined('DS') ? null : define('DS', DIRECTORY_SEPARATOR);
//defined('SITE_ROOT') ? null : define('SITE_ROOT', DS.'home'.DS.'csntrvot'.DS.'public_html');
defined('SITE_ROOT') ? null : 		define('SITE_ROOT', DS.'xampp'.DS.'htdocs'.DS.'BundledFun');
defined('INCLUDES_PATH') ? null : 	define('INCLUDES_PATH', SITE_ROOT.DS.'includes');
defined('PUBLIC_PATH') ? null : 	define('PUBLIC_PATH', SITE_ROOT.DS.'public');
defined('CLASSES_PATH') ? null : 	define('CLASSES_PATH', INCLUDES_PATH.DS.'classes');
defined('FUNC_PATH') ? null : 		define('FUNC_PATH', INCLUDES_PATH.DS.'functions');defined('PHP_MAILER') ? null : define('PHP_MAILER', INCLUDES_PATH.DS.'PHPMailer');

// HELPERS
require_once(INCLUDES_PATH.DS."config.php");
require_once(INCLUDES_PATH.DS."functions.php");

// CORE PHPS
require_once(CLASSES_PATH.DS."database.php");
require_once(CLASSES_PATH.DS."database_object.php");
require_once(CLASSES_PATH.DS."session.php");
require_once(PHP_MAILER.DS."class.phpmailer.php");
require_once(PHP_MAILER.DS."class.smtp.php");

// OBJECT PHPS
require_once(CLASSES_PATH.DS."group.php");
require_once(CLASSES_PATH.DS."user.php");
require_once(CLASSES_PATH.DS."question.php");
require_once(CLASSES_PATH.DS."file.php");
require_once(CLASSES_PATH.DS."error.php");
?>
