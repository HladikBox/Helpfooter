<?php
class SettingMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取系统设置详情
public function get($id){

  
    $sql="select  r_main.id  ,r_main.fav ,r_main.name ,r_main.description ,r_main.keywords ,r_main.author ,r_main.logo ,r_main.slogan ,r_main.wechat ,r_main.businessqq ,r_main.serivceqq ,r_main.copyright ,r_main.miitbeian  from  tb_setting r_main  where r_main.id=$id ";
                $query = $this->dbmgr->query($sql);
                $result = $this->dbmgr->fetch_array($query);

                


                return $result;

}

}

?>