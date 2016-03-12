<?php
/**
 * Created by PhpStorm.
 * User: ShahAli Bogdadi
 * Date: 3/12/2016
 * Time: 11:28 PM
 */

    session_start();

    $_SESSION['user-email']= "";
    $_SESSION['login'] = "False";
    echo("<script>location.href='login.php'</script>");

?>