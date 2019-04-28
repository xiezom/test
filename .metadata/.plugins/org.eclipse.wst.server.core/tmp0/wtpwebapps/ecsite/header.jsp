<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>header</title>
</head>

<style>
	body {
			margin: 0;
			padding: 0;
			line-height: 1.6;
			letter-spacing: 1px;
			font-family: Verdana,Helvetica,sans-serif;
			font-size: 12px;
			background: #fff;
		}

		a	{
			text-decoration: none;
			position: relative;
  			display: inline-block;
		}

		a::after {
			  position: absolute;
			  bottom: -4px;
			  left: 0;
			  content: '';
			  width: 100%;
			  height: 2px;
			  background: #333;
			  transform: scale(0, 1);
			  transform-origin: center top;
			  transition: transform .3s;
		}

		a:hover::after {
			  transform: scale(1, 1);
		}

		ul {
			list-style-type: none;
		}

		.top {
			width: 780px;
			margin: 30px auto;
			border: 1px solid #333;
		}

		.header {
			width: 100%;
			height: 90px;
			background-color: black;
			overflow: hidden;
		}

		.logo {
			margin-top: -2px;
			margin-left: 1em;
			float: left;
			width: 20%;
			line-height: 90px;
			color: white;
			font-family: robot;
			font-size: 30px;
		}

		.header ul {
			text-align: center;
			float: left;
			margin: 0 auto;
		}

		.header ul li {
		    float: left;
		    padding-left: 30px;
		    padding-right: 30px;
		    line-height: 90px;
		    font-size: 20px;
		    font-family: 游ゴシック, YuGothic, meiryo, sans-serif;
		    color: #fff;
		    transition: background-color 2s;
		}

		.header ul li a {
			color: white;
		}

		.header li:hover {
			background-color: #585649;
			transition: background-color 800ms;
		}

		.header ul li a:visited {
			color: white;
		}

		.welcome {
			text-align: right;
			margin-right: 10px;
		}
</style>

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

</body>
</html>