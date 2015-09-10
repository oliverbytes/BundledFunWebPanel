<?php 
require_once(INCLUDES_PATH.DS."config.php");
require_once(CLASSES_PATH.DS."database.php");

class Question extends DatabaseObject{
	
	// TABLE tbl_questions PROPERTIES
	protected static $table_name = T_QUESTIONS;
	protected static $col_id = C_QUESTION_UNIQUE_ID;
	
	// QUESTION PROPERTIES
	public $id;
	public $group_id;
	public $text;
	public $difficulty;
	public $answer;
	public $choice_a;
	public $choice_b;
	public $choice_c;
	public $type;
	public $points;
	public $timer;

	// FILE
	public $file_id;
	public $file_name;
	public $file_type;
	public $file_size;
	
	private $temp_name;

	public function attach_file($file){
		$this->temp_name = $file['tmp_name'];
		$this->file_name = basename($file['name']);
		$this->file_type = $file['type'];
		$this->file_size = $file['size'];
		return true;
	}

	public function save_file(){
		$file_path = "..".DS."public".DS."groups".DS."Default".DS.$this->difficulty.DS.$this->type."s".DS.$this->file_name;
		
		if(file_exists($file_path)){

		}else{ // if file name does not exist
			if(move_uploaded_file($this->temp_name, $file_path)){
				
				return true;
			}else{
				// error
				return false;	
			}
		}
	}
	
	public function create(){
		global $db;
		$sql = "INSERT INTO " . self::$table_name . " (";
		$sql .= C_QUESTION_GROUP_ID .", ";
		$sql .= C_QUESTION_TEXT .", ";
		$sql .= C_QUESTION_DIFFICULTY .", ";
		$sql .= C_QUESTION_ANSWER .", ";
		$sql .= C_QUESTION_CHOICE_A .", ";
		$sql .= C_QUESTION_CHOICE_B .", ";
		$sql .= C_QUESTION_CHOICE_C .", ";
		$sql .= C_QUESTION_FILE .", ";
		$sql .= C_QUESTION_TYPE .", ";
		$sql .= C_QUESTION_POINTS .", ";
		$sql .= C_QUESTION_TIMER;
		$sql .=") VALUES ('";
		$sql .= $db->escape_string($this->group_id) . "', '";
		$sql .= $db->escape_string($this->text) . "', '";
		$sql .= $db->escape_string($this->difficulty) . "', '";
		$sql .= $db->escape_string($this->answer) . "', '";
		$sql .= $db->escape_string($this->choice_a) . "', '";
		$sql .= $db->escape_string($this->choice_b) . "', '";
		$sql .= $db->escape_string($this->choice_c) . "', '";
		$sql .= $db->escape_string($this->file_name) . "', '";
		$sql .= $db->escape_string($this->type) . "', '"; 
		$sql .= $db->escape_string($this->points) . "', '";
		$sql .= $db->escape_string($this->timer) . "' ";
		$sql .=")";
		if($db->query($sql)){
			$this->id = $db->get_last_id();
			$this->save_file();
			return true;
		}else{
			return false;	
		}
	}
	
	public function update(){
		global $db;
		$sql = "UPDATE " 				. self::$table_name . " SET ";
		$sql .= C_QUESTION_GROUP_ID 	. "='" . $db->escape_string($this->group_id) . "', ";
		$sql .= C_QUESTION_TEXT 		. "='" . $db->escape_string($this->text) . "', ";
		$sql .= C_QUESTION_DIFFICULTY 	. "='" . $db->escape_string($this->difficulty) . "', ";
		$sql .= C_QUESTION_ANSWER 		. "='" . $db->escape_string($this->answer) . "', ";
		$sql .= C_QUESTION_CHOICE_A 	. "='" . $db->escape_string($this->choice_a) . "', ";
		$sql .= C_QUESTION_CHOICE_B 	. "='" . $db->escape_string($this->choice_b) . "', ";
		$sql .= C_QUESTION_CHOICE_C 	. "='" . $db->escape_string($this->choice_c) . "', ";
		$sql .= C_QUESTION_FILE 		. "='" . $db->escape_string($this->file_name) . "', ";
		$sql .= C_QUESTION_TYPE 		. "='" . $db->escape_string($this->type) . "', ";
		$sql .= C_QUESTION_POINTS 		. "='" . $db->escape_string($this->points) . "', ";
		$sql .= C_QUESTION_TIMER 		. "='" . $db->escape_string($this->timer) . "' ";
		$sql .="WHERE " . self::$col_id . "=" . $db->escape_string($this->id) . "";
		$db->query($sql);
		return ($db->get_affected_rows() == 1) ? true : false;
	}
	
	public function delete(){
		global $db;
		$sql = "DELETE FROM " . self::$table_name . " WHERE " . self::$col_id . "=" . $this->id . "";
		$db->query($sql);
		return ($db->get_affected_rows() == 1) ? true : false;
	}
	
	protected static function instantiate($record){
		$this_class = new self;
		$this_class->id 		= $record[C_QUESTION_UNIQUE_ID];
		$this_class->group_id 	= $record[C_QUESTION_GROUP_ID];
		$this_class->text 		= $record[C_QUESTION_TEXT];
		$this_class->difficulty = $record[C_QUESTION_DIFFICULTY];
		$this_class->answer 	= $record[C_QUESTION_ANSWER];
		$this_class->choice_a 	= $record[C_QUESTION_CHOICE_A];
		$this_class->choice_b 	= $record[C_QUESTION_CHOICE_B];
		$this_class->choice_c	= $record[C_QUESTION_CHOICE_C];
		$this_class->file_name	= $record[C_QUESTION_FILE];
		$this_class->type 		= $record[C_QUESTION_TYPE];
		$this_class->points		= $record[C_QUESTION_POINTS];
		$this_class->timer		= $record[C_QUESTION_TIMER];
		return $this_class;
	}
	
	public static function get_all_by_group_id_json($group_id=""){
		global $db;
		$sql = "SELECT * FROM " . static::$table_name . " WHERE ". C_QUESTION_GROUP_ID ." = '" . $group_id . "' ";
		$questions = static::get_by_sql($sql);
		return $questions;
	}

	public static function get_all_by_group_name($group_name=""){
		global $db;
		$group_id = Group::get($group_name)->id;
		$sql = "SELECT * FROM " . static::$table_name . " WHERE ". C_QUESTION_GROUP_ID ." = '" . $group_id . "' ";
		$questions = static::get_by_sql($sql);
		return $questions;
	}
}

?>