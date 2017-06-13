<?php
class NewsMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取新闻列表，传入对应的搜索条件
public function _list($search_param,$orderby){

    $sql_where="";


    if(isset($search_param["category_id"]))
    {
        $sql_where.=" and r_main.category_id='".$search_param["category_id"]."'";
    }
    if(isset($search_param["category_id_name"]))
    {
        $sql_where.=" and newscategory.name='".$search_param["category_id_name"]."'";
    }
  
    if(isset($search_param["published_date"]))
    {
        $sql_where.=" and r_main.published_date='".$search_param["published_date"]."'";
    }
    if(isset($search_param["published_date_from"]))
    {
        $sql_where.=" and r_main.published_date>='".$search_param["published_date_from"]."'";
    }

    if(isset($search_param["published_date_to"]))
    {
        $sql_where.=" and r_main.published_date<='".$search_param["published_date_to"]."'";
    }
  
    if(isset($search_param["title"]))
    {
        $sql_where.=" and r_main.title like '%".$search_param["title"]."%'";
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
    if(isset($search_param["thumbnail"]))
    {
        $sql_where.=" and r_main.thumbnail like '%".$search_param["thumbnail"]."%'";
    }
    if(isset($search_param["status"]))
    {
        $sql_where.=" and r_main.status='".$search_param["status"]."'";
    }
    $sql="select  r_main.id  ,newscategory.name category_id_name,r_main.category_id ,r_main.published_date ,r_main.title ,r_main.is_index ,r_main.summary ,r_main.content ,r_main.thumbnail ,r_main.status  from  tb_news r_main  left join tb_newscategory newscategory on r_main.category_id=newscategory.id  where 1=1 $sql_where  and r_main.status<>'D' 
    $orderby";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array_all($query);

                return $result;

}
//获取新闻详情, 传入对应的id
public function get($id){

  
    $sql="select  r_main.id  ,newscategory.name category_id_name,r_main.category_id ,r_main.published_date ,r_main.title ,r_main.is_index ,r_main.summary ,r_main.content ,r_main.thumbnail ,r_main.status  from  tb_news r_main  left join tb_newscategory newscategory on r_main.category_id=newscategory.id  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>