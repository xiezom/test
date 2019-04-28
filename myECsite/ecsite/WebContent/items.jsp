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

	<title>Items画面</title>

	<link rel="stylesheet" type="text/css" href="./css/items_style.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

</head>
<body>
<%@include file="header.jsp"%>

	<div class="main">
		<div class="top">
			<p>商品一覧</p>
		</div>
		<div class="main-container">
			<div>
			<s:if test="itemListDTOList == null">
				<h3>販売中の商品はありません。</h3>
			</s:if>
			<s:elseif test="message == null">
			<s:iterator value="itemListDTOList">
			<ul>
				<li>
				<a href='<s:url action="ItemsAction">
				</s:url>'>
				<s:param name="Id" value="%{Id}"/>
				<s:property value="itemName"/><br>
				<s:property value="itemPrice"/>円<br>
				</a>
			  </li>
			</ul>
			</s:iterator>
			</s:elseif>
		</div>
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