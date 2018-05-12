<?php
session_start();
if (!isset($_SESSION['email'])){
    header("location: home.php");
}
if (isset($_POST['forumName'])){
    $_SESSION['forumName']=$_POST['forumName'];
}
include ("db.php");
?>
<style>
    body{
        background:black;
        color:white;
    }
    .content{
        font-family:verdana;
        padding: 5%;
        float: left;
        text-align: center;
        background-color:indigo;
        margin-left:2%;
    }
    .options{
        float: left;
        text-align: center;
        padding: 5%;
        background-color:grey;
        padding-bottom:20%;
    }
    .comment{
        background-color:black;
        border-radius: 100%
    }
    a{
        color:white;
        text-decoration: none;
    }
    textarea{
        font-family:ariel;
    }
</style>
<html>
    <head>
        <title>
            <?php
            echo $_SESSION['forumName'];
            ?>
        </title>
    </head>
    <body>
        <div class="options">
            <p><a href="home.php">Home</a></p>
            <p><a href="logout.php">Logout</a></p>
        </div>
        <div class="content">
            <?php
            $forum=$_SESSION['forumName'];
            $q="select * from $forum order by sno";
            $res=mysqli_query($db,$q);
            while ($r=mysqli_fetch_array($res)){
                echo "<div class='comment'>";
                echo "<p><h3>".$r['content']."</h3></p>";
                echo "<p><h4>by: ".$r['email']." ";
                echo $r['date']."</h4></p>";
                echo "</div>";
            }
            ?>
            <form action="post.php" method="POST">
                <p><textarea rows="5" cols="48" name="m" placeholder="share your thoughts..."></textarea></p>
                <p><input type="submit" value="Post"></input></p>
            </form>
            <div>
    </body>
</html>