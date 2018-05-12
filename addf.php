<?php
session_start();
if (!isset($_SESSION['email'])){
    header("location: signin.html");
}
if (isset($_SESSION['forumName'])){
    unset($_SESSION['forumName']);
}
include ("db.php");
?>
<html>
    <head>
        <title>Create Forum</title>
        <style>
            body{
                background:black;
                color:white;
            }
            a{
                color:white;
                text-decoration: none;
            }
            .options{
                float: left;
                text-align: center;
                padding: 5%;
                background-color:grey;
                padding-bottom:20%;
            }
            .content{
                font-family: verdana;
                padding: 5%;
                text-align: center;
                background-color: indigo;
                margin-left: 15%;
            }
        </style>
    </head>
    <body>
        <div class="options">
                <p><a href="home.php">Home</a></p>
                <p><a href="#" onclick="getList()">My Forums</a></p>
                <p><a href="logout.php">Logout</a></p>
        </div>
        <div class="content">
            <h1>Create Forum</h1>
            <form action="addf.php" method="POST">
                <p><input type="text" name="name" placeholder="Enter the forum name..."required></input></p>
                <p><input type="submit" value="Create"></input></p>
            </form>
        </div>


        <?php
        
        if(isset($_POST['name'])){
            $email=$_SESSION['email'];
            $q="select * from signin where email='$email'";
            $res=mysqli_query($db,$q);
            $r=mysqli_fetch_array($res);
            if ($r['report']>=5){
                echo "<p>You Are NOT Allowed To Post Anymore</p>";
                echo "<p><a href=home.php>ok :( </a></p>";
            }
            else{
                $name=$_POST['name'];
                $q1="create table $name (sno int(10) primary key auto_increment, email varchar(20), content varchar(1000), date varchar(11), foreign key(email) references signin(email))";
                $res1=mysqli_query($db,$q1);
                $q2="insert into forums (name) values ('$name')";
                $res2=mysqli_query($db,$q2) or die("Forum exists");
                header ("location:home.php");
            }
        }

        ?>
    </body>
</html>