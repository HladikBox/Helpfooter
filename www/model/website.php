<?php
class WebsiteMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//获取网站的基础信息
public function config($param){ /**************
     请在此处编写请求的数据正确性，请求合法性的判断
     比如:
     if($param["unicode"]=="")//编码
     {
         return Array();
     }
     ****************/
 
     //1. （请勿改动的代码）获取数据模型对象
     $modelname="website";
     $modelmgrpath=USER_ROOT."modelmgr/$modelname.model.php";
     $model=new XmlModel($modelname,CURRENT_PATH);
     //修正$model的字段默认值，for($model->XmlData["fields"]["field"] as $field)
 
     /**************
     请在此处编写你对请求值的修正
     $unicode=parameter_filter($param["unicode"]);
     $query=$this->dbmgr->query("select id from tb_context where unicode='$unicode'");
     $result=$this->dbmgr->fetch_array($query);
     $id=$result["id"]+0;
     ****************/
     $id=$param["id"]+0;
 
     //2. （请勿改动的代码）获取生成的sql语句
     $sql=$model->GetSearchSqlField($request,true)." where r_main.id=$id";    
     
     $query = $this->dbmgr->query($sql);
     $result = $this->dbmgr->fetch_array($query);
 
     /**************
     请在此处编写你对最终返回数据的修正
     如
     $result["mobile"]=substr($result[$i]["mobile"],0,2)."******".substr($result[$i]["mobile"],8,3);
     ****************/
     return $result;
 
 
 
 
 
}

}

?>