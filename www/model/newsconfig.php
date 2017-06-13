<?php
class NewsconfigMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取新闻配置详情
public function get($id){

  
    $sql="select  r_main.id  ,r_main.name ,r_main.title ,r_main.summary ,r_main.content ,r_main.is_active  from  tb_newsconfig r_main  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>