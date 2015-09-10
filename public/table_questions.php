<?php 
require_once("../includes/initialize.php"); 

global $session;

$questions = Question::get_all();

?>
<table>
  <thead>
    <tr>
    <th>ID</th>
    <th>GROUP</th>
    <th>TEXT</th>
    <th>DIFFICULTY</th>
    <th>ANSWER</th>
    <th>A</th>
    <th>B</th>
    <th>C</th>
    <th>TYPE</th>
    <th>POINTS</th>
    <th>TIMER</th>
    </tr>
  </thead>

  <tbody>

  <?php 

  $index = 0;
  foreach($questions as $question) : 

  ?>

    <tr class="<?php if($index % 2 == 0){echo 'odd';}else{echo 'even';} ?>">
      <td>
        <a href="delete.php?question_id=<?php echo $question->id; ?>">x</a>
        <a href="update.php?question_id=<?php echo $question->id; ?>">o</a>
      </td>
      <td><?php echo $question->id; ?></td>
      <td><?php echo $question->group_id; ?></td>
      <td><?php echo $question->text; ?></td>
      <td><?php echo $question->difficulty; ?></td>
      <td><?php echo $question->answer; ?></td>
      <td><?php echo $question->choice_a; ?></td>
      <td><?php echo $question->choice_b; ?></td>
      <td><?php echo $question->choice_c; ?></td>
      <td><?php echo $question->type; ?></td>
      <td><?php echo $question->points; ?></td>
      <td><?php echo $question->timer; ?></td>
    </tr>
  
  <?php 

  $index++;
  endforeach; 

  ?>

  </tbody>

</table>

<script type="text/javascript" src="js/table.js"/></script>

