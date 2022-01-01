<?php

$query = "SELECT * FROM posts ORDER BY post_id DESC";
$data = mysqli_query($con,$query);
// echo $data;
while($row = mysqli_fetch_assoc($data)){
    $post_text = $row['post_text'];
    $post_date = $row['post_date'];

?>
<div class="tweet__box">
    <div class="tweet__left">
        <img src="assets/images/avt.jpg" alt="">
    </div>
    <div class="tweet__body">
        <div class="tweet_header">
            <p class="tweet__name">Quang Hoang</p>
            <p class="tweet__username">@MrHia</p>
            <p class="tweet__date"><?php 
            $date=date_create("$post_date");
            echo date_format($date,"d/m");
            
            ?></p>
        </div>
        <p class="tweet_text"><?php echo $post_text; ?></p>
        <div class="tweet_icons">
            <a href=""><i class="far fa-comment"></i></a>
            <a href=""><i class="fa fa-reply"></i></a>
            <a href=""><i class="far fa-heart"></i></a>
            <a href=""><i class="fa fa-upload"></i></a>
            <a href=""><i class="far fa-char-bar"></i></a>
        </div>
    </div>
    <div class="tweet__del">
        <div class="dropdown">
            <button class="dropbtn">
                <span class="fa fa-ellipsis-h"></span>
            </button>
            <div class="dropdown-content">
                <a href="delete-tweet.php?del=<?php echo $row['post_id'];?>"><i class="far fa-trash-alt"></i><span>Delete</span></a>
            </div>
        </div>
    </div>
</div>

<?php
}
?>