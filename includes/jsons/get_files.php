<?php 
require_once("../initialize.php");

$group_name = $_GET["group_name"];

if(!Group::group_exists($group_name)){
    die("Group: " . $group_name . " does not exists.");
}

$directory = PUBLIC_PATH.DS."groups" .DS. $group_name .DS;

$image_files = new File();
$audio_files = new File();
$video_files = new File();

//----------------------------------------------------IMAGES------------------------------------------------------------//

$files = array();
$files["easy"] = array();
$files["medium"] = array();
$files["hard"] = array();

// IMAGES EASY
$dir = opendir($directory . "easy".DS."images");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".jpg", 1) || strpos($file, ".png", 1) || strpos($file, ".jpeg", 1) || strpos($file, ".gif", 1))) {
        $files["easy"][$index] = $file;
        $index++;
    }
}
closedir($dir);

// IMAGES MEDIUM
$dir = opendir($directory . "medium".DS."images");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".jpg", 1) || strpos($file, ".png", 1) || strpos($file, ".jpeg", 1) || strpos($file, ".gif", 1))) {
        $files["medium"][$index] = $file;
        $index++;
    }
}
closedir($dir);

// IMAGES EASY
$dir = opendir($directory . "hard".DS."images");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".jpg", 1) || strpos($file, ".png", 1) || strpos($file, ".jpeg", 1) || strpos($file, ".gif", 1))) {
        $files["hard"][$index] = $file;
        $index++;
    }
}
closedir($dir);

$image_files->type = "image";
$image_files->files = $files;
$image_files->count = count($files["easy"]) + count($files["medium"]) + count($files["hard"]);

//----------------------------------------------------AUDIOS------------------------------------------------------------//

$files = array();
$files["easy"] = array();
$files["medium"] = array();
$files["hard"] = array();

// AUDIOS EASY
$dir = opendir($directory . "easy".DS."audios");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".mp3", 1) || strpos($file, ".wav", 1))) {
        $files["easy"][$index] = $file;
        $index++;
    }
}
closedir($dir);

// AUDIOS MEDIUM
$dir = opendir($directory . "medium".DS."audios");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".mp3", 1) || strpos($file, ".wav", 1))) {
        $files["medium"][$index] = $file;
        $index++;
    }
}
closedir($dir);

// AUDIOS EASY
$dir = opendir($directory . "hard".DS."audios");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".mp3", 1) || strpos($file, ".wav", 1))) {
        $files["hard"][$index] = $file;
        $index++;
    }
}
closedir($dir);

$audio_files->type = "audio";
$audio_files->files = $files;
$audio_files->count = count($files["easy"]) + count($files["medium"]) + count($files["hard"]);

//-----------------------------------------------VIDEOS-----------------------------------------------------------------//

$files = array();
$files["easy"] = array();
$files["medium"] = array();
$files["hard"] = array();

// AUDIOS EASY
$dir = opendir($directory . "easy".DS."videos");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".mp4", 1) || strpos($file, ".3gp", 1))) {
        $files["easy"][$index] = $file;
        $index++;
    }
}
closedir($dir);

// AUDIOS MEDIUM
$dir = opendir($directory . "medium".DS."videos");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".mp4", 1) || strpos($file, ".3gp", 1))) {
        $files["medium"][$index] = $file;
        $index++;
    }
}
closedir($dir);

// AUDIOS EASY
$dir = opendir($directory . "hard".DS."videos");
$index = 0;
while (false !== ($file = readdir($dir))) {
    if ($file != "." && $file != ".." && (strpos($file, ".mp4", 1) || strpos($file, ".3gp", 1))) {
        $files["hard"][$index] = $file;
        $index++;
    }
}
closedir($dir);

$video_files->type = "video";
$video_files->files = $files;
$video_files->count = count($files["easy"]) + count($files["medium"]) + count($files["hard"]);

$parent_files = array();
$parent_files[0] = $image_files;
$parent_files[1] = $audio_files;
$parent_files[2] = $video_files;

//echo json_encode($parent_files);

//echo "<pre>". print_r($parent_files, true) ."</pre>";

echo json_encode($parent_files);
?>