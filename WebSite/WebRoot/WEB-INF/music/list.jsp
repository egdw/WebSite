<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Title</title>
</head>
<link
	href="<%=request.getContextPath()%>/css/music_css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/css/music_css/my.css"
	rel="stylesheet">
<body>
	<jsp:include page="/music_top.jsp"></jsp:include>
	<c:if test="${empty requestScope.errorMessage}">
		<div class="alert alert-success" role="alert">查询成功!一共有${requestScope.songCount}条数据,您当前处于${requestScope.pageCount+1}页.</div>
	</c:if>
	<c:if test="${not empty requestScope.errorMessage}">
		<div class="alert alert-danger" role="alert">${requestScope.errorMessage}</div>
	</c:if>
	<!--主内容开始 -->
	<ul class="list-group">
		<li class="list-group-item">
			<div class="row">
				<c:forEach items="${requestScope.lists}" var="index">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img src="${index.album.picUrl}" width="500px" height="250px" alt="...">
							<div class="caption">
								<h3>${index.name}</h3>
								<p>
									<c:forEach items="${index.artists}" var="item">
										<a href="http://music.163.com/#/artist?id=${item.id}" target="_blank">${item.name}</a>|
									</c:forEach>
								</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">播放</a> <a
										href="#" class="btn btn-default" role="button">Button</a>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</li>
	</ul>
	<!-- 主内容结束-->
	<!-- 分页开始 -->
	<center>
		<nav aria-label="Page navigation">
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</center>
	<!-- 分页结束 -->
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</html>