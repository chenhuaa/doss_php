<?php
header('Content-Type:application/json;charset=utf-8');

@$origin=$_REQUEST['origin'] or die('{"code":1,"msg":"origin required"}');

require('init.php');

$sql="SELECT i,img FROM slider WHERE origin = '$origin'";   //来源为origin的图片编号及路径
$result=mysqli_query($conn,$sql);
$list=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($list);