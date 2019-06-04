<?php
 include('./pro_comm.php');

 $sql="select * from huawei";

 $res=$mysqli->query($sql);

 $arr=array();
 while($row = $res->fetch_assoc()){
    array_push($arr,$row);
}
 $json=json_encode($arr);
 echo $json;

 $mysqli->close();
?>