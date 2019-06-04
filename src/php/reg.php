<?php
    include('./commen.php');
    $username = $_REQUEST['username'];
    $sql="select * from user where user_name='$username'";
    $result= $mysqli->query($sql);
    if($result->num_rows>0){
        echo '{"mes":"抱歉，用户名已存在","has":true,"status":"200"}';
    }else{
       echo '{"mes":"该用户名可以注册","has":false,"status":"200"}';
    }
?>