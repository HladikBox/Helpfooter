<?php
include 'include/common.inc.php';

$smarty->assign("menumodule","product");
$smarty->assign("submenu",$productconfig["category"]);
$smarty->assign("submenu_count",$productconfig["category_count"]);

$page_code=explode("/",$_SERVER["REDIRECT_URL"]);
if($page_code[1]=="product"){

	if($page_code[2]==""&&$_REQUEST["id"]>0){

		include_once ROOT."/model/product.php";
		$productMgr=new productMgr($dbmgr);
		$product=$productMgr->get($_REQUEST["id"]);
		if($product["id"]==""){
			Header("Location: /");
			exit;
		}
		$smarty->assign("product",$product);

		$smarty->display(ROOT."/templates/product_detail.html");
	}else{
		$pagecode=$page_code[2];
		$smarty->assign("submenu_code",$pagecode);
		include_once ROOT."/model/productcategory.php";
		$productcategoryMgr=new ProductcategoryMgr($dbmgr);
		$productcategory=$productcategoryMgr->_list(array("status"=>"A","markcode"=>$pagecode),"");
		if(count($productcategory)==0){
			Header("Location: /");
			exit;
		}
		$productcategory=$productcategory[0];
		//$page=$productMgr->get($product[0]["id"]);

		include_once ROOT."/model/product.php";
		$productMgr=new productMgr($dbmgr);
		$productbanner=$productMgr->_list(array("status"=>"A","is_categoryindex"=>"Y","category_id"=>$productcategory["id"]),"order by seq");
		$smarty->assign("productbanner",$productbanner[0]);

		$productlist=$productMgr->_list(array("status"=>"A","category_id"=>$productcategory["id"]),"order by seq");
		$smarty->assign("productlist",$productlist);

		$smarty->display(ROOT."/templates/product.html");
	}


}else{
	Header("Location: /");
	exit;
}


//$page["content"]=htmlspecialchars_decode($page["content"]);




?>