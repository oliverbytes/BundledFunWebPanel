<?php 
require_once("../includes/initialize.php"); 

global $session;

$users = User::get_all();

?>
<table>
  <thead>
    <tr>
    <th>ID</th>
    <th>PICTURE</th>
    <th>GROUP</th>
    <th>USERNAME</th>
    <th>PASSWORD</th>
    <th>NAME</th>
    <th>SCORE</th>
    <th>TIME</th>
    <th>CORRECT</th>
    <th>TOKEN</th>
    </tr>
  </thead>
  
  <tbody>

  <?php 

  $index = 0;
  foreach($users as $user) : 

  ?>

    <tr class="<?php if($index % 2 == 0){echo 'odd';}else{echo 'even';} ?>">
      <td><?php echo $user->id; ?></td>
      <td><?php echo $user->picture; ?></td>
      <td><?php echo $user->group_id; ?></td>
      <td><?php echo $user->user_id; ?></td>
      <td><?php echo $user->password; ?></td>
      <td><?php echo $user->name; ?></td>
      <td><?php echo $user->high_score; ?></td>
      <td><?php echo $user->time_elapsed; ?></td>
      <td><?php echo $user->correct_answers; ?></td>
      <td><?php echo $user->access_token; ?></td>
    </tr>
  
  <?php 

  $index++;
  endforeach; 

  ?>

  </tbody>

</table>

<script type="text/javascript" src="js/table.js"/></script>