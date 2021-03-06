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

	<title>BuyItem画面</title>

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
			<p>BuyItem</p>
		</div>
		<div>
			<s:form action="BuyItemAction">
				<table>
					<tr>
						<td>
							<span>商品名</span>
						</td>
						<td>
							<s:property value="item_name" /><br/>
						</td>
					</tr>
					<tr>
						<td>
							<span>値段</span>
						</td>
						<td>
							<s:property value="item_price" /><span>円</span>
						</td>
					</tr>
					<tr>
						<td><span>在庫</span></td>
						<td><select name="count">
								<option value="1" selected="selected">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
						</select></td>
					</tr>
					<tr>
						<td><span>支払い方法</span></td>
						<td>
							<input type="radio" name="pay" value="1" checked="checked">現金払い
							<input type="radio" name="pay" value="2">クレジットカード
						</td>
					</tr>
					<s:hidden name="Id" value="%{Id}"/>
					<tr>
						<td><s:submit value="購入" /></td>
					</tr>
				</table>
			</s:form>
			<div>
				<p>HOMEは<a href='<s:url action="GoHomeAction" />'>こちら</a></p>
				<p>マイページは<a href='<s:url action="MyPageAction" />'>こちら</a></p>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="pr"></div>
	</div>
</body>
</html>