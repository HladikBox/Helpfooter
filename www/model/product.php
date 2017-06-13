<?php
class ProductMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取产品列表，传入对应的搜索条件
public function _list($search_param,$orderby){

    $sql_where="";


    if(isset($search_param["category_id"]))
    {
        $sql_where.=" and r_main.category_id='".$search_param["category_id"]."'";
    }
    if(isset($search_param["category_id_name"]))
    {
        $sql_where.=" and productcategory.name='".$search_param["category_id_name"]."'";
    }
  
    if(isset($search_param["seq"]))
    {
        $sql_where.=" and r_main.seq like '%".$search_param["seq"]."%'";
    }
    if(isset($search_param["name"]))
    {
        $sql_where.=" and r_main.name like '%".$search_param["name"]."%'";
    }
    if(isset($search_param["is_index"]))
    {
        $sql_where.=" and r_main.is_index like '%".$search_param["is_index"]."%'";
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
    $sql="select  r_main.id  ,productcategory.name category_id_name,r_main.category_id ,r_main.seq ,r_main.name ,r_main.is_index ,r_main.summary ,r_main.content ,r_main.status,r_main.thumbnail  from  tb_product r_main  left join tb_productcategory productcategory on r_main.category_id=productcategory.id  where 1=1 $sql_where  and r_main.status<>'D' 
    $orderby";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array_all($query);

                return $result;

}
//获取产品详情, 传入对应的id
public function get($id){

  
    $sql="select  r_main.id  ,productcategory.name category_id_name,r_main.category_id ,r_main.seq ,r_main.name ,r_main.is_index ,r_main.summary ,r_main.content ,r_main.status  from  tb_product r_main  left join tb_productcategory productcategory on r_main.category_id=productcategory.id  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>