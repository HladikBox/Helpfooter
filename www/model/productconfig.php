<?php
class ProductconfigMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取产品页配置详情, 传入对应的id
public function get($id){

  
    $sql="select  r_main.id  ,r_main.name ,r_main.title ,r_main.summary ,r_main.is_active ,r_main.content  from  tb_product_config r_main  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>