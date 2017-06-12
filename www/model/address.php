<?php
class AddressMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取公司地址列表，传入对应的搜索条件
public function _list($search_param,$orderby){

    $sql_where="";


    if(isset($search_param["seq"]))
    {
        $sql_where.=" and r_main.seq='".$search_param["seq"]."'";
    }
    if(isset($search_param["city"]))
    {
        $sql_where.=" and r_main.city like '%".$search_param["city"]."%'";
    }
    if(isset($search_param["address"]))
    {
        $sql_where.=" and r_main.address like '%".$search_param["address"]."%'";
    }
    if(isset($search_param["TEL"]))
    {
        $sql_where.=" and r_main.TEL like '%".$search_param["TEL"]."%'";
    }
    if(isset($search_param["map_link"]))
    {
        $sql_where.=" and r_main.map_link like '%".$search_param["map_link"]."%'";
    }
    if(isset($search_param["status"]))
    {
        $sql_where.=" and r_main.status='".$search_param["status"]."'";
    }
    $sql="select  r_main.id  ,r_main.seq ,r_main.city ,r_main.address ,r_main.tel ,r_main.map_link ,r_main.status  from  tb_address r_main  where 1=1 $sql_where  and r_main.status<>'D' 
    $orderby";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array_all($query);

                return $result;

}

}

?>