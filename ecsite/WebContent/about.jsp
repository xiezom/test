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

	<title>ABOUT</title>

	<link rel="stylesheet" type="text/css" href="./css/home_style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

</head>
<body>

	<div class="header">
		<h1 class="logo">BLUEKANGAROOO</h1>
		<ul>
            <li><a href='<s:url action="GoHomeAction"/>'>HOME</a></li>
            <li><a href='<s:url action="AboutAction"/>'>ABOUT</a></li>
            <li><a href='<s:url action="HomeAction"/>'>ITEMS</a></li>
            <li><a href='<s:url action="ContactAction"/>'>CONTACT</a></li>
            <li><a href='<s:url action="GoCompanyAction"/>'>COMPANY</a></li>
        </ul>

	</div>
	<div>
    <p class="welcome">
        <s:if test="#session.id != null">
	        <s:property value="session.user_name"/>さん、ようこそ!
	        <a href='<s:url action="MyCartAction"/>'>カート</a>
	        <a href='<s:url action="MyPageAction" />'>購入履歴</a>
	        <a href='<s:url action="LogoutAction" />'>ログアウト</a>
        </s:if>
    </p>
	</div>

	<div class="main">
		<div class="top">
			<p>ABOUT</p>
		</div>
		<div class="main-container">
			<img class="img" src="./img/1.jpg">
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