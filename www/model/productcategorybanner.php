<?php
class ProductcategorybannerMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取产品分类横幅列表，传入对应的搜索条件
public function _list($search_param,$orderby){

    $sql_where="";


    if(isset($search_param["productcategory_id"]))
    {
        $sql_where.=" and r_main.productcategory_id='".$search_param["productcategory_id"]."'";
    }
    if(isset($search_param["productcategory_id_name"]))
    {
        $sql_where.=" and productcategory.name='".$search_param["productcategory_id_name"]."'";
    }
  
    if(isset($search_param["seq"]))
    {
        $sql_where.=" and r_main.seq='".$search_param["seq"]."'";
    }
    if(isset($search_param["pic"]))
    {
        $sql_where.=" and r_main.pic like '%".$search_param["pic"]."%'";
    }
    if(isset($search_param["content"]))
    {
        $sql_where.=" and r_main.content like '%".$search_param["content"]."%'";
    }
    if(isset($search_param["mp4"]))
    {
        $sql_where.=" and r_main.mp4 like '%".$search_param["mp4"]."%'";
    }
    if(isset($search_param["link"]))
    {
        $sql_where.=" and r_main.link like '%".$search_param["link"]."%'";
    }
    if(isset($search_param["status"]))
    {
        $sql_where.=" and r_main.status='".$search_param["status"]."'";
    }
    $sql="select  r_main.id  ,productcategory.name productcategory_id_name,r_main.productcategory_id ,r_main.seq ,r_main.pic ,r_main.content ,r_main.mp4 ,r_main.link ,r_main.status  from  tb_productcategorybanner r_main  left join tb_productcategory productcategory on r_main.productcategory_id=productcategory.id  where 1=1 $sql_where  and r_main.status<>'D'
    $orderby";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array_all($query);

                return $result;

}

}

?>