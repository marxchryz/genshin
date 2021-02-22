<?php
if($_SERVER['HTTP_HOST'] === 'localhost:1234'){
  $user = 'pmauser';
  $pass = 'Pm4u53r!';
  $host = 'localhost';
  $db = 'genshin';
}
$conn = mysqli_connect($host, $user, $pass, $db);

if(mysqli_connect_errno()){
  echo "Error occured while establishing connection into the database." . mysqli_connect_error();
}
?>

