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
	date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate();  
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

<div class="jumbotron">		<!-- 巨幕 -->
  <div class="container">
	  <h1>出租信息发布</h1>
	  <p>装修精美，拎包入住</p>
	  <p>
		<a class="btn btn-primary btn-lg" href="javascript:history.go(-1)">退回 </a>
	  </p>
  </div>
</div>
<div class="container">
<s:form id="saveForm" action="rent_save" method="post" namespace="/" theme="simple" cssClass="form-horizontal">
	<input type="hidden" name="rname" value="<s:property value="#session.existUsers.uname"/>"/>
	<input type="hidden" name="tele" value="<s:property value="#session.existUsers.tele"/>"/>
	<s:hidden name="day" id="day" value="#request.day"/>
	
	<div class="form-group">
      <label for="address" class="col-sm-2 control-label font_style">地址：</label>
      <div class="col-sm-8">
        <s:textfield name="address" cssClass="form-control font_style" id="address" placeholder="address" />
      </div>
    </div>

    <div class="form-group">
      <label for="area" class="col-sm-2 control-label font_style">面积：</label>
      <div class="col-sm-8">
        <s:textfield name="area" cssClass="form-control font_style" id="area" placeholder="area" />
      </div>
    </div>

    <div class="form-group">
      <label for="floor" class="col-sm-2 control-label font_style" >楼层：</label>
      <div class="col-sm-8">
        <s:textfield name="floor" cssClass="form-control font_style" id="floor" placeholder="floor" />
      </div>
    </div>

    <div class="form-group">
      <label for="money" class="col-sm-2 control-label font_style">租金：</label>
      <div class="col-sm-8">
        <s:textfield name="money" cssClass="form-control font_style" id="money" placeholder="money" />
      </div>
    </div>

    <div class="form-group">
      <label for="district" class="col-sm-2 control-label font_style">区域：</label>
      <div class="col-sm-8">
        <s:textfield name="district" cssClass="form-control font_style" id="district" placeholder="district" />
      </div>
    </div>

    <div class="form-group">
      <label for="type" class="col-sm-2 control-label font_style">房型：</label>
      <div class="col-sm-8">
        <s:textfield name="type" cssClass="form-control font_style" id="type" placeholder="type" />
      </div>
    </div>

    <div class="form-group">
      <label for="direction" class="col-sm-2 control-label font_style">方向：</label>
      <div class="col-sm-8">
        <s:textfield name="direction" cssClass="form-control font_style" id="direction" placeholder="direction" />
      </div>
    </div>

    <div class="form-group">
      <label for="surround" class="col-sm-2 control-label font_style">环境：</label>
      <div class="col-sm-8">
        <s:textfield name="surround" cssClass="form-control font_style" id="surround" placeholder="surround" />
      </div>
    </div>

    <div class="form-group">
      <label for="decoration" class="col-sm-2 control-label font_style">装修：</label>
      <div class="col-sm-8">
        <s:textfield name="decoration" cssClass="form-control font_style" id="decoration" placeholder="decoration" />
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-sm-offset-2 col-sm-8 row">
        <button type="submit" class="btn btn-default btn-lg">提交</button>
        <button type="reset" class="btn btn-default btn-lg col-sm-offset-2">清空</button>
      </div>
    </div>

</s:form>
</div>
</body>
</html>