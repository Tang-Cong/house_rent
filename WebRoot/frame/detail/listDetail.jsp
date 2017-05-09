<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>微博信息发布</title>
	<style type="text/css">
		*{
			margin: 0;
			padding: 0;
		}
		#demo01{
			width: 600px;
			position: relative;
			overflow: hidden;
		}
		#demo01 .left{
			width: 100px;
			float: left;
		}
		#demo01 .left img{
			margin-left: 20px;
		} 			/*初级做法*/
		#demo01 .right{
			width: 450px;
			float: right;
			background: #9CF;
			border: 1px solid #ccc;
			padding-top: 5px;
			padding-right: 10px;
			padding-bottom: 15px;
			padding-left: 15px;
		}
		#demo01 .right p{
			font-size: 12px;
			line-height: 25px;
		}
		#demo01 span{
			position: absolute;
			right: 20px;
			top: 10px;
			font-size: 12px;
		}
		#demo02{
			width: 600px;
			position: relative;
			margin-top: 20px;
			overflow: hidden;
		}
		#demo02 .left{
			width: 100px;
			float: left;
		}
		#demo02 .left img{
			margin-left: 20px;
		}
		#demo02 .right{
			width: 450px;
			float: right;
			background: #9CF;
			border: 1px solid #ccc;
			padding-top: 5px;
			padding-right: 10px;
			padding-bottom: 15px;
			padding-left: 15px;
		}
		#demo02 .right p{
			font-size: 12px;
			line-height: 25px;
		}
		#demo02 span{
			position: absolute;
			right: 20px;
			top: 10px;
			font-size: 12px;
		}
		#demo02 img{
			float: left;
			margin-left: 20px;
		} 			/*中级*/
	</style>
</head>
<body>
<s:iterator value="list" var="d" status="demo">
	<div id="<s:if test='#st.even'>demo01</s:if><s:else>demo02</s:else>">
		<div class="left">
			<img src="${ pageContext.request.contextPath }/images/10.gif" height="50px" width="50px">		<!-- 初级做法 -->
		</div>
		<div class="right">
			<h6><s:property value="#d.dname"/></h6>
			<p><s:property value="#d.content"/></p>
			<span><s:date name="#d.time" format="yyyy-MM-dd HH:mm:ss"/></span>
		</div>
	</div>
</s:iterator>
</body>
</html>