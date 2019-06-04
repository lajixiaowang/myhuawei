<?php
    //登陆逻辑
    //1、连接数据库
    //2、获取前端传过来的内容
    //3、检查是否正确，成功就输出注册成功，否则跳转回去
    //<----------------------
    
    include('./commen.php');
    $username=$_REQUEST['username'];
    $password=$_REQUEST['password'];
    $sql="select * from user where user_name = '$username' and user_password = '$password'";
   // echo $sql;
   $result=$mysqli->query($sql);
   if($result->num_rows>0){
      echo "<script>location.href='https://www.vmall.com/';</script>";
   }else{
       echo '{"mes":"账号或密码错误","has":true}';   
    }
 
?>