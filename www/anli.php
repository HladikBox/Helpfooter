<?php
include 'include/common.inc.php';

include ROOT.'/model/anli.php';
$anli=$_SESSION["anli"];
if(empty($anli)){
    $anli=new AnliMgr($dbmgr);
    $anli=$anli->list([]);
    $anli=htmlDecodeList($anli,array("content"=>"content"));
	if($CONFIG["debug"]==false){
		$_SESSION["anli"]=$anli;
	}
}	

$catlist=$_SESSION["catlist"];
if(empty($catlist)){
    $catlist=new AnliMgr($dbmgr);
    $catlist=$catlist->catlist([]);
	if($CONFIG["debug"]==false){
		$_SESSION["catlist"]=$catlist;
	}
}	


$cat_id=$_GET["cat_id"]+0;

$id=$_GET["id"]+0;
if($id==0){
    $smarty->assign("cat_id",$cat_id);
    $smarty->assign("catlist",$catlist);
    $smarty->assign("anli",$anli);
    $smarty->display(ROOT."/templates/anli.html");
}else{
    $prev=null;
    $next=null;
    $info=null;
    for($i=0;$i<count($anli);$i++){
        $fan=$anli[$i];
        if($fan["id"]==$id){
            $info=$fan;
            if($i>0){
                $prev=$anli[$i-1];
            }
            if($i<count($anli)-1){
                $next=$anli[$i+1];
            }

        }
    }
    if($info==null){
    $smarty->assign("cat_id",$cat_id);
		$smarty->assign("catlist",$catlist);
        $smarty->assign("anli",$anli);
        $smarty->display(ROOT."/templates/anli.html");
    }else{
		$smarty->assign("prev",$prev);
        $smarty->assign("next",$next);
        $smarty->assign("info",$info);
        $smarty->display(ROOT."/templates/anli_detail.html");
	}
}


?>