<?php 
require_once(INCLUDES_PATH.DS."config.php");
require_once(CLASSES_PATH.DS."database.php");

class User extends DatabaseObject{
	
	// TABLE tbl_users PROPERTIES
	protected static $table_name = T_USERS;
	protected static $col_id = C_USER_UNIQUE_ID;
	
	// USER PROPERTIES
	public $id;
	public $group_id;
	public $user_id;
	public $access_token;
	public $name;
	public $password;
	public $picture;
	public $high_score;
	public $time_elapsed;
	public $correct_answers;

	// FILE
	public $file_id;
	public $file_name;
	public $file_type;
	public $file_size;
	
	private $temp_name;
	protected $upload_dir = "images";
	protected $temp_dir = "temp_images";

	public function attach_file($file){
		$this->temp_name = $file['tmp_name'];
		$this->file_name = basename($file['name']);
		$this->file_type = $file['type'];
		$this->file_size = $file['size'];
		return true;
	}
	
	public function create(){
		global $db;
		$sql = "INSERT INTO " . self::$table_name . " (";
		$sql .= C_USER_GROUP_ID 		.", ";
		$sql .= C_USER_ID 				.", ";
		$sql .= C_USER_ACCESS_TOKEN 	.", ";
		$sql .= C_USER_NAME 			.", ";
		$sql .= C_USER_PASSWORD 		.", ";
		$sql .= C_USER_PICTURE 			.", ";
		$sql .= C_USER_HIGH_SCORE 		.", ";
		$sql .= C_USER_TIME_ELAPSED 	.", ";
		$sql .= C_USER_CORRECT_ANSWERS;
		$sql .=") VALUES ('";
		$sql .= $db->escape_string($this->group_id) 		. "', '";
		$sql .= $db->escape_string($this->user_id) 			. "', '";
		$sql .= $db->escape_string($this->access_token) 	. "', '";
		$sql .= $db->escape_string($this->name) 			. "', '";
		$sql .= $db->escape_string($this->password) 		. "', '";
		$sql .= $db->escape_string($this->picture) 			. "', '";
		$sql .= $db->escape_string($this->high_score) 		. "', '";
		$sql .= $db->escape_string($this->time_elapsed) 	. "', '";
		$sql .= $db->escape_string($this->correct_answers) 	. "' ";
		$sql .=")";

		if($db->query($sql)){
			$this->id = $db->get_last_id();
			return true;
		}else{
			return false;	
		}
	}

	public function save_file(){
		$file_path = "..".DS."public".DS."groups".DS."Default".DS."users".DS.$this->file_name;
		
		if(file_exists($file_path)){
			// $temp_image_path = SITE_ROOT.DS.'public'.DS.$this->temp_dir.DS.$this->file_name;
			// move_uploaded_file($this->temp_path, $temp_image_path);
			
			// $file = pathinfo($temp_image_path);
			// $image_name = $file['filename'];
			// $image_ext = $file['extension'];
			// $unique_id = self::get_max_id() + 1; // sql generated unique id
			
			// $target_path_old = SITE_ROOT.DS.'public'.DS.$this->temp_dir.DS.$this->file_name;
			// $target_path_new = SITE_ROOT.DS.'public'.DS.$this->temp_dir.DS.$image_name.$unique_id.".".$image_ext;
			// rename($target_path_old, $target_path_new);
			
			// $real_target_path = SITE_ROOT.DS.'public'.DS.$this->upload_dir.DS.$image_name.$unique_id.".".$image_ext;
			// copy($target_path_new, $real_target_path);
			// unlink($target_path_new); // delete the image from the temporary directory
 			
			// $this->file_name = $image_name.$unique_id.".".$image_ext; // set the new image file name
			
			// if(isset($this->id)){
			// 	if($this->update()){
			// 		//success
			// 		unset($this->temp_path);
			// 		return true;
			// 	}else{
			// 		//failed
			// 		return false;
			// 	}
			// }else{
			// 	if($this->create()){
			// 		//success
			// 		unset($this->temp_path);
			// 		return true;
			// 	}else{
			// 		//failed
			// 		return false;
			// 	}
			// }
			
		}else{ // if file name does not exist
			if(move_uploaded_file($this->temp_name, $file_path)){
				// if(isset($this->id)){
				// 	if($this->update()){
				// 		//success
				// 		unset($this->temp_path);
				// 		return true;
				// 	}else{
				// 		//failed
				// 		return false;
				// 	}
				// }else{
				// 	if($this->create()){
				// 		//success
				// 		unset($this->temp_path);
				// 		return true;
				// 	}else{
				// 		//failed
				// 		return false;
				// 	}
				// }
				return true;
			}else{
				// error
				return false;	
			}
		}
	}
	
