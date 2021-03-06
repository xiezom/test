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

	<title>MyCart画面</title>

	<link rel="stylesheet" type="text/css" href="./css/items_style.css">
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
	        <s:property value="session.user_name"/>さん、ようこそ!
	        <a href='<s:url action="MyCartAction"/>'>カート</a>
	        <a href='<s:url action="MyPageAction" />'>購入履歴</a>
	        <a href='<s:url action="LogoutAction" />'>ログアウト</a>
    </p>
	</div>
	<div class="main">
		<div class="top">
			<p>MyCart</p>
		</div>
		<div class="main-container">
			<table border="1">
			<tr>
				<th>商品名</th>
				<th>値段</th>
			</tr>
			<s:iterator value="itemListDTOList">
				<tr>
				  	<td><s:property value="itemName"/></td>
				  	<td><s:property value="itemPrice"/><span>円</span></td>
				</tr>
			</s:iterator>
			</table>
		</div>
		<div class="text-link">
			<p>Homeへ戻る場合は
				<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
		</div>
	</div>

	<div class="footer">
	<nav>
		<ul class="social">
			<li><a href="" target="_blank"><i class="fab fa-twitter fa-3x"></i></a>
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