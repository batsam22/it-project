<?php
session_start();
if (!isset($_SESSION['email'])){
    header("location: home.php");
}
include ("db.php");
$email=$_REQUEST['email'];
$q1="select * from signin where email='$email'";
$res1=mysqli_query($db,$q1);
$r=mysqli_fetch_array($res1);
$report=$r['report'];
echo $report;
$p=$report+1;
$q2="update signin set report = $p where email='$email'";
$res2=mysqli_query($db,$q2);
header("location:forum.php");
?>