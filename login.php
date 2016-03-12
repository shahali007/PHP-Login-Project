<?php
    include('pdo_connection.php');
    include('database_config.php');
    $db_user =$database_user;
    $db_pass =$databse_pass;
    $db_name =$database_name;

    $dbconnection = $connection_object->connection('localhost',$db_user,$db_pass,$db_name);
    if(isset($_POST['login'])){
        $st_email =$_POST['email'];
        $st_password =$_POST['password'];

        $loginSql = "SELECT * FROM student_info WHERE email='$st_email' AND  password='$st_password'";
        $loginData = $dbconnection->query($loginSql);
        $Row = $loginData->fetch(PDO::FETCH_ASSOC);

        $user_name = $Row['name'];
        $user_email = $Row['email'];
        $user_password = $Row['password'];

        if($user_email !="" && $user_password !=""){
            $_SESSION['user-email']= $user_email;
            $_SESSION['login'] = "True";

            echo("<script>alert('Login successfully.')</script>");
            echo("<script>location.href='welcome.php'</script>");
        }
        else{
            $string = ' Sorry! Try again.\n';
            echo "<script>alert(\"$string\")</script>";
        }
    }
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        form{
            width:300px;
            margin:50px auto;
        }
        label{
            width:100px;
            display:inline-block;
        }
        input{
            margin-bottom:10px;
            border:1px solid #f1f1f1;
            height:20px;
            padding-left:10px;
        }
        h3 {
            text-align: center;
            color: chartreuse;
        }
        a{
            color: chartreuse;
        }
    </style>
</head>
<body>
<form action="" method="post">
    <h3>Login</h3>
    <label for="">Email</label><input type="email" name="email" required><br>
    <label for="">Password</label><input type="password" name="password" required><br>
    <label for=""></label><input type="submit" name="login" value="Login">
    <a href="addStudent.php">New? Add Student</a>
</form>

</body>
</html>