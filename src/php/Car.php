<?php
include('./pro_comm.php');
$idList=$_REQUEST['idList'];
$sql="select*from huawei where id in ($idList)";
$res=$mysqli->query($sql);
$arr=array();
while($row=$res->fetch_assoc()){
    array_push($arr,$row);

}
$json=json_encode($arr);
echo $json;
$mysqli->close();
?>