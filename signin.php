<?php
include ("db.php");
$email=$_POST['email'];
$password=$_POST['password'];
$q="select * from signin where email='$email'";
$res=mysqli_query($db,$q);
while ($r=mysqli_fetch_array($res)){
    if ($r['password'] == $password)
    {
        session_start();
        $_SESSION['email']=$email;
        header("location: home.php");
    }
    elseif($r['password']==NULL){
        echo "<script>alert('Invalid user')</script>";
        echo "<script>window.location.href='signin.html'</script>";
    }
    else{
        echo "<script>alert('Incorrect Password')</script>";
        echo "<script>window.location.href='signin.html'</script>";
    }
}
?>