	public function update(){
		global $db;
		$sql = "UPDATE " 				. self::$table_name . " SET ";
		$sql .= C_USER_GROUP_ID 		. "='" . $db->escape_string($this->group_id) 		. "', ";
		$sql .= C_USER_ID 				. "='" . $db->escape_string($this->user_id) 		. "', ";
		$sql .= C_USER_ACCESS_TOKEN 	. "='" . $db->escape_string($this->access_token) 	. "', ";
		$sql .= C_USER_NAME 			. "='" . $db->escape_string($this->name) 			. "', ";
		$sql .= C_USER_PASSWORD 		. "='" . $db->escape_string($this->password) 		. "', ";
		$sql .= C_USER_PICTURE 			. "='" . $db->escape_string($this->picture) 		. "', ";
		$sql .= C_USER_HIGH_SCORE 		. "='" . $db->escape_string($this->high_score) 		. "', ";
		$sql .= C_USER_TIME_ELAPSED 	. "='" . $db->escape_string($this->time_elapsed) 	. "', ";
		$sql .= C_USER_CORRECT_ANSWERS 	. "='" . $db->escape_string($this->correct_answers) . "' ";
		$sql .="WHERE " . self::$col_id . "=" . $db->escape_string($this->id) 				. "";
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
		$this_class->id 				= $record[C_USER_UNIQUE_ID];
		$this_class->group_id 			= $record[C_USER_GROUP_ID];
		$this_class->user_id 			= $record[C_USER_ID];
		$this_class->access_token 		= $record[C_USER_ACCESS_TOKEN];
		$this_class->name 				= $record[C_USER_NAME];
		$this_class->password 			= $record[C_USER_PASSWORD];
		$this_class->picture 			= $record[C_USER_PICTURE];
		$this_class->high_score 		= $record[C_USER_HIGH_SCORE];
		$this_class->time_elapsed		= $record[C_USER_TIME_ELAPSED];
		$this_class->correct_answers	= $record[C_USER_CORRECT_ANSWERS];
		return $this_class;
	}
	
	public static function get_all_by_group_id_json($group_id=""){
		global $db;
		$sql = "SELECT * FROM " . static::$table_name . " WHERE ". C_USER_GROUP_ID ." = '" . $group_id . "' ";
		$users = static::get_by_sql($sql);
		return $users;
	}

	public static function get_all_by_group_name($group_name=""){
		global $db;
		$group_id = Group::get($group_name)->id;
		$sql = "SELECT * FROM " . static::$table_name . " WHERE ". C_USER_GROUP_ID ." = '" . $group_id . "' ";
		$users = static::get_by_sql($sql);
		return $users;
	}

	public static function user_id_exists($user_id, $group_id){
		global $db;
		$sql = "SELECT * FROM " . self::$table_name . " WHERE " . C_USER_ID . " = '" . $user_id . "' AND " . C_USER_GROUP_ID . " = '" . $group_id . "' ";
		$result = $db->query($sql);
		return ($db->get_num_rows($result) == 1) ? true : false;
	}

	public static function authenticate($username="", $password=""){
		global $db;
		$username = $db->escape_string($username);
		$password 	= $db->escape_string($password);
		
		$sql = "SELECT * FROM " . self::$table_name;
		$sql .= " WHERE " 	. C_USER_ID . " = '" . $username . "'";
		$sql .= " AND " 	. C_USER_PASSWORD . " = '" . $password . "'";
		$sql .= " LIMIT 1";
		
		$result_array = self::get_by_sql($sql);

		$errors = new Error();
		$errors->exceptions = "does not exists";

		return !empty($result_array) ? json_encode($result_array) : json_encode(array($errors));
	}
}
?>