<?php
require_once("../includes/initialize.php");

$show_message = "";

global $session;
if($session->is_logged_in()){

}else{
        
}

if(isset($_POST['submit'])){

        $question = new Question;
  //$question->group_id   = $_POST['group_id'];
  $question->group_id   = 0;
  $question->text       = $_POST['text'];
  $question->difficulty = $_POST['difficulty'];
  $question->answer     = $_POST['answer'];
  $question->choice_a   = $_POST['choice_a'];
  $question->choice_b   = $_POST['choice_b'];
  $question->choice_c   = $_POST['choice_c'];
  $question->attach_file($_FILES['file']);
  $question->type       = $_POST['file_type'];
  $question->points     = $_POST['points'];
  $question->timer      = $_POST['timer'];
  $question->create();

        $show_message = "Question Added.";
}
echo $show_message;
?>
<link href="stylesheets/others.css" rel="stylesheet" />
<link href="stylesheets/dialog.css" rel="stylesheet" />
<link href="stylesheets/button.css" rel="stylesheet" />
<link href="stylesheets/nav_bar.css" rel="stylesheet" />

<div id="form" align="center">

  <h1>New Question</h1>
    <form action="#" enctype="multipart/form-data" method="post">       
      <fieldset>

          <label>Text</label>
          <textarea name="text" rows="3" cols="60"></textarea>
          <br />
          
          <label>Difficulty</label>
          <select name="difficulty">
            <option>easy</option>
            <option>medium</option>
            <option>hard</option>
          </select>

          <br />

          <label>Answer</label>
          <textarea name="answer" rows="3" cols="60"></textarea>
          <br />

          <label>Choice A</label>
          <textarea name="choice_a" rows="3" cols="60"></textarea>
          <br />

          <label>Choice B</label>
          <textarea name="choice_b" rows="3" cols="60"></textarea>
          <br />

          <label>Choice C</label>
          <textarea name="choice_c" rows="3" cols="60"></textarea>
          <br />

          <input type="hidden" name="MAX_FILE_SIZE" value="9999999999999999999999999999999"/>
          <input type="file" name="file" />

          <label>File Type</label>
          <select name="file_type">
            <option>audio</option>
            <option>image</option>
            <option>video</option>  
            <option>text</option>
            <option>location</option>
          </select>

          <br />

          <label>Points</label>
          <input type="text" name="points" />

          <label>Timer</label>
          <input type="text" name="timer" />

          <input type="submit" name="submit" value="Add" class="button"/>

      </fieldset>                               
    </form>        
</div>