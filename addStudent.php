<?php
    include('pdo_connection.php');
    include('database_config.php');
    $db_user =$database_user;
    $db_pass =$databse_pass;
    $db_name =$database_name;

    $dbconnection = $connection_object->connection('localhost',$db_user,$db_pass,$db_name);
    if(isset($_POST['submit'])){
        $st_name =$_POST['name'];
        $st_address =$_POST['address'];
        $st_email =$_POST['email'];
        $st_password =$_POST['password'];
        $st_department =$_POST['department'];

        $sql = "INSERT INTO student_info(name,email,password,address) VALUES ('$st_name','$st_email','$st_password','$st_address')";
        $sql2 = "INSERT INTO student_result(department) VALUES ('$st_department')";

        if($dbconnection->query($sql) && $dbconnection->query($sql2)){
            echo("<script>alert('Data inserted successfully.')</script>");
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
    <title>Data insert to database</title>
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
    </style>
</head>
<body>
<form action="" method="post">
    <h3>Add Student</h3>
    <label for="">Name</label><input type="text" name="name" required><br>
    <label for="">Email</label><input type="email" name="email" required><br>
    <label for="">Password</label><input type="password" name="password" required><br>
    <label for="">Address</label><input type="text" name="address" required><br>
    <label for="">Department</label><input type="text" name="department" required><br>
    <label for=""></label><input type="submit" name="submit" value="Submit"><br>
</form>

</body>
</html>