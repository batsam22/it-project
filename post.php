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

$q1="select * from signin where email='$email'";
$res1=mysqli_query($db,$q1);
$r=mysqli_fetch_array($res1);
if ($r['report']>=5){
    echo "<p>You Are NOT Allowed To Post Anymore</p>";
    echo "<p><a href=home.php>ok :( </a></p>";
}
else{
    $q="insert into $forum (email,content,date) values ('$email','$m','$date')";
    $res=mysqli_query($db,$q);
    header ("location: forum.php");
}

?>