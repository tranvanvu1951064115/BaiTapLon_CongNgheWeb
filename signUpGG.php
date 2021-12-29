<?php 
    // Thiết lập tiêu đề tương ứng với từng trang
    $pageTitle = "SignUp | Twitter";
    // Lấy dữ liệu header từ tệp header
    include 'backend/shared/header.php';
?>
    <header>
    <section class="sign form">
        <div class="form-wrapper">
            <div class="sign-container text-center">
            <img src="https://img.icons8.com/fluency/48/000000/google-logo.png" style="width: 20px"/>
                <p>Đăng nhập bằng Google</p>
             </div>
             <hr>
            <div class="form-content mt-4 text-center normal " >
                <h3 class="form-title" >Sử dụng tài khoản Google của bạn</h3>
              
            <br><br>
            
            <!-- Login Form Starts HEre -->
            <form action="" method="POST" class="text-center">
            Username: 
            <input type="email" id="inputEmail" name="txtEmail" placeholder="Enter Email" >
            <label for="inputEmail" class="sr only"></label>
            <br><br>

            Password: 
            <input type="password" id="inputRerypePassword" name="password" placeholder="Enter Password">
            <lable for="inputRerypePassword" class="sr-only"></lable>
            <br><br>
            <input type="submit" name="submit" value="Login" class="btn-primary  rounded-pill ">
            </section>
    </header>
     <br><br>
                
                <footer class="form-footer">
                <ul>
                    <li><a href="#">Trợ giúp</a></li>
                    <li><a href="#">Chính khách quyền riêng tư</a></li>
                    <li><a href="#">Điều khoản dịch vụ</a></li>
                </footer>
            </div>
        </div>
   <?php 
   include 'backend/shared/footer.php';
   ?>
