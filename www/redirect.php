<?php

$ckk=explode("/",$_SERVER["REDIRECT_URL"]);
if($ckk[1]==""){
	include "index.php";
}
if($ckk[1]=="about"){
	include "about.php";
}elseif($ckk[1]=="service"){
	include "service.php";
}elseif($ckk[1]=="product"){
	include "product.php";
}else{
	die("error");
}


?>