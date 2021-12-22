<?php
    // Auto load class when use functions in these class
    spl_autoload_register(function($class) {
        require_once "classes/$class.php";
    });
?>