<?php
include 'include/common.inc.php';

include ROOT.'/model/fangan.php';
$fanganinindex=$_SESSION["fanganinindex"];
if(empty($fanganinindex)){
    $fanganinindex=new FanganMgr($dbmgr);
    $fanganinindex=$fanganinindex->list(array("inindex"=>"Y"));
    $fanganinindex=htmlDecodeList($fanganinindex,array("content"=>"content"));
	if($CONFIG["debug"]==false){
		$_SESSION["fanganinindex"]=$fanganinindex;
	}
}	
$smarty->assign("fanganinindex",$fanganinindex);

$smarty->display(ROOT."/templates/index.html");

?>