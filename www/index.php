<?php
include 'include/common.inc.php';


include ROOT.'/model/indexbanner.php';
$indexbannerMgr=new IndexbannerMgr($dbmgr);
$indexbanner=$indexbannerMgr->_list( array('status' =>'A' )," order by seq");
for ($i=0; $i < count($indexbanner); $i++) { 
	$indexbanner[$i]["content"]=explode("\n", $indexbanner[$i]["content"]);
}
$smarty->assign("indexbanner",$indexbanner);



$smarty->display(ROOT."/templates/index.html");

?>