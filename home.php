<?php
session_start();
if (isset($_SESSION['forumName'])){
    unset($_SESSION['forumName']);
}
include ("db.php");
?>
<html>
    <head>
        <title>Home</title>
        <script>
            var ajaxRequest =  new XMLHttpRequest();
            function ajaxResponse1()
			{
				if (ajaxRequest.readyState != 4)
					return;
				else {
					if (ajaxRequest.status == 200)
					{
						document.getElementById("forums").innerHTML = ajaxRequest.responseText;
					}
					else {
						alert("Request failed: " + ajaxRequest.statusText);
					}
				}
			}
			function getList()
			{

				if (!ajaxRequest) {
					document.getElementById("forums").innerHTML = "Request error!";
					return; 
				}
				var myURL = "options.php";
				
				ajaxRequest.onreadystatechange = ajaxResponse1;
				ajaxRequest.open("GET", myURL);
				ajaxRequest.send(null);
			}
        </script>
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
    <body onload="getList()">
        <div>
            <div class="options">
                <p><a href="home.php">Home</a></p>
                <?php
                if (!isset($_SESSION['email'])){
                    echo "<p><a href='signin.html'>Sign In</a></p>";
                }
                else{
                    echo "<p><a href='logout.php'>Logout</a></p>";
                }
                ?>
            </div>
            <div class="content">
                <h1>Welcome to the forum</h1>
                <?php
                if (!isset($_SESSION['email']))
                    echo "<p> Please Sign In to veiw all the different forums</p>";
                else{
                    $email=$_SESSION['email'];
                    $q1="select * from signin where email='$email'";
                    $res1=mysqli_query($db,$q1);
                    $r=mysqli_fetch_array($res1);
                    echo "<p>You have ".$r['report']." reports against you. If you get 5 or more, You will not be allowed to post anything or create forums anymore.</p>";
                }
                ?>
                <div id = "forums">
                </div>
            </div>
        </div>
    </body>
</html>