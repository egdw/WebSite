<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>恶搞大王的博客</title>

<link
	href="<%=request.getContextPath()%>/css/MyBlog_files/bootstrap.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/css/MyBlog_files/bootstrap-theme.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/MyBlog_files/lightbox.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</head>
<nav class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="<%=request.getContextPath()%>/blog/">恶搞大王的博客</a>
		</div>

		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
				<li><a href="<%=request.getContextPath()%>/blog/">首页</a></li>
				<li class="dropdown"><a href="http://kkys.online/blog/#"
					class="dropdown-toggle" data-toggle="dropdown" role="button"
					aria-haspopup="true" aria-expanded="false">分类 <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="type">学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="type">生活</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="type">随笔</a></li>
					</ul></li>
				<li><a href="<%=request.getContextPath()%>/blog/image">相册</a></li>
				<li><a href="http://kkys.online/blog/#" data-toggle="modal"
					data-target="#about-modal">关于</a></li>
				<li><a href="<%=request.getContextPath()%>/login/manager">管理</a></li>
			</ul>
			<div style="float: right;">
				<div class="input-group" style="padding-top: 9px">
					<form action="http://kkys.online/blog/searchByTitle" method="post">
						<input style="font-size:18px;width: 280px" class="form-control"
							name="titleSearch" placeholder="搜索你感兴趣的内容...">
						<button class="btn btn-default" type="submit">搜索</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>

	<div class="modal fade" id="about-modal" tabindex="-1" role="dialog"
		aria-labelledby="modal-label" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">关闭</span>
					</button>
					<h4 class="modal-title" id="modal-label">关于</h4>
				</div>
				<div class="modal-body">
					<div
						style="text-align: center;padding-top:30px;padding-bottom: 10px">
						<p>恶搞大王的个人博客</p>
						<img
							src="http://q.qlogo.cn/headimg_dl?dst_uin=378759617&spec=640&img_type=jpg"
							width="100px" height="100px" class="img-circle">
						<div style="padding-top: 20px">
							<p>个人微信 ：HONGDEYAN1997</p>
							<p>个人QQ ：378759617</p>
							<p>邮箱 ：378759617@qq.com</p>
							<p>
								github ：<a href="https://github.com/egdw" target="_blank">https://github.com/egdw</a>
							</p>
							<p>好好学习,天天向上</p>
						</div>
					</div>
					<p style="text-align: right">感谢 KKys</p>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</nav>
</body>
</html>