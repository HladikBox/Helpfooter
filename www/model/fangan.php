<?php
class FanganMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//搜索方案的列表
public function list($param){ /**************    请在此处编写请求的数据正确性，请求合法性的判断    比如:    if($param["mobile"]=="")//手机号码为空    {        return Array());    }        ****************/    //1. （请勿改动的代码）获取数据模型对象    $modelname="fangan";    $modelmgrpath=USER_ROOT."modelmgr/$modelname.model.php";    $model=new XmlModel($modelname,CURRENT_PATH);        //修正$model的字段默认值，for($model->XmlData["fields"]["field"] as $field)    /**************    请在此处编写你对请求值的修正    如$request["request_time"]=date('Y-m-d H:i:s');    ****************/    $request=$param;    $request["status"]="A";    $request["orderby"]="r_main.seq";        //2. （请勿改动的代码）获取自动生成的搜索sql语句    $sql=$model->GetSearchSql($request);    //echo $sql;      //$sql=str_replace("select","select distinct",$sql);    $query = $this->dbmgr->query($sql);    $result = $this->dbmgr->fetch_array_all($query);     /**************    请在此处编写你对最终返回数据的修正    如    for($i=0;$i<count($result);$i++){        $result[$i]["mobile"]=substr($result[$i]["mobile"],0,2)."******".substr($result[$i]["mobile"],8,3);    }    ****************/    return $result;
 
 
 
 
 
}

}

?>