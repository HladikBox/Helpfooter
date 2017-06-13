<?php
class IndexpageMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取首页详情
public function get($id){

  
    $sql="select  r_main.id  ,r_main.ad1_name ,r_main.ad1_title ,r_main.ad1_summary ,r_main.ad1_link ,r_main.ad1_pic ,r_main.ad2_name ,r_main.ad2_title ,r_main.ad2_summary ,r_main.ad2_link ,r_main.ad2_pic ,r_main.ad3_name ,r_main.ad3_title ,r_main.ad3_summary ,r_main.ad3_link ,r_main.ad3_pic ,r_main.ad4_name ,r_main.ad4_title ,r_main.ad4_summary ,r_main.ad4_link ,r_main.ad4_pic ,r_main.ad5_name ,r_main.ad5_title ,r_main.ad5_summary ,r_main.ad5_link ,r_main.ad5_pic  from  tb_indexpage r_main  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>