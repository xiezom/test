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

	<title>HOME</title>

	<link rel="stylesheet" type="text/css" href="./css/home_style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

</head>
<body>

<%@include file="header.jsp"%>


	<div class="main">
		<div class="top">
			<p>Home</p>
		</div>
		<div class="text-center">
			<s:form action="HomeAction">
				<s:submit value="商品購入"/>
			</s:form>
		</div>

		<div class="main-container">
			<div class="left">
			<section id="New">

				<div class="headin-box"><h2>New!</h2></div>

				<div class="entry">
					<p><a href='<s:url action="buyItemAction"/>'>
					<img class="img" src="./img/1.jpg">
					<br/>NEW!金髪
					</a></p>
				</div>


				<div class="entry">
					<p><a href='<s:url action="buyItemAction"/>'>
					<img class="img" src="./img/2.jpg">
					<br/>NEW!コート
					</a></p>
				</div>

				<div class="entry">
					<p><a href='<s:url action="buyItemAction"/>'>
					<img class="img" src="./img/3.jpg">
					<br/>NEW!Tシャツ(イエロー)
					</a></p>
				</div>
			</section>

			</div>
			<div class="right">
				<a class="twitter-timeline" height="450px" href="https://twitter.com/blythe_mobile">
				Tweets by brue61663564</a>
				<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
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