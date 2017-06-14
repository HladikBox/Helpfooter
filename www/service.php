<?php
include 'include/common.inc.php';

$smarty->assign("menumodule","service");
$smarty->assign("submenu",$serviceconfig["category"]);
$smarty->assign("submenu_count",$serviceconfig["category_count"]);

$page_code=explode("/",$_SERVER["REDIRECT_URL"]);
if($page_code[1]=="service"){

	if($page_code[2]==""){
		$page=$serviceconfig;
	}else{
		$pagecode=$page_code[2];
		$smarty->assign("submenu_code",$pagecode);
		include_once ROOT."/model/service.php";
		$serviceMgr=new ServiceMgr($dbmgr);
		$service=$serviceMgr->_list(array("status"=>"A","markcode"=>$pagecode),"");
		if(count($service)==0){
			Header("Location: /");
			exit;
		}
		$page=$serviceMgr->get($service[0]["id"]);
	}


}else{
	Header("Location: /");
	exit;
}


$page["content"]=htmlspecialchars_decode($page["content"]);
$smarty->assign("page",$page);


$smarty->display(ROOT."/templates/service.html");

?>