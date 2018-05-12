<?php
include ("db.php");
$email=$_POST['email'];
$name=$_POST['name'];
$position=$_POST['position'];
$branch=$_POST['branch'];
$password=$_POST['password'];
$cpassword=$_POST['cpassword'];

if ($password==$cpassword){
    $q1="insert into signin (email, password) values ('$email', '$password')";
    $res1=mysqli_query($db,$q1);
    $q2="insert into info (email, name, position, branch) values ('$email', '$name', '$position', '$bramch')";
    $res2=mysqli_query($db,$q2);
    session_start();
    $_SESSION['email']=$email;
    header("location: home.php");
}
else
    echo "Password didn't match. Please Try Again. <br>";
    echo "<a href='signup.html'>Go Back</a>";
?>