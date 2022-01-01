<html>
<?php require_once "header.php"; ?>
<body>
<?php
        if(isset($_POST['btn_add_post'])){
            $Post_Text = $_POST['post_text'];
            if($Post_Text != ""){
                $sql="INSERT INTO posts(post_text,post_date) VALUES('$Post_Text',now())";
                $result= mysqli_query($con,$sql);
            }

        }
    ?>
    <div class="grid_container">
        <?php require_once "left-sidebar.php"; ?>
        <div class="main">
            <p class="page__title">Home</p>

            <div class="tweet__box tweet__add">
                <div class="tweet__left">
                    <img src="assets/images/avt.jpg" alt="">
                </div>
                <div class="tweet_body">
                    <form method="post"  enctype="multipart/form-data">
                        <textarea name="post_text" id="" cols="100%" rows="3" placeholder="what's happening?"></textarea>
                        <div class="tweet__icons-wrapper">
                            <div class="tweet__icons-add">
                                <i class="fa fa-image"></i>
                                <i class="fa fa-chart-bar"></i>
                                <i class="fa fa-smile"></i>
                                <i class="fa fa-calendar-alt"></i>
                                
                            </div>
                            <button class="button__tweet" type="submit" name = "btn_add_post">tweet</button>
                            <p></p>
                        </div>
                    </form>
                </div>

            </div>
            <?php require_once "tweet.php";?>
        </div>
        <?php require_once "right-sidebar.php"; ?>
    </div>
</body>
</html>