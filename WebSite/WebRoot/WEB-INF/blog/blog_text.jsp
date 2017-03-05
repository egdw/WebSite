<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>博客文章</title>
</head>

<body>
	<jsp:include page="/MyBlog_top.jsp"></jsp:include>
	<!-- 下面是举例的文章内容 -->
	<div class="container table_box">
		<!-- <h2 >36</h2> -->
		<h2 style="text-align:left;">
			<b>${requestScope.blog.title}</b>
		</h2>
		<div style="font-size:17px;">
			<i>欢迎访问恶搞大王的博客!</i>
		</div>
		<div style="text-align: right;font-size: 16px;padding-top: 10px">
			<div style="float: left">
				标签： <a href="/blog/searchByType/0" class="label label-info"
					style="font-size: 16px">学习</a>
			</div>
			<label style="font-size: 15px;text-align: left"><span
				class="glyphicon glyphicon-eye-open" style="color: gray"
				aria-hidden="true"></span> <a style="text-decoration:none;"
				href="/blog/detail/36">阅读</a>(${requestScope.blog.clickTimes})</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
				style="font-size: 15px;text-align: left"><span
				class="glyphicon glyphicon-edit" style="color: gray"
				aria-hidden="true"></span> <a style="text-decoration:none;"
				href="/blog/detail/36#comment_id">评论</a>(${requestScope.blog.commentTimes})</label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
				style="font-size: 15px;text-align: left"><span
				class="glyphicon glyphicon-thumbs-up" style="color: gray"
				aria-hidden="true"></span> 推荐(0)</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
				style="font-size: 15px">${requestScope.blog.createTime}</label>
		</div>
		<hr>
		<div style="padding-top: 4px;padding-left: 10px;padding-right: 10px;">
			${requestScope.blog.content}
		</div>
		<!-- 从这里往下是评论区 -->
		<div>
			<h1 style="padding-bottom: 10px;text-align: center">文章已经到底了!</h1>
		</div>
		<hr style="border: 1px solid silver;">
		<h3>暂无评论</h3>
		<div style="padding-top: 10px;padding-left: 10px;padding-right: 10px">
		</div>

		<form id="comment_id" action="/blog/comment/add" method="post">
			<fieldset>
				<legend>评论</legend>
				<input value="36" type="hidden" name="comment.blog_id">
				<div class="form-inline">
					<div class="form-group col-lg-offset-1">
						<label style="font-size: 15px;width: 60px;">* 姓 名：</label> <input
							style="width:200px;font-size: 15px" type="text" minlength="4"
							maxlength="30" class="form-control" name="comment.username"
							required>
					</div>
				</div>
				<div class="form-inline">
					<div class="form-group  col-lg-offset-1">
						<label style="font-size: 15px;width: 60px;padding-top: 20px">*
							邮 箱：</label> <input style="width:200px;font-size: 15px" type="email"
							class="form-control" name="comment.email" required>
					</div>
				</div>
				<div class="form-inline" style="padding-top: 20px">
					<div class="form-group  col-lg-offset-1">
						<label style="font-size: 15px;width: 60px">* 内 容：</label>
						<textarea name="comment.content" style="width: 500px"
							class="form-control" rows="4"></textarea>
					</div>
				</div>

				<div class="col-lg-offset-1"
					style="padding-top: 20px;padding-left: 60px;padding-bottom: 15px">
					<button type="submit" style="width: 200px;text-align: center"
						class="btn btn-info">评论</button>
				</div>
			</fieldset>
		</form>
	</div>

</body>
</html>
