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


include ROOT.'/model/address.php';
$addressMgr=new AddressMgr($dbmgr);
$address=$addressMgr->_list( array('status' =>'A' )," order by seq");
$smarty->assign("address",$address);

?>