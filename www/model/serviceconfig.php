<?php
class ServiceconfigMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取服务配置详情
public function get($id){

  
    $sql="select  r_main.id  ,r_main.name ,r_main.title ,r_main.summary ,r_main.content ,r_main.image  from  tb_serviceconfig r_main  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>