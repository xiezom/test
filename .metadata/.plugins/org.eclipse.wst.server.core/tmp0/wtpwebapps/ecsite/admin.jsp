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

	<title>管理者画面</title>

	<style type="text/css">

		body {
			margin: 0;
			padding: 0;
			line-height: 1.6;
			letter-spacing: 1px;
			font-family: Verdana,Helvetica,sans-serif;
			font-size: 12px;
			background: #fff;
		}

		table {
			text-align: center;
			margin:0 auto;
		}

		.top {
			width: 780px;
			margin: 30px auto;
			border: 1px solid #333;
		}

		.header {
			width: 100%;
			height: 80px;
			background-color: black;
		}

		.main {
			width: 100%;
			height: 500px;
			text-align: center;
		}

		.admin-contens {
			text-align: center;
		}

		.admin-contens p {
			margin-bottom: 20px;
		}

		.items {
			width: 150px;
			height: 150px;
			display: inline-block;
			border: 1px solid black;
		}

		.users {
			width: 150px;
			height: 150px;
			display: inline-block;
			border: 1px solid black;
			margin-left: 30px;
		}

		.btn {
			margin-bottom: 10px;
		}

		.text-center {
			display: block;
			text-align: center;
		}
		.footer {
			width:100%;
			height: 80px;
			background-color: black;
		}

	</style>

</head>
<body>

	<div class="header">
		<div class="pr">
		</div>
	</div>

	<div class="main">
		<div class="top">
			<p>管理者画面</p>
		</div>
		<div>
		<div class="admin-contents">
			<div class="items">
				<p>商品</p>
				<s:form action="ItemCreateAction">
					<s:submit class="btn" value="新規登録"/>
				</s:form>
				<s:form action="ItemListAction">
					<s:submit class="btn" value="一覧"/>
				</s:form>
			</div>
			<div class="users">
				<p>ユーザー</p>
				<s:form action="UserCreateAction">
					<s:submit class="btn" value="新規登録"/>
				</s:form>
				<s:form action="UserListAction">
					<s:submit class="btn" value="一覧"/>
				</s:form>
			</div>
			<div class="users">
				<p>問い合わせ</p>
				<s:form action="inquiryListAction">
					<s:submit class="btn" value="一覧"/>
				</s:form>
			</div>
		</div>
			<div class="text-center">
				<p>Homeへ戻る場合は<a href='<s:url action="GoHomeAction"/>'>こちら</a></p>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="pr">
		</div>
	</div>


</body>
</html>