<?php
session_start();
if (!isset($_SESSION['email'])){
    header("location: home.php");
}
include ("db.php");

$email=$_SESSION['email'];
$date=date("d/m/y");
$m=$_POST["m"];
$forum=$_SESSION['forumName'];

$q="insert into $forum (email,content,date) values ('$email','$m','$date')";
$res=mysqli_query($db,$q);

header ("location: forum.php");

?>