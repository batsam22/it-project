<?php
session_start();

include ("db.php");

$q="select * from forums";
$res=mysqli_query($db,$q);
echo "<form action='forum.php' method='POST'>";
while ($r=mysqli_fetch_array($res)){ 
    $name=$r['name'];
    echo "<p><input type='radio' name='forumName' value='$name'>".$name."</p>";
}
echo "<input type='submit' value='Veiw this forum'></input>";
echo "</form>";
echo "<a href='addf.php'>Add a new forum</a>";
?>
