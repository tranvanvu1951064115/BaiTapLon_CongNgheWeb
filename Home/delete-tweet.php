<?php
    require_once('db.php');
    if(isset($_GET["del"]))
    {
        $Del_ID = $_GET["del"];
        $sql = "delete from posts where post_id='$Del_ID'"; 
        
        $post_query =mysqli_query($con,$sql);
        if($sql){
            header("location: index.php");
        }
    }
?>