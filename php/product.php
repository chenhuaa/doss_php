<?php
header('Content-Type:application/json;charset=utf-8');
@$kw=$_REQUEST['kw'];
require('init.php');
if(!$kw){
    $sql="SELECT * FROM product_prsList";
}else{
    $sql="SELECT * FROM product_prsList WHERE pname LIKE '%$kw%'";
}
$result=mysqli_query($conn,$sql);
$list=mysqli_fetch_all($result,MYSQLI_ASSOC);
if($list===[]){
    echo '{"code":5,"msg":"未搜索到相应数据"}';
}else{
    echo json_encode($list);
}


