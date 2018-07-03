<?php
include 'include/common.inc.php';

include ROOT.'/model/fangan.php';
$fangan=$_SESSION["fangan"];
if(empty($fangan)){
    $fangan=new FanganMgr($dbmgr);
    $fangan=$fangan->list([]);
    $fangan=htmlDecodeList($fangan,array("content"=>"content"));
	if($CONFIG["debug"]==false){
		$_SESSION["fangan"]=$fangan;
	}
}	

$id=$_GET["id"]+0;
if($id==0){
    $smarty->assign("fangan",$fangan);
    $smarty->display(ROOT."/templates/fangan.html");
}else{
    $prev=null;
    $next=null;
    $info=null;
    for($i=0;$i<count($fangan);$i++){
        $fan=$fangan[$i];
        if($fan["id"]==$id){
            $info=$fan;
            if($i>0){
                $prev=$fangan[$i-1];
            }
            if($i<count($fangan)-1){
                $next=$fangan[$i+1];
            }
        }
    }
    if($info==null){
        $smarty->assign("fangan",$fangan);
        $smarty->display(ROOT."/templates/fangan.html");
    }else{
        $smarty->assign("prev",$prev);
        $smarty->assign("next",$next);
        $smarty->assign("info",$info);
        $smarty->display(ROOT."/templates/fangan_detail.html");
	}
}


?>