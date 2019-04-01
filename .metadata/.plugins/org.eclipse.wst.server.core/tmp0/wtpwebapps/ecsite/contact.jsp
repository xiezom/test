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

	<title>CONTACT</title>

	<link rel="stylesheet" type="text/css" href="./css/contact.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

	<!--
	<script type="text/javascript" src="./jquery-2.1.1.min.js"></script>
	-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="./js/contact.js"></script>

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
		<div id="contact" class="contents">
		<form name="contactForm" method="post" action="./contact.php" class="ContactForm">
			<!-- お問い合わせ内容-->
			<div id="contactInfos">
				<div id="v1" class="ItemContent"><!-- 入力画面 -->
					<h2 class="Ttl"><span>お問い合わせ入力</span></h2>
				      <table class="Tbl">
				        <tbody>
				          <tr>
				            <td class="texit-right">お名前<em>※</em></td>
				            <td><input type="text" name="user_name" class="IText ChangeConfirm ImeModeActive IO" data-rule="required" data-confirm="c_userName" title="お名前"></td>
				          </tr>
				          <tr>
				            <td class="texit-right">メールアドレス<em>※</em></td>
				            <td><input name="email" class="IText ChangeConfirm IO" type="email" size="32" maxlength="128" data-rule="required,email" data-confirm="c_email" title="メールアドレス"></td>
				          </tr>
				          <tr>
				            <td class="texit-right">電話番号</td>
				            <td><input name="tel" class="IText ChangeConfirm IO" type="tel" data-rule="tel" data-confirm="c_tel" title="電話番号" >
				              <small>(ハイフンなしでお願いします)</small>
				            </td>
				          </tr>
				          <tr>
				            <td class="texit-right">お問い合わせ内容<em>※</em></td>
				            <td><textarea name="contents" class="ITextArea ChangeConfirm ImeModeActive IO" cols="50" rows="6" maxlength="1000" data-rule="required" data-confirm="c_infos" title="お問い合わせ内容"></textarea></td>
				          </tr>
				        </tbody>
				      </table>
		      		<br>
		      		<input type="button" class="Btn" value=" 確認へ" id="goConfirm">
		      		<br>
		      	</div><!-- //入力画面 -->

		      	<div id="v2" class="ItemContent" style="display:none;"><!-- 確認画面 -->
					<h2 class="ttl"><span>お問い合わせ確認</span></h2>
				      <table class="Tbl">
				        <tbody>
				          <tr>
				            <td class="texit-right">お名前<em>※</em></td>
				            <td><span id="c_userName"></span></td>
				          </tr>
				          <tr>
				            <td class="texit-right">メールアドレス<em>※</em></td>
				            <td><span id="c_email"></span></td>
				          </tr>
				          <tr>
				            <td class="texit-right">電話番号</td>
				            <td><span id="c_tel"></span>
				            </td>
				          </tr>
				          <tr>
				            <td class="texit-right">お問い合わせ内容<em>※</em></td>
				            <td><span id="c_infos"></span></td>
				          </tr>
				        </tbody>
				      </table>
		      		<div style="margin:1rem;">
		      		<input type="button" class="Btn BackBtn" value=" 修正する " id="goBack">　<input type="submit" class="Btn" value=" 送信する ">
		      		</div>
		      	</div><!-- 確認画面 -->

		     </div><!-- お問い合わせ内容-->
		</form>
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