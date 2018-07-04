<?php
include 'include/common.inc.php';

include ROOT.'/model/news.php';
$news=$_SESSION["news"];
if(empty($news)){
    $news=new NewsMgr($dbmgr);
    $news=$news->list([]);
    $news=htmlDecodeList($news,array("content"=>"content"));
	if($CONFIG["debug"]==false){
		$_SESSION["news"]=$news;
	}
}	

$cat_id=$_GET["cat_id"]+0;

$catlist=$_SESSION["newscatlist"];
if(empty($catlist)){
    $catlist=new NewsMgr($dbmgr);
    $catlist=$catlist->catlist([]);
	if($CONFIG["debug"]==false){
		$_SESSION["newscatlist"]=$catlist;
	}
}	

$id=$_GET["id"]+0;
if($id==0){
    $smarty->assign("cat_id",$cat_id);
    $smarty->assign("catlist",$catlist);
    $smarty->assign("news",$news);
    $smarty->display(ROOT."/templates/news.html");
}else{
    $prev=null;
    $next=null;
    $info=null;
    for($i=0;$i<count($news);$i++){
        $fan=$news[$i];
        if($fan["id"]==$id){
            $info=$fan;
            if($i>0){
                $prev=$news[$i-1];
            }
            if($i<count($news)-1){
                $next=$news[$i+1];
            }
        }
    }
    if($info==null){
        $smarty->assign("news",$news);
        $smarty->display(ROOT."/templates/news.html");
    }else{
        $smarty->assign("prev",$prev);
        $smarty->assign("next",$next);
        $smarty->assign("info",$info);
        $n=[];
        for($i=0;$i<count($news);$i++){
            if($info["id"]!=$news[$i]["id"]&&$info["cat_id"]==$news[$i]["cat_id"]){
                $n[]=$news[$i];
            }
            if(count($n)>4){
                break;
            }
        }
        $smarty->assign("news",$n);
        $smarty->display(ROOT."/templates/news_detail.html");
	}
}


?>