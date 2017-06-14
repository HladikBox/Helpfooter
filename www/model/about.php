<?php
class AboutMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取关于我们页面列表，传入对应的搜索条件
public function _list($search_param,$orderby){

    $sql_where="";


    if(isset($search_param["seq"]))
    {
        $sql_where.=" and r_main.seq='".$search_param["seq"]."'";
    }
    if(isset($search_param["markcode"]))
    {
        $sql_where.=" and r_main.markcode like '%".$search_param["markcode"]."%'";
    }
    if(isset($search_param["name"]))
    {
        $sql_where.=" and r_main.name like '%".$search_param["name"]."%'";
    }
    if(isset($search_param["summary"]))
    {
        $sql_where.=" and r_main.summary like '%".$search_param["summary"]."%'";
    }
    if(isset($search_param["content"]))
    {
        $sql_where.=" and r_main.content like '%".$search_param["content"]."%'";
    }
    if(isset($search_param["status"]))
    {
        $sql_where.=" and r_main.status='".$search_param["status"]."'";
    }
    $sql="select  r_main.id  ,r_main.seq ,r_main.markcode ,r_main.name ,r_main.summary ,r_main.content ,r_main.status  from  tb_about r_main  where 1=1 $sql_where  and r_main.status<>'D' 
    $orderby";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array_all($query);

                return $result;

}
//获取关于我们页面详情, 传入对应的id
public function get($id){

  
    $sql="select  r_main.id  ,r_main.seq ,r_main.markcode ,r_main.name ,r_main.summary ,r_main.content ,r_main.status  from  tb_about r_main  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>