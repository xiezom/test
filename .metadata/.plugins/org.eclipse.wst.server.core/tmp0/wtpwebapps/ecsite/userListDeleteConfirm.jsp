<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>UserListDeleteConfirm画面</title>

	<style type="text/css">

		body {
			margin: 0;
			padding: 0;
			line-height: 1.6;
			letter-spacing: 1px;
			font-family: Verdana,Helvetica,sans-serif;
			font-size: 12px;
			color: #333;
			background: #fff;
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

		.btn-container {
			display: inline-flex;
		}



		.footer {
			width:100%;
			height: 80px;
			background-color: black;
			clear: both;
		}

	</style>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>
</head>

<body>
	<div class="header">
		<div class="pr"></div>
	</div>
	<div class="main">

		<div class="top">
			<p>UserListDeleteConfirm</p>
		</div>

			<h3>すべてのユーザーを削除します。よろしいですか？</h3>

		<div class="btn-container">
			<s:form action="UserListDeleteCompleteAction">
				<s:submit value="OK"/>
			</s:form>
			<s:form action="UserListAction">
				<s:submit value="キャンセル"/>
			</s:form>
		</div>

	</div>

	<div class="footer">
		<div class="pr"></div>
	</div>

</body>
</html>