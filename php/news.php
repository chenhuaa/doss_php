<?php
require('init.php');
header('Content-Type:application/json;charset=utf-8');
@$pageNum=$_REQUEST['pageNum'] or die('{"code":2,"msg":"pageNum required"}');
@$origin=$_REQUEST['origin'] or die('{"code":3,"msg":"origin required"}');
if(!$pageNum){
    $pageNum=1;
}else{
    $pageNum=intval($pageNum);  //取整
}
$output=[
    'recordCount'=>0,	//符合条件的总记录数
	'pageSize'=>3,	//每页最多显示记录数
	'pageCount'=>0,	//总页数
	'pageNum'=>$pageNum,	//当前要显示的页码
	'data'=>[]	//当前页中的记录行
];

$sql="SELECT COUNT(*) FROM news_nList WHERE origin='$origin'";
$result=mysqli_query($conn,$sql);
$output['recordCount'] = intval(mysqli_fetch_row($result)[0]);

$output['pageCount'] = ceil($output['recordCount']/$output['pageSize']);

$start = ($output['pageNum']-1) * $output['pageSize'];	//从哪行开始读取，从0开始
$count = $output['pageSize'];	//一次最多读取的记录行数
$sql = "SELECT * FROM news_nList WHERE origin='$origin' LIMIT $start, $count";	//MySQL中的分页查询
$result = mysqli_query($conn,$sql);
$output['data'] = mysqli_fetch_all($result,MYSQLI_ASSOC);

echo json_encode($output);