<?php
$db_url='127.0.0.1';
$db_user='root';
$db_pwd='';
$db_dbname='doss';
$db_port=3306;
$conn = mysqli_connect($db_url,$db_user,$db_pwd,$db_dbname,$db_port);
mysqli_query($conn,"SET NAMES UTF8");

header('Content-Type:application/json;charset=utf-8');

//function fetchAll(tableName){
//	$sql="SELECT * FROM "+tableName;
//	$result=mysqli_query($conn,$sql);
//	if($result===false){
//		return 'sql err:'.$sql;
//	}
//	return mysqli_fetch_all($result,MYSQLI_ASSOC);
//}

