<?php
header('Content-Type:application/json;charset=utf-8');
@$pid=$_REQUEST['pid'] or die('{"code":4,"msg":"pid required"}');

require('init.php');

$output=[];

$sql="SELECT pname FROM product_prsList WHERE pid=$pid";
$result=mysqli_query($conn,$sql);
$pnameList=mysqli_fetch_row($result);
$sql="SELECT * FROM product_detail WHERE pid=$pid";
$result=mysqli_query($conn,$sql);
$imgList=mysqli_fetch_all($result,MYSQLI_ASSOC);
$sql="SELECT * FROM product_parm WHERE pid=$pid";
$result=mysqli_query($conn,$sql);
$pList=mysqli_fetch_assoc($result);

$output=[
    "pname"=>$pnameList[0],
    "img"=>$imgList,
    "cs"=>$pList
];
echo json_encode($output);