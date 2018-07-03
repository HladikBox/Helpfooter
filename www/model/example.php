<?php
class ExampleMgr 
{
    public $dbmgr = null;
    public function __construct($dbmgr) {
      $this->dbmgr=$dbmgr;  
    }
//传参数，获取我的名字，请注意这个范例
public function hello($param){ 
 $myname=parameter_filter($param["name"]);
 $sql="select '$myname' name ";
 $query=$this->dbmgr->query($sql);//提交一个请求
 $result=$this->dbmgr->fetch_array($query);//返回一行数据
 
 outputJson(outResult(0,"Success get name",$result["name"]));
 
 
 
}

}

?>