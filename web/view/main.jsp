
<%@ page import="DAO.webInfoDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>PKNU WIKI</title>



	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.all.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.css">
	<!-- Include a polyfill for ES6 Promises (optional) for IE11 and Android browser -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet' type='text/css'>

	<!-- Animate.css -->
	<link rel="stylesheet" href="../static/css/animate.css?ver=1">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="../static/css/icomoon.css?ver=1">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="../static/css/simple-line-icons.css?ver=1">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="../static/css/magnific-popup.css?ver=1">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="../static/css/bootstrap.css?ver=1">

	<!--
	Default Theme Style
	You can change the style.css (default color purple) to one of these styles

	1. pink.css
	2. blue.css
	3. turquoise.css
	4. orange.css
	5. lightblue.css
	6. brown.css
	7. green.css

	-->
	<link rel="stylesheet" href="../static/css/style.css?ver=1">

	<!-- Styleswitcher ( This style is for demo purposes only, you may delete this anytime. ) -->
	<link rel="stylesheet" id="theme-switch" href="../static/css/style.css?ver=1">
	<!-- End demo purposes only -->


	<style>
		/* For demo purpose only */

		/* For Demo Purposes Only ( You can delete this anytime :-) */
		#colour-variations {
			padding: 10px;
			-webkit-transition: 0.5s;
			-o-transition: 0.5s;
			transition: 0.5s;
			width: 140px;
			position: fixed;
			left: 0;
			top: 100px;
			z-index: 999999;
			background: #fff;
			/*border-radius: 4px;*/
			border-top-right-radius: 4px;
			border-bottom-right-radius: 4px;
			-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
			-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
			-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
			box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		}
		#colour-variations.sleep {
			margin-left: -140px;
		}
		#colour-variations h3 {
			text-align: center;;
			font-size: 11px;
			letter-spacing: 2px;
			text-transform: uppercase;
			color: #777;
			margin: 0 0 10px 0;
			padding: 0;;
		}
		#colour-variations ul,
		#colour-variations ul li {
			padding: 0;
			margin: 0;
		}
		#colour-variations li {
			list-style: none;
			display: block;
			margin-bottom: 5px!important;
			float: left;
			width: 100%;
		}
		#colour-variations li a {
			width: 100%;
			position: relative;
			display: block;
			overflow: hidden;
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			-ms-border-radius: 4px;
			border-radius: 4px;
			-webkit-transition: 0.4s;
			-o-transition: 0.4s;
			transition: 0.4s;
		}
		#colour-variations li a:hover {
			opacity: .9;
		}
		#colour-variations li a > span {
			width: 33.33%;
			height: 20px;
			float: left;
			display: -moz-inline-stack;
			display: inline-block;
			zoom: 1;
			*display: inline;
		}


		.option-toggle {
			position: absolute;
			right: 0;
			top: 0;
			margin-top: 5px;
			margin-right: -30px;
			width: 30px;
			height: 30px;
			background: #f64662;
			text-align: center;
			border-top-right-radius: 4px;
			border-bottom-right-radius: 4px;
			color: #fff;
			cursor: pointer;
			-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
			-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
			-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
			box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		}
		.option-toggle i {
			top: 2px;
			position: relative;
		}
		.option-toggle:hover, .option-toggle:focus, .option-toggle:active {
			color:  #fff;
			text-decoration: none;
			outline: none;
		}
	</style>
	<!-- End demo purposes only -->


	<!-- Modernizr JS -->
	<script src="../static/js/modernizr-2.6.2.min.js?ver=1"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="../static/js/respond.min.js?ver=1"></script>
	<![endif]-->

	<style>
		#navbar{

		}
		.navbar{

		}
	</style>
</head>
<body>
<header role="banner" id="fh5co-header">
	<div class="container">
		<!-- <div class="row"> -->
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<!-- Mobile Toggle Menu Button -->
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
				<a class="navbar-brand" href="main">PKNU WIKI</a>
			</div>				<form method="post" action="/controller?action=search"
										class="form-inline">

			<table style="float: right"; width=40%; height:40px>
				<tr>
					<td align="right"><input style="background-color: white"
											 type="text" class="form-control" name="searchInfo">
					</td>
					<td><input
							type="submit" class="btn btn-primary" value="찾기">
					</td>

				</tr>
			</table>

		</form>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#" data-nav-section="home"><span>Home</span></a></li>
					<li><a href="#" data-nav-section="work"><span>Work</span></a></li>
					<li><a href="#" data-nav-section="Guide"><span>Guide</span></a></li>
					<li><a href="#" data-nav-section="newObject"><span>newObject</span></a></li>
					<li><a href="#" data-nav-section="contact"><span>Contact</span></a></li>
				</ul>
			</div>
		</nav>
		<!-- </div> -->
	</div>
</header>
<section id="fh5co-home" data-section="home" style="background-image: url(../static/images/full_image_2.jpg);" data-stellar-background-ratio="0.5">
	<div class="gradient"></div>
	<div class="container">
		<div class="text-wrap">
			<div class="text-inner">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<img src="../static/images/whale.png" width="30%" height="30%" >
						<h1 class="to-animate">PKNU WIKI</h1>
						<h2 class="to-animate">우리가 만들어가는 부경대학교 <br><a href="writing" target="_self">글작성하러 가기</a></h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="slant"></div>
</section>

<section id="fh5co-intro">
	<div class="container">
		<div class="row row-bottom-padded-lg">
			<div class="fh5co-block to-animate" style="background-image: url(../static/images/img_7.jpg);">
				<div class="overlay-darker"></div>
				<div class="overlay"></div>
				<div class="fh5co-text">
					<i class="fh5co-intro-icon icon-lock"></i>
					<h2>약정 등 규약</h2>
					<p>글을 작성하기전 읽어보시고 작성해주세요. 관리자는 아무 책임도 지지 않습니다.</p>
					<p><a href="#" class="btn btn-primary">읽어 보기</a></p>
				</div>
			</div>
			<div class="fh5co-block to-animate" style="background-image: url(../static/images/img_8.jpg);">
				<div class="overlay-darker"></div>
				<div class="overlay"></div>
				<div class="fh5co-text">
					<i class="fh5co-intro-icon icon-login"></i>
					<%if(session.getAttribute("loginCheck") == null){ %>
					<h2>로그인</h2>
					<p><a href="login" class="btn btn-primary">로그인</a></p><%} else{
				%><%
					if((Boolean) session.getAttribute("loginCheck") == true ){%>

					<h2>로그아웃</h2>
					<p><a href="/controller?action=logOut" class="btn btn-primary">로그아웃</a></p>

					<%if(session.getAttribute("oneLogin")== null){
					%><script type="text/javascript">swal(
                    '로그인 성공하였습니다',
                    'Compete Login',
                    'success'
                )</script>
					<%session.setAttribute("oneLogin",true);}%>
					<%
					} else{%>
					<h2>로그인</h2>
					<p><a href="login" class="btn btn-primary">로그인</a></p>
					<%}
					}%>

				</div>
			</div>
			<div class="fh5co-block to-animate" style="background-image: url(../static/images/img_10.jpg);">
				<div class="overlay-darker"></div>
				<div class="overlay"></div>
				<div class="fh5co-text">

					<%if(session.getAttribute("loginCheck") == null){ %>
					<i class="fh5co-intro-icon icon-login"></i>
					<h2>회원가입</h2>
					<p>회원가입을 하시면 글 작성 수정 등을 할 수 있습니다.</p>
					<p><a href="signUp" class="btn btn-primary">회원가입</a></p><%} else{
				%><%
					if((Boolean) session.getAttribute("loginCheck") == true ){%>
					<i class="fh5co-intro-icon icon-speech-bubble"></i>
					<h2>토론</h2>
					<p>부경대학생들과 토론을 진행 할 수 있습니다.<p/>
					<p><a href="https://livechattingpknuwiki.firebaseapp.com?title = 전체토론" class="btn btn-primary">토론</a></p>
					<%if(session.getAttribute("oneLogin")== null){
					%>
					<%session.setAttribute("oneLogin",true);}%>
					<%
					} else{%>
					<i class="fh5co-intro-icon icon-login"></i>
					<h2>회원가입</h2>
					<p>회원가입을 하시면 글 작성 수정 등을 할 수 있습니다.</p>
					<p><a href="signUp" class="btn btn-primary">회원가입</a></p>
					<%}
					}%>

				</div>
			</div>
		</div>
		<div class="row watch-video text-center to-animate">
			<span>Watch the video</span>
			<a href="https://www.youtube.com/watch?v=3Y4Tm1T-UcA" class="popup-vimeo btn-video"><i class="icon-play2"></i></a>
		</div>
	</div>
</section>


<section id="fh5co-services" data-section="work">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-left">
				<h2 class=" left-border to-animate">Work</h2>
				<div class="row">
					<div class="col-md-8 subtext to-animate">
						<h3>부경위키에서 제공 하는 서비스</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				<i class="icon to-animate-2 icon-pencil"></i>
				<h3>글 등록</h3>
				<p>부경대학교에 관련된 글들을 등록 할 수 있습니다.</p>
			</div>
			<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				<i class="icon to-animate-2 icon-wrench"></i>
				<h3>글 수정</h3>
				<p>틀린 정보가 있거나 추가하고 싶은 내용이 있다면 글을 수정 할 수 있습니다.</p>
			</div>

			<div class="clearfix visible-sm-block"></div>

			<div class="col-md-6 col-sm-6 fh5co-service to-animate">
				<i class="icon to-animate-2 icon-people"></i>
				<h3>주제 토론</h3>
				<p>주제에 맞추어 부경대학교 학생들 끼리 토론을 할 수 있습니다.</p>
			</div>
		</div>
	</div>
</section>

<section id="fh5co-about" data-section="Guide">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center">
				<h2 class="to-animate">글 작성 가이드</h2>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 subtext to-animate">
						<h3>글을 작성 하기 위해 마크다운 언어를 사용합니다.</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<h3><hr>
				<h1><a href="#2-마크다운-사용법문법" aria-hidden="true" class="anchor" id="user-content-2-마크다운-사용법문법"></a>1. 마크다운 사용법(문법)</h1>
				<h2><a href="#21-헤더headers" aria-hidden="true" class="anchor" id="user-content-21-헤더headers"></a>1.1. 헤더Headers</h2>
				<ul>
					<li>
						<p>큰제목: 문서 제목</p>
						<pre><code>This is an H1
=============
</code></pre>
						<h1><a href="#this-is-an-h1" aria-hidden="true" class="anchor" id="user-content-this-is-an-h1"></a>This is an H1</h1>
					</li>
					<li>
						<p>작은제목: 문서 부제목</p>
						<pre><code>This is an H2
-------------
</code></pre>
						<h2><a href="#this-is-an-h2" aria-hidden="true" class="anchor" id="user-content-this-is-an-h2"></a>This is an H2</h2>
					</li>
					<li>
						<p>글머리: 1~6까지만 지원</p>
					</li>
				</ul> <a href="code">더알아보기</a>
			</h3>
		</div>
	</div>
</section>

<section id="fh5co-work" data-section="newObject">
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center">
				<h2 class="to-animate">최근에 수정된 글</h2>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 subtext to-animate">
						<h3>최근에 바뀐 글들 입니다.</h3>
					</div>
				</div>
			</div>
		</div>
		<table>

		</table>
	</div>
	</div>
</section>

<section id="fh5co-counters" style="background-image: url(../static/images/full_image_1.jpg);" data-stellar-background-ratio="0.5"; >
	<div class="fh5co-overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 section-heading text-center to-animate">
				<h2>사이트 정보</h2>
			</div>
		</div>
		<div class="row" style="padding-left: 20%">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="fh5co-counter to-animate">
					<%
						webInfoDAO dao=new webInfoDAO();
					%>
					<i class="fh5co-counter-icon icon-briefcase to-animate-2"></i>
					<span class="fh5co-counter-number js-counter" data-from="0" data-to=<%=dao.getwritingPage()%> data-speed="5000" data-refresh-interval="50"><%=dao.getwritingPage()%></span>
					<span class="fh5co-counter-label">등록된 글 수</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="fh5co-counter to-animate">
					<i class="fh5co-counter-icon icon-code to-animate-2"></i>

					<span class="fh5co-counter-number js-counter" data-from="0" data-to=<%=dao.getMemberNum()%> data-speed="5000" data-refresh-interval="50"><%=dao.getMemberNum()%></span>

					<span class="fh5co-counter-label">가입된 멤버 수</span>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 col-xs-12">
				<div class="fh5co-counter to-animate">
					<i class="fh5co-counter-icon icon-cup to-animate-2"></i>
					<span class="fh5co-counter-number js-counter" data-from="0" data-to=<%=dao.discussionNum()%> data-speed="5000" data-refresh-interval="50"><%=dao.discussionNum()%></span>
					<span class="fh5co-counter-label">토론이 진행된 수</span>
				</div>
			</div>
			<%--<div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fh5co-counter to-animate">
                    <i class="fh5co-counter-icon icon-people to-animate-2"></i>
                    <span class="fh5co-counter-number js-counter" data-from="0" data-to="52" data-speed="5000" data-refresh-interval="50">52</span>
                    <span class="fh5co-counter-label">Happy clients</span>
                </div>
            </div>--%>
		</div>
	</div>
</section>

<section id="fh5co-contact" data-section="contact">
	<div class="container" >
		<div class="row">
			<div class="col-md-12 section-heading text-center">
				<h2 class="to-animate">관리자에게 메세지 보내기</h2>
				<div class="row">
					<div class="col-md-8 col-md-offset-2 subtext to-animate">
						<h3>문제가 되거나 고쳤으면 좋겠는걸 보내주세요.</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="row row-bottom-padded-md">
			<div class="col-md-6 to-animate">
				<h3>Contact Info</h3>
				<ul class="fh5co-contact-info">
					<li class="fh5co-contact-address ">
						<i class="icon-home"></i>
						부산광역시 남구  <br>용소로 45 세종1관 426호
					</li>
					<li><i class="icon-phone"></i> (010) 7226-7934</li>
					<li><i class="icon-envelope"></i>dl57934@naver.com</li>
				</ul>
			</div>

			<%--<div class="col-md-6 to-animate">
                <h3>관리자에게 메세지보내기</h3>
                <div class="form-group ">
                    <label for="name" class="sr-only">Name</label>
                    <input id="name" class="form-control" placeholder="Name" type="text">
                </div>
                <div class="form-group ">
                    <label for="email" class="sr-only">Email</label>
                    <input id="email" class="form-control" placeholder="Email" type="email">
                </div>
                <div class="form-group ">
                    <label for="phone" class="sr-only">Phone</label>
                    <input id="phone" class="form-control" placeholder="Phone" type="text">
                </div>
                <div class="form-group ">
                    <label for="message" class="sr-only">Message</label>
                    <textarea name="" id="message" cols="30" rows="5" class="form-control" placeholder="Message"></textarea>
                </div>
                <div class="form-group ">
                    <input class="btn btn-primary btn-lg" value="Send Message" type="submit">
                </div>
                </div>--%>
		</div>

	</div>
	<div id="map" class="to-animate"></div>
</section>


<footer id="footer" role="contentinfo">
	<a href="#" class="gotop js-gotop"><i class="icon-arrow-up2"></i></a>
	<div class="container">
		<div class="">
			<div class="col-md-12 text-center">
				<p>&copy; 이상훈, 황선영<br>Created by 이상훈, 황선영<a href="http://ce.pknu.ac.kr/main/main.php" target="_blank">부경대학교 컴퓨터공학과</a></p>

			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<ul class="social social-circle">
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-youtube"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>




<!-- jQuery -->
<script src="../static/js/jquery.min.js?ver=1"></script>
<!-- jQuery Easing -->
<script src="../static/js/jquery.easing.1.3.js?ver=1"></script>
<!-- Bootstrap -->
<script src="../static/js/bootstrap.min.js?ver=1"></script>
<!-- Waypoints -->
<script src="../static/js/jquery.waypoints.min.js?ver=1"></script>
<!-- Stellar Parallax -->
<script src="../static/js/jquery.stellar.min.js?ver=1"></script>
<!-- Counter -->
<script src="../static/js/jquery.countTo.js?ver=1"></script>
<!-- Magnific Popup -->
<script src="../static/js/jquery.magnific-popup.min.js?ver=1"></script>
<script src="../static/js/magnific-popup-options.js?ver=1"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCQb1XgQ5rJf8hzn1C3TXFQnopKBOtiQVo&sensor=false?ver=1"></script>
<script src="../static/js/google_map.js?ver=1"></script>


<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
<script src="../static/js/jquery.style.switcher.js?ver=1"></script>

<!-- End demo purposes only -->

<!-- Main JS (Do not remove) -->
<script src="../static/js/main.js?ver=1"></script>

</body>
</html>

