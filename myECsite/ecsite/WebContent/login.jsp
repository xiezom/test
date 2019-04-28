<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no">
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>LOGIN</title>

	<link rel="stylesheet" type="text/css" href="./css/home_style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

</head>
<body>
<%@include file="header.jsp"%>

	<div class="main">
		<div class="top">
			<p>Login</p>
		</div>
		<div class="login-form">
			<h3>商品を購入する際はログインをお願いします。</h3>
			<s:form action="LoginAction">
				<s:textfield name="loginUserId"/>
				<s:password name="loginPassword"/>
				<s:submit value="ログイン"/>
			</s:form>
			<br/>
			<div class="text-link">
				<p>新規ユーザー登録は
					<a href='<s:url action="UserCreateAction"/>'>こちら</a></p>
				<p>Homeへ戻る場合は
					<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			</div>
		</div>
	</div>

	<div class="footer">
	<nav>
		<ul class="social">
			<li><a href="https://twitter.com/brue61663564" target="_blank"><i class="fab fa-twitter fa-3x"></i></a>
			</li>
			<li><a href="" target="_blank"><i class="fab fa-instagram fa-3x"></i></a>
			</li>
			<li><a href="" target="_blank"><i class="fab fa-facebook fa-3x"></i></a>
			</li>
			<li><a href="" target="_blank"><i class="fab fa-line fa-3x"></i></a>
			</li>
		</ul>
	</nav>
		<p class="copy"><small>&copy; BLUEKANGAROOO</small></p>
	</div>


</body>
</html>