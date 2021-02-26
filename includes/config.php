<?php
$user = '3622845_genshin';
$pass = 'zqXkm}GB3XwxBpE}';
$host = 'fdb29.atspace.me';
$db = '3622845_genshin';
if(strpos($_SERVER['HTTP_HOST'], 'localhost') !== false){
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

