<?php

session_start();
$id = isset($_SESSION['username']) ? $_SESSION['username'] : '';
echo 'welcome  ';
echo $id;

?>
<br>
<a href="logout.php">logout</a>