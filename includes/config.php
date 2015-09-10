<?php 
// ----------------------------------------- DATABASE PROPERTIES CONSTANTS  ----------------------------------------- \\

// FOR DEVELOPMENT
defined('DB_SERVER') ? null : 				define("DB_SERVER"					, "localhost");
defined('DB_USER') ? null : 				define("DB_USER"					, "root");
defined('DB_PASS') ? null : 				define("DB_PASS"					, "");
defined('DB_NAME') ? null : 				define("DB_NAME"					, "db_bundledfun");

// ----------------------------------------- TABLE CONSTANTS  ------------------------------------------------------- \\

defined('T_GROUPS') ? null :				define("T_GROUPS"					, "tbl_groups");
defined('T_USERS') ? null :					define("T_USERS"					, "tbl_users");
defined('T_QUESTIONS') ? null :				define("T_QUESTIONS"				, "tbl_questions");

// ----------------------------------------- TABLE GROUP FIELDS CONSTANTS  ------------------------------------------- \\

defined('C_GROUP_UNIQUE_ID') ? null : 		define("C_GROUP_UNIQUE_ID"			, "id");
defined('C_GROUP_NAME') ? null : 			define("C_GROUP_NAME"				, "name");
defined('C_GROUP_USERNAME') ? null : 		define("C_GROUP_USERNAME"			, "username");
defined('C_GROUP_PASSWORD') ? null : 		define("C_GROUP_PASSWORD"			, "password");

// ----------------------------------------- TABLE USER FIELDS CONSTANTS  ------------------------------------------- \\

defined('C_USER_UNIQUE_ID') ? null : 		define("C_USER_UNIQUE_ID"			, "id");
defined('C_USER_GROUP_ID') ? null : 		define("C_USER_GROUP_ID"			, "group_id");
defined('C_USER_ID') ? null : 				define("C_USER_ID"					, "user_id");
defined('C_USER_NAME') ? null : 			define("C_USER_NAME"				, "name");
defined('C_USER_PASSWORD') ? null : 		define("C_USER_PASSWORD"			, "password");
defined('C_USER_PICTURE') ? null : 			define("C_USER_PICTURE"				, "picture");
defined('C_USER_HIGH_SCORE') ? null : 		define("C_USER_HIGH_SCORE"			, "high_score");
defined('C_USER_TIME_ELAPSED') ? null : 	define("C_USER_TIME_ELAPSED"		, "time_elapsed");
defined('C_USER_CORRECT_ANSWERS') ? null :	define("C_USER_CORRECT_ANSWERS"		, "correct_answers");
defined('C_USER_ACCESS_TOKEN') ? null :		define("C_USER_ACCESS_TOKEN"		, "access_token");

// ----------------------------------------- TABLE QUESTIONS FIELDS CONSTANTS  -------------------------------------- \\

defined('C_QUESTION_UNIQUE_ID') ? null : 	define("C_QUESTION_UNIQUE_ID"		, "id");
defined('C_QUESTION_GROUP_ID') ? null : 	define("C_QUESTION_GROUP_ID"		, "group_id");
defined('C_QUESTION_TEXT') ? null : 		define("C_QUESTION_TEXT"			, "text");
defined('C_QUESTION_DIFFICULTY') ? null : 	define("C_QUESTION_DIFFICULTY"		, "difficulty");
defined('C_QUESTION_ANSWER') ? null : 		define("C_QUESTION_ANSWER"			, "answer");
defined('C_QUESTION_CHOICE_A') ? null : 	define("C_QUESTION_CHOICE_A"		, "choice_a");
defined('C_QUESTION_CHOICE_B') ? null : 	define("C_QUESTION_CHOICE_B"		, "choice_b");
defined('C_QUESTION_CHOICE_C') ? null : 	define("C_QUESTION_CHOICE_C"		, "choice_c");
defined('C_QUESTION_FILE') ? null : 		define("C_QUESTION_FILE"			, "file");
defined('C_QUESTION_TYPE') ? null : 		define("C_QUESTION_TYPE"			, "type");
defined('C_QUESTION_POINTS') ? null : 		define("C_QUESTION_POINTS"			, "points");
defined('C_QUESTION_TIMER') ? null : 		define("C_QUESTION_TIMER"			, "timer");

?>