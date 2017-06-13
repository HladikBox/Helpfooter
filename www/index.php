<?php
include 'include/common.inc.php';


include ROOT.'/model/indexbanner.php';
$indexbannerMgr=new IndexbannerMgr($dbmgr);
$indexbanner=$indexbannerMgr->_list( array('status' =>'A' )," order by seq");
for ($i=0; $i < count($indexbanner); $i++) { 
	$indexbanner[$i]["content"]=explode("\n", $indexbanner[$i]["content"]);
}
$smarty->assign("indexbanner",$indexbanner);


include ROOT.'/model/indexpage.php';
$indexpageMgr=new IndexpageMgr($dbmgr);
$page=$indexpageMgr->get(0);
$page["title"]=$setting["slogan"];
$smarty->assign("page",$page);



include ROOT.'/model/product.php';
$productMgr=new ProductMgr($dbmgr);
$product=$productMgr->_list( array('status' =>'A',"is_index"=>"Y" )," order by seq limit 0,3");
$smarty->assign("product",$product);


include ROOT.'/model/news.php';
$newsMgr=new newsMgr($dbmgr);
$news=$newsMgr->_list( array('status' =>'A',"is_index"=>"Y" )," order by published_date desc limit 0,3");
$smarty->assign("news",$news);

$smarty->display(ROOT."/templates/index.html");

?>