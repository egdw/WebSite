<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>恶搞大王的个人博客</title>
</head>

<body>
	<jsp:include page="/MyBlog_top.jsp"></jsp:include>
	<div class="container-fluid row">
		<div class="container table_box col-lg-2" style=""></div>
		<div class="container table_box col-lg-5" style="padding-left: 68px">
			<label style="font-size: 16px"></label> <span style="font-size: 20px">最新</span>
			<hr style="border: 1px solid silver">
			<c:forEach items="${requestScope.list}" var="index">
				<!-- 一个DIv的开始 -->
				<div class="inline">
					<a style="font-size:25px;text-decoration:none;"
						href="detail?pageId=${index.id}">${index.title}</a> <a
						style="float: right;text-decoration:none;"
						href="detail?pageId=${index.id}" class="read_more_button">查看详细</a>
				</div>
				<div class="row"
					style="padding-top: 12px;font-size:12px;height: 160px;overflow: hidden;">
					<div class="col-lg-3 col-sm-3">
						<div style="text-align: center;">
							<a href="<%=request.getContextPath()%>/${index.picUrl}"
								class="thumbnail" data-lightbox="example-1"><img
								src="<%=request.getContextPath()%>/${index.picUrl}"
								height="140px"></a>
						</div>
					</div>
					<div class="col-lg-9 col-sm-9" style="font-size: 14px">
						<div>
							<p>${index.title}</p>
							<p>${index.content}</p>
						</div>
					</div>
				</div>
				<div style="text-align: right">
					<label style="font-size: 12px;float: left"><fmt:formatDate value="${index.createTime}" pattern="yyyy-mm-dd hh:mm:ss"/></label>
					<label style="font-size: 12px;width: 70px;text-align: left">
						<a style="text-decoration:none;" href="/blog/detail/86">阅读</a>(${index.clickTimes})
					</label> <label style="font-size: 12px;width: 70px;text-align: left">
						<a style="text-decoration:none;" href="/blog/detail/86#comment_id">评论</a>(${index.commentTimes})
					</label>
				</div>
				<hr>
				<!-- 一个div的结束 -->

			</c:forEach>
			<!-- 分页 -->
			<nav style="text-align: center">

			<ul class="pagination">
				<c:forEach var="index" begin="1" end="${requestScope.pageCount}">
					<c:if test="${requestScope.currentPage==index}">
						<li><a style="color: #000000"
							href="<%=request.getContextPath()%>/blog/?pageNum=${index-1}">${index}</a></li>
					</c:if>
					<c:if test="${requestScope.currentPage!=index}">
						<li><a
							href="<%=request.getContextPath()%>/blog/?pageNum=${index-1}">${index}</a></li>
					</c:if>
				</c:forEach>
			</ul>
			</nav>

		</div>


		<!-- 下面显示的是最新上传的图片 -->
		<div class="container col-lg-3"
			style="padding-left: 90px;padding-right: 60px">
			<div>
				<legend>最新照片</legend>
				<!-- 广告轮播 -->
				<div id="ad-carousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<c:forEach items="${requestScope.images}" var="index"
							varStatus="i">
							<c:if test="${i.index == 0}">
								<li data-target="#ad-carousel" data-slide-to="${i.index}"
									class="active"></li>
							</c:if>
							<c:if test="${i.index != 0}">
								<li data-target="#ad-carousel" data-slide-to="${i.index}"></li>
							</c:if>
						</c:forEach>
					</ol>
					<div class="carousel-inner">
						<div class="item2" style="overflow: hidden;">
							<a href="<%=request.getContextPath()%>/${index.url}"
								data-lightbox="example-set"> <img
								src="<%=request.getContextPath()%>/${index.url}"
								class="center-block" height="0px" style="height: 0px">
							</a>
						</div>
						<c:forEach items="${requestScope.images}" var="index"
							varStatus="i">
							<c:if test="${i.index == 0}">
								<div class="item active">
									<a href="<%=request.getContextPath()%>/${index.url}"
										data-lightbox="example-set"> <img
										src="<%=request.getContextPath()%>/${index.url}"
										class="center-block" height="240px" style="height: 240px">
									</a>
								</div>
							</c:if>
							<c:if test="${i.index != 0}">
								<div class="item">
									<a href="<%=request.getContextPath()%>/${index.url}"
										data-lightbox="example-set"> <img
										src="<%=request.getContextPath()%>/${index.url}"
										class="center-block" height="240px" style="height: 240px">
									</a>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<a class="left carousel-control" href="#ad-carousel"
						data-slide="prev">L</a> <a class="right carousel-control"
						href="#ad-carousel" data-slide="next">R</a>
				</div>
				<!-- 下面显示的是阅读排行 -->
				<div style="padding-top: 50px">
					<legend>阅读排行</legend>
					<div style="padding-bottom: 7px;padding-left: 10px">
						<span class="badge"
							style="font-size: 20px;width: 27px;color: lightskyblue;background-color: snow">1</span>
						<a style="color: slategray" href="/blog/detail/33"> 【生活】 Hello
							World！！！</a>
					</div>
					<div style="padding-bottom: 7px;padding-left: 10px">
						<span class="badge"
							style="font-size: 17px;width: 27px;color: lightskyblue;background-color: snow">2</span>
						<a style="color: slategray" href="/blog/detail/40"> 【生活】
							又是一年开学时</a>
					</div>
				</div>
				<!-- 下面显示的是评价排行 -->
				<div style="padding-top: 50px">
					<legend>阅读排行</legend>
					<div style="padding-bottom: 7px;padding-left: 10px">
						<span class="badge"
							style="font-size: 20px;width: 27px;color: lightskyblue;background-color: snow">1</span>
						<a style="color: slategray" href="/blog/detail/33"> 【生活】 Hello
							World！！！</a>
					</div>
					<div style="padding-bottom: 7px;padding-left: 10px">
						<span class="badge"
							style="font-size: 17px;width: 27px;color: lightskyblue;background-color: snow">2</span>
						<a style="color: slategray" href="/blog/detail/40"> 【生活】
							又是一年开学时</a>
					</div>
				</div>
				<!-- 下面是最新评论 -->
				<div style="padding-top: 50px">
					<legend>最新评论</legend>
					<!-- 第一个div -->
					<div style="padding-left: 10px;padding-right: 10px">
						<a
							style="color: gray;font-size: 15px;overflow: hidden;text-overflow:ellipsis;width: 300px;display: block"
							href="/blog/detail/40"><i>Re：测试文本</i></a>
						<div style="font-size:15px;padding-top: 10px;padding-bottom: 10px">
							<span style="padding-left: 10px;line-height:150%"><span
								style="color: gray" class="glyphicon glyphicon-user"
								aria-hidden="true"></span> 网站做的不错：喜欢这种简约的风格</span>
						</div>
						<span style="color:gray"> <i>2017-02-27 10:55:59</i>
						</span>
					</div>
					<hr>
					<!-- 第二个div -->
					<div style="padding-left: 10px;padding-right: 10px">
						<a
							style="color: gray;font-size: 15px;overflow: hidden;text-overflow:ellipsis;width: 300px;display: block"
							href="/blog/detail/40"><i>Re：测试文本</i></a>
						<div style="font-size:15px;padding-top: 10px;padding-bottom: 10px">
							<span style="padding-left: 10px;line-height:150%"><span
								style="color: gray" class="glyphicon glyphicon-user"
								aria-hidden="true"></span> 网站做的不错：喜欢这种简约的风格</span>
						</div>
						<span style="color:gray"> <i>2017-02-27 10:55:59</i>
						</span>
					</div>
					<hr>
					<!-- 第三个div -->
					<div style="padding-left: 10px;padding-right: 10px">
						<a
							style="color: gray;font-size: 15px;overflow: hidden;text-overflow:ellipsis;width: 300px;display: block"
							href="/blog/detail/40"><i>Re：测试文本</i></a>
						<div style="font-size:15px;padding-top: 10px;padding-bottom: 10px">
							<span style="padding-left: 10px;line-height:150%"><span
								style="color: gray" class="glyphicon glyphicon-user"
								aria-hidden="true"></span> 网站做的不错：喜欢这种简约的风格</span>
						</div>
						<span style="color:gray"> <i>2017-02-27 10:55:59</i>
						</span>
					</div>
					<hr>
				</div>
				<script
					src="<%=request.getContextPath()%>/css/MyBlog_files/lightbox.js"></script>
</body>
</html>
