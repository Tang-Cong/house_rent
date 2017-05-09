<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'editRent.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
  	<script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
	<style type="text/css">
        .table1{
            border:1px solid #ddd;
            width:900px;
        }
        thead{
            background-color:lightblue;
        }
        .font_style {
			font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
			font-size: 30px;
			height: 45px;
			line-height: 35px;
		}
    </style>	
    <script language="JavaScript"> 
	function getDate()
	{
	var today = new Date(); 
	 var date; 
	date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate() + "-" + today.toLocaleTimeString();
	return date;
	}
	window.onload = function(){
	    document.getElementById('day').value = getDate();
	};
	</script>

  </head>
  
<body>
<%
	Date day=new Date();
	request.setAttribute("day", day);
 %>

<div align="center">
	<h1>编辑出租信息</h1>
</div>
<div class="container">
<s:form id="saveForm" action="rent_update" method="post" namespace="/" theme="simple" cssClass="form-horizontal">
	<s:hidden name="id" value="%{model.id}"/>
	<input type="hidden" name="rname" value="<s:property value="%{model.rname}"/>"/>
	<input type="hidden" name="tele" value="<s:property value="%{model.tele}"/>"/>
	<s:hidden name="day" id="day" value="#request.day"/>
	
	<div class="form-group">
      <label for="address" class="col-sm-2 col-sm-offset-2 control-label font_style">地址：</label>
      <div class="col-sm-8">
        <input type="text" name="address" class="form-control font_style" id="address" value="<s:property value='%{model.address}'/>"/>
      </div>
    </div><br>

    <div class="form-group">
      <label for="area" class="col-sm-2 col-sm-offset-2 control-label font_style">面积：</label>
      <div class="col-sm-8">
        <input type="text" name="area" class="form-control font_style" id="area" value="<s:property value='%{model.area}'/>"/>
      </div>
    </div>

    <div class="form-group">
      <label for="floor" class="col-sm-2 col-sm-offset-2 control-label font_style">楼层：</label>
      <div class="col-sm-8">
        <input type="text" name="floor" class="form-control font_style" id="floor" value="<s:property value='%{model.floor}'/>"/>
      </div>
    </div>

    <div class="form-group">
      <label for="money" class="col-sm-2 col-sm-offset-2 control-label font_style">租金：</label>
      <div class="col-sm-8">
        <input type="text" name="money" class="form-control font_style" id="money" value="<s:property value='%{model.money}'/>"/>
      </div>
    </div>

    <div class="form-group">
      <label for="district" class="col-sm-2 col-sm-offset-2 control-label font_style">区域：</label>
      <div class="col-sm-8">
        <input type="text" name="district" class="form-control font_style" id="district" value="<s:property value='%{model.district}'/>"/>
      </div>
    </div>

    <div class="form-group">
      <label for="type" class="col-sm-2 col-sm-offset-2 control-label font_style">房型：</label>
      <div class="col-sm-8">
        <input type="text" name="type" class="form-control font_style" id="type" value="<s:property value='%{model.type}'/>"/>
      </div>
    </div>

    <div class="form-group">
      <label for="direction" class="col-sm-2 col-sm-offset-2 control-label font_style">方向：</label>
      <div class="col-sm-8">
        <input type="text" name="direction" class="form-control font_style" id="direction" value="<s:property value='%{model.direction}'/>"/>
      </div>
    </div>

    <div class="form-group">
      <label for="surround" class="col-sm-2 col-sm-offset-2 control-label font_style">环境：</label>
      <div class="col-sm-8">
        <input type="text" name="surround" class="form-control font_style" id="surround" value="<s:property value='%{model.surround}'/>"/>
      </div>
    </div>

    <div class="form-group">
      <label for="decoration" class="col-sm-2 col-sm-offset-2 control-label font_style">装修：</label>
      <div class="col-sm-8">
     	<input type="text" name="decoration" class="form-control font_style" id="decoration" value="<s:property value='%{model.decoration}'/>"/>
      </div>
     </div>
    
    <div class="form-group">
      <div class="col-sm-offset-4 col-sm-8 row">
        <button type="submit" class="btn btn-default btn-lg">提交</button>
        <button type="reset" class="btn btn-default col-sm-offset-2 btn-lg">清空</button>
      </div>
    </div>
</s:form>
</div>
</body>
</html>