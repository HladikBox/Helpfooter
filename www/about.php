<?php
include 'include/common.inc.php';

$smarty->assign("menumodule","about");
$smarty->assign("submenu",$aboutconfig["category"]);
$smarty->assign("submenu_count",$aboutconfig["category_count"]);

$page_code=explode("/",$_SERVER["REDIRECT_URL"]);
if($page_code[1]=="about"){

	if($page_code[2]==""){
		$page=$aboutconfig;
	}else{
		$pagecode=$page_code[2];
		$smarty->assign("submenu_code",$pagecode);
		include_once ROOT."/model/about.php";
		$aboutMgr=new AboutMgr($dbmgr);
		$about=$aboutMgr->_list(array("status"=>"A","markcode"=>$pagecode),"");
		if(count($about)==0){
			Header("Location: /");
			exit;
		}
		$page=$aboutMgr->get($about[0]["id"]);
	}
}


$page["content"]=htmlspecialchars_decode($page["content"]);
$smarty->assign("page",$page);


$smarty->display(ROOT."/templates/about.html");

?>