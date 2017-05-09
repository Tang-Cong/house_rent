<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'right.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="${ pageContext.request.contextPath }/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="${ pageContext.request.contextPath }/jQuery/jquery-3.1.1.js"></script>
    <script src="${ pageContext.request.contextPath }/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
    	$(function () {
		  $('[data-toggle="tooltip"]').tooltip();
		  $('[data-toggle="popover"]').popover();
		  $('.carousel').carousel({
			  interval: 3000
			});
		});
    </script>
  </head>
  
	<body>
		<!-- <div align="center">
			<table border="0" width="60%" cellspacing="0" cellpadding="0" id="table1">
				<tr>
					<td height="93"></td>
				</tr>
				<tr>
					<td>
						<img src="${ pageContext.request.contextPath }/images/bg.jpg" style="background-repeat:no-repeat" width="1500px" height="600px"/>
					</td>
				</tr>
			</table>
		</div> -->

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${ pageContext.request.contextPath }/images/111.jpg" alt="..." width="100%">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="${ pageContext.request.contextPath }/images/222.jpg" alt="..." width="100%">
      <div class="carousel-caption">
      </div>
    </div>
    <div class="item">
      <img src="${ pageContext.request.contextPath }/images/444.jpg" alt="..." width="100%">
      <div class="carousel-caption">
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

	</body>
</html>
