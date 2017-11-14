<?php
header('Content-Type:application/json;charset=utf-8');
require('init.php');
$sql="SELECT img,url FROM index_banners";
$result=mysqli_query($conn,$sql);
$list=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($list);


