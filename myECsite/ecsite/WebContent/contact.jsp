<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html; charset=utf8"/>
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="imagetoolbar" content="no">
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>CONTACT</title>

	<link rel="stylesheet" type="text/css" href="./css/contact.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">


</head>
<body>
<%@include file="header.jsp"%>


	<div class="main">
		<s:form method="post" action="InquiryCompleteAction">
		名前:<input type="text" name="name"/><br>
		メールアドレス:<input type="text" name="email"/><br>
		電話番号:<input type="text" name="phone"/><br>
		お問い合わせの種類:
		<select name="qtype">
			<option value="company">会社について</option>
			<option value="product">製品について</option>
			<option value="support">アフターサポートについて</option>
		</select>
		<br>
		お問い合わせ内容:
		<s:textarea  name="body"/>
		<br><s:submit value="登録"/>
	</s:form>
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