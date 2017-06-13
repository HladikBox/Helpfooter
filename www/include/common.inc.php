<?php
/*
 * Created on 2010-5-6
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
//set include path and config


define('ROOT', str_replace("\\", '/', substr(dirname(__FILE__), 0, -8)));	// -9 = 0-strlen('includes')-1;


//~ set php global variable to NULL, for security
unset($HTTP_ENV_VARS, $HTTP_POST_VARS, $HTTP_GET_VARS, $HTTP_POST_FILES, $HTTP_COOKIE_VARS);



//~ session start
session_start();



require ROOT.'/config.inc.php';
include ROOT.'/classes/mgr/smarty.cls.php';
include ROOT.'/core/common.inc.php';

$smarty->assign("uploadpath",$CONFIG["upload"]);

include ROOT.'/model/setting.php';
$settingMgr=new SettingMgr($dbmgr);
$setting=$settingMgr->get(0);
$smarty->assign("setting",$setting);



include ROOT.'/model/aboutconfig.php';
$aboutconfigMgr=new AboutconfigMgr($dbmgr);
$aboutconfig=$aboutconfigMgr->get(0);
$smarty->assign("aboutconfig",$aboutconfig);


include ROOT.'/model/serviceconfig.php';
$serviceconfigMgr=new ServiceconfigMgr($dbmgr);
$serviceconfig=$serviceconfigMgr->get(0);
$smarty->assign("serviceconfig",$serviceconfig);


include ROOT.'/model/newsconfig.php';
$newsconfigMgr=new NewsconfigMgr($dbmgr);
$newsconfig=$newsconfigMgr->get(0);
if($newsconfig["is_active"]=="Y"){
	include ROOT.'/model/newscategory.php';
	$newscategoryMgr=new NewscategoryMgr($dbmgr);
	$newscategory=$newscategoryMgr->_list(array("status"=>"A")," order by seq");
	$newsconfig["category"]=$newscategory;
	$newsconfig["category_count"]=count($newscategory);
}
$smarty->assign("newsconfig",$newsconfig);

include ROOT.'/model/productconfig.php';
$productconfigMgr=new ProductconfigMgr($dbmgr);
$productconfig=$productconfigMgr->get(0);
if($productconfig["is_active"]=="Y"){
	include ROOT.'/model/productcategory.php';
	$productcategoryMgr=new ProductcategoryMgr($dbmgr);
	$productcategory=$productcategoryMgr->_list(array("status"=>"A")," order by seq");
	$productconfig["category"]=$productcategory;
	$productconfig["category_count"]=count($productcategory);
}
$smarty->assign("productconfig",$productconfig);


include ROOT.'/model/address.php';
$addressMgr=new AddressMgr($dbmgr);
$address=$addressMgr->_list( array('status' =>'A' )," order by seq");
$smarty->assign("address",$address);

?>