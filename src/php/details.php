<?php
include('./pro_comm.php');
$id=$_REQUEST['id'];
$sql="select*from huawei where id=$id";
$res=$mysqli->query($sql);
$row=$res->fetch_assoc();
$json=json_encode($row);
echo $json;
  $mysqli->close();
?>