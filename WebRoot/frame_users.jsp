<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'frame.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
		<frameset rows="80,*">
		   <frame name="top" src="${ pageContext.request.contextPath }/frame/top.jsp" scrolling="no"/>
		   <frameset cols="150,*" id="main">
		      <frame name="left" src="${ pageContext.request.contextPath }/frame/left_users.jsp" scrolling="no"/> 
		     <frame name="right" src="${ pageContext.request.contextPath }/frame/right.jsp" scrolling="yes"/>
		   </frameset>
		</frameset>
</html>
