<?php
include 'include/common.inc.php';
include ROOT.'/model/fangan.php';
include ROOT.'/model/news.php';

$fanganinindex=$_SESSION["fanganinindex"];
if(empty($fanganinindex)){
    $fanganinindex=new FanganMgr($dbmgr);
    $fanganinindex=$fanganinindex->list(array("inindex"=>"Y"));
    $fanganinindex=htmlDecodeList($fanganinindex,array("content"=>"content"));
	if($CONFIG["debug"]==false){
		$_SESSION["fanganinindex"]=$fanganinindex;
	}
}	


$newsinindex=$_SESSION["newsinindex"];
if(empty($newsinindex)){
    $newsinindex=new NewsMgr($dbmgr);
    $newsinindex=$newsinindex->list(array("inindex"=>"Y"));
    $newsinindex=htmlDecodeList($newsinindex,array("content"=>"content"));
	if($CONFIG["debug"]==false){
		$_SESSION["newsinindex"]=$newsinindex;
	}
}	


$smarty->assign("newsinindex",$newsinindex);
$smarty->assign("fanganinindex",$fanganinindex);

$smarty->display(ROOT."/templates/index.html");

?>