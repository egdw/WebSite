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
			<b>测试文章</b>
		</h2>
		<div style="font-size:17px;">
			<i>本文地址：<a href="http://localhost:8080/WebSite/blog/detail">http://localhost:8080/WebSite/blog/detail</a></i>
		</div>
		<div style="text-align: right;font-size: 16px;padding-top: 10px">
			<div style="float: left">
				标签： <a href="/blog/searchByType/0" class="label label-info"
					style="font-size: 16px">学习</a>
			</div>
			<label style="font-size: 15px;text-align: left"><span
				class="glyphicon glyphicon-eye-open" style="color: gray"
				aria-hidden="true"></span> <a style="text-decoration:none;"
				href="/blog/detail/36">阅读</a>(10)</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
				style="font-size: 15px;text-align: left"><span
				class="glyphicon glyphicon-edit" style="color: gray"
				aria-hidden="true"></span> <a style="text-decoration:none;"
				href="/blog/detail/36#comment_id">评论</a>(0)</label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
				style="font-size: 15px;text-align: left"><span
				class="glyphicon glyphicon-thumbs-up" style="color: gray"
				aria-hidden="true"></span> 推荐(0)</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label
				style="font-size: 15px">2016-08-22 08:48:53</label>
		</div>
		<hr>
		<div style="padding-top: 4px;padding-left: 10px;padding-right: 10px;">
			<p>今天做题遇到了this和super的区别，下面来总结一下：</p>

			<p>
				<strong>this</strong>
			</p>

			<p>this是自身的一个对象，代表对象本身，可以理解为：指向对象本身的一个指针。</p>

			<p>this的用法在java中大体可以分为3种：</p>

			<p>
				<strong>1.普通的直接引用</strong>
			</p>

			<p>this相当于是指向当前对象本身。</p>

			<p>
				<strong>2.形参与成员名字重名，用this来区分</strong>
			</p>

			<p>&nbsp;</p>

			<p>
				<strong>super</strong>
			</p>

			<p>super可以理解为是指向自己超（父）类对象的一个指针，而这个超类指的是离自己最近的一个父类。</p>

			<p>用法：</p>

			<p>
				<strong>1.普通的直接引用</strong>
			</p>

			<p>与this类似，super相当于是指向当前对象的父类，这样就可以用super.xxx来引用父类的成员。</p>

			<p>
				<strong>2.子类中的成员变量或方法与父类中的成员变量或方法同名</strong>
			</p>

			<p>
				<strong>3.引用构造函数</strong>
			</p>

			<p>super（参数）：调用父类中的某一个构造函数（应该为构造函数中的第一条语句）。</p>

			<p>this（参数）：调用本类中另一种形式的构造函数（应该为构造函数中的第一条语句）。</p>

			<p>&nbsp;</p>

			<p>
				<strong>他们的区别：</strong>
			</p>

			<p>1）调用super()必须写在子类构造方法的第一行，否则编译不通过。每个子类构造方法的第一条语句，都是隐含地调用super()，如果父类没有这种形式的构造函数，那么在编译的时候就会报错。</p>

			<p>2）super()和this()类似,区别是，super从子类中调用父类的构造方法，this()在同一类内调用其它方法。</p>

			<p>3）super()和this()均需放在构造方法内第一行。</p>

			<p>4）尽管可以用this调用一个构造器，但却不能调用两个。</p>

			<p>5）this和super不能同时出现在一个构造函数里面，因为this必然会调用其它的构造函数，其它的构造函数必然也会有super语句的存在，所以在同一个构造函数里面有相同的语句，就失去了语句的意义，编译器也不会通过。</p>

			<p>6）this()和super()都指的是对象，所以，均不可以在static环境中使用。包括：static变量,static方法，static语句块。</p>

			<p>7）从本质上讲，this是一个指向本对象的指针, 然而super是一个Java关键字。</p>
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
