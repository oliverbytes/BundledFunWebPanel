<?php 
require_once("../includes/initialize.php"); 

global $session;

$groups = Group::get_all();

?>
<table>
  <thead>
    <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>USERNAME</th>
    <th>PASSWORD</th>
    </tr>
  </thead>
  
  <tbody>

  <?php 

  $index = 0;
  foreach($groups as $group) : 

  ?>

    <tr class="<?php if($index % 2 == 0){echo 'odd';}else{echo 'even';} ?>">
      <td><?php echo $group->id; ?></td>
      <td><?php echo $group->name; ?></td>
      <td><?php echo $group->username; ?></td>
      <td><?php echo $group->password; ?></td>
    </tr>
  
  <?php 

  $index++;
  endforeach; 

  ?>

  </tbody>

</table>

<script type="text/javascript" src="js/table.js"/></script>