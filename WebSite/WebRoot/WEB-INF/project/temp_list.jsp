<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>临时网站</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/list/normalize.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/list/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/list/style.css">
</head>
<body>
	<div class="wrapper cf animated">
		<div class="header grid cf">
			<div class="main cf">
				<div class="logo fl">
					<img
						href="http://q.qlogo.cn/headimg_dl?dst_uin=378759617&spec=640&img_type=jpg" width:"/>
				</div>
				<div class="title fl">
					<h2>临时网站</h2>
					<p>
						Back to <a href="<%=request.getContextPath()%>/index.jsp"
							class="link">HomePage</a>
					</p>
				</div>
				<div class="social fr">
					<a href="<%=request.getContextPath()%>/login/manager">后台管理</a>
				</div>
			</div>
		</div>
		<div class="demo-list cf ">
			<ul class="js-list">
				<c:forEach items="${requestScope.projects}" var="list" varStatus="i">
					<li class="repo grid "><a href="${list.tempUrl}"
						target="_blank">
							<h2><c:out value="${list.tempTopic}"/></h2>
							<p>${list.tempText}</p>
					</a>
						<div class="repo-tags"><a href="http://www.baidu.com" target="_blank">点击这里下载</a></div></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>