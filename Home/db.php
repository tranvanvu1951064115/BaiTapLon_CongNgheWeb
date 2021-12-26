<?php
    $con=mysqli_connect("localhost","root","","twitter-home-database");
    if(!$con){
        die("Not connected");
    }
    ?>
<?php
    if(isset($_POST['btn_add_post'])){
        $POST_Text = $_POST['post_text'];
        if($POST_Text !=""){
            $sql = "INSERT INTO posts(post_text,post_date) VALUES('$POST_Text,now())";
            $result = mysql_query($con,$sql);
        }
    }
?>
