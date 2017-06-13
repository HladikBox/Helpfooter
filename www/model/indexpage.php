<?php
class IndexpageMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取首页详情
public function get($id){

  
    $sql="select  r_main.id  ,r_main.about_name ,r_main.about_summary ,r_main.about_email ,r_main.about_pic  from  tb_indexpage r_main  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>