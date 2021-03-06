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

	<title>Company</title>

	<link rel="stylesheet" type="text/css" href="./css/company.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

	  <script>
	    $(document).ready(function(){
	      $('.abc').bxSlider({
	          auto: true,
	          mode: 'horizontal',
	          speed: 2000,
	          slideWidth: 1600,
	          controls: false,
	          pager: false

	      });
	    });
	  </script>

</head>
<body>

<%@include file="header.jsp"%>


	<div class="main">
		<div class="top">
			<p>Company</p>
		</div>

		<div class="main-container">
			<div class="top-content">
				<div class="abc">
                <div><img src="./img/bg1.jpg"></div>
                <div><img src="./img/bg2.jpg"></div>
                </div>
			</div>
			<div class=detail>
				<table class="kaisha">
					<tr>
						<th>会社名</th>
						<td>○○株式会社</td>
					</tr>
					<tr>
						<th>所在地</th>
						<td>東京都-------</td>
					</tr>
					<tr>
						<th>電話</th>
						<td>00-0000-0000</td>
					</tr>
					<tr>
						<th>内容</th>
						<td>SAMPLE!SAMPLE!SAMPLE!</td>
					</tr>
				</table>
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