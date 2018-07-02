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

include ROOT.'/model/website.php';
$website=$_SESSION["website"];
if(empty($website)){
    $website=new WebsiteMgr($dbmgr);
    $website=$website->config(0);
    $arr[]=$website;
    //$arr=htmlDecodeList($arr,array("name"=>"name".$lang,"shortname"=>"shortname".$lang,"contact"=>"contact".$lang,"footer"=>"footer".$lang));
    //$website=$arr[0];
	if($CONFIG["debug"]==false){
		$_SESSION["website"]=$website;
	}
}	

$smarty->assign("website",$website);
$smarty->assign("seo_title",$website["seo_title"]);
$smarty->assign("seo_keywords",$website["seo_keywords"]);
$smarty->assign("seo_description",$website["seo_description"]);

$smarty->assign("uploadpath",$CONFIG["upload"]);


function htmlDecodeList($list,$arr){
    
    for($i=0;$i<count($list);$i++){
        foreach($arr as $k=>$v){
            $list[$i][$k]=htmlspecialchars_decode($list[$i][$v]);
        }
    }
    return $list;
}

function htmlDecode($rs,$arr){
    
    foreach($arr as $k=>$v){
      $rs[$k]=htmlspecialchars_decode($rs[$v]);
    }
    return $rs;
}

function makeArrayIndex($arr,$code,$value){
    $ret=array();
    foreach($arr as $k=>$v){
       $ret[$v[$code]]=$v[$value];
    }
    return $ret;
}


function setLeftNav($title,$list){
    Global $smarty;
    $smarty->assign("leftnavtitle",$title);
    $smarty->assign("leftnavcount",count($list));
    $smarty->assign("leftnav",$list);
}



?>