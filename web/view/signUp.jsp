<%@ page import="java.util.Properties" %>
<%--
  Created by IntelliJ IDEA.
  User: dl579
  Date: 2017-11-21
  Time: 오전 1:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js"> <!--<![endif]-->
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
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet'
          type='text/css'>

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
            -webkit-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            -moz-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            -ms-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
        }

        #colour-variations.sleep {
            margin-left: -140px;
        }

        #colour-variations h3 {
            text-align: center;
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
            margin-bottom: 5px !important;
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
            cursor: pointer;
            -webkit-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            -moz-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            -ms-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
        }

        .option-toggle i {
            top: 2px;
            position: relative;
        }

        .main {
            text-align: center;
        }
    </style>
    <!-- End demo purposes only -->


    <!-- Modernizr JS -->
    <script src="../static/js/modernizr-2.6.2.min.js?ver=1"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="../static/js/respond.min.js?ver=1"></script>
    <![endif]-->)
    <script type="text/javascript">
        window.onload = checkEmail;
        function checkEmail() {
            <%! String email = "";%>
            <%
            System.out.println("ranNum"+ session.getAttribute("ranNum"));
            if(session.getAttribute("ranNum") != null){
               %>
                <%email = (String)session.getAttribute("email");
                 System.out.println("이메일 인증: "+email);%>

            var checkNum= prompt("인증번호를 입력해주세요");
            var ranNum = <%=session.getAttribute("ranNum")%>;
            if(checkNum == ranNum){
                $('#schoolNumber').val('<%=email%>');
                $('#schoolNumber').attr("readonly",true);
                alert("이메일 인증 성공");
                return true;
            }else {
                alert("이메일 인증 실패");
                return false;
            }
            <%
            }%>
        }
    </script>


    <script type="text/javascript">
        <%--<%
            if(session.getAttribute("loginCheck") == null){
        %>
        alert("글을 작성하려면 로그인이 필요합니다");
        window.location.href="http://localhost:3000/PknuWiki/view/main.jsp";
        <%}

        %>--%>

        function check() {
            console.log(document.getElementById("password").value);
            if ($('#id').val() == "" || $('#schoolNumber').val() == "" || $('#passwordCheck') == "") {
                alert("모든 입력칸에 값을 넣어주세요.");
                return false;
            } else {
                if(checkEmail()){
                    <%session.setAttribute("ranNum","");%>
                    <%session.setAttribute("email","");%>
                    return true;
                }else {
                    <%session.setAttribute("email","");%>
                    <%session.setAttribute("ranNum","");%>
                    alert("이메일 인증이 실패하였습니다.");
                    return false;
                }
            }
        }
    </script>





    <script type="text/javascript">
        function sendEmail() {
            document.form.action = '/controller?action=sendEmail';
            document.form.submit();
        }
    </script>

</head>
<body>
<header role="banner" id="fh5co-header">
    <div class="container">
        <!-- <div class="row"> -->
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <!-- Mobile Toggle Menu Button -->
                <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"
                   data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                   aria-controls="navbar"><i></i></a> <a class="navbar-brand"
                                                         href="main.jsp">PKNU WIKI</a>
            </div>
            <form method="post" action="/controller?action=search"
                  class="form-inline">

                <table style="float: right" ; width=40%; height:40px>
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
                <ul class="nav navbar-nav navbar-right"></ul>
            </div>
        </nav>
        <!-- </div> -->
    </div>
</header>

<section id="fh5co-home" data-section="home"
         style="background-image: url(../static/images/full_image_2.jpg);"
         data-stellar-background-ratio="0.5">
    <div class="gradient"></div>
    <div class="container">
        <div class="text-wrap">
            <div class="text-inner">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="to-animate title">PKNU WIKI 회원가입</h1>
                        <div class="main">
                            <form method="post" class="form-horizontal"
                                  action="/controller?action=signUp" name="form" id="form"
                                  onsubmit="return check()" style="display: inline">
                                <br>
                                <div class="form-group">
                                    <table width="100%" height="350px">
                                        <tr>
                                            <td align="right">이름</td>
                                            <td><input type="text" class="form-control" size="30"
                                                       style="background-color:white"
                                                       name="name"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="right">아이디</td>
                                            <td><input type="text" class="form-control" name="id"
                                                       placeholder="6자리 이상" minlength="6" maxlength="12"
                                                       style="background-color:white; color: black"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="right">비밀번호</td>
                                            <td><input class="form-control" type="password"
                                                       name="password" minlength="9" maxlength="12" id="password"
                                                       placeholder="9자리 이상 12자리 이하"
                                                       style="background-color:white;color: black"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td align="right">비밀번호 확인</td>
                                            <td><input class="form-control" type="password"
                                                       name="passwordCheck" id="passwordCheck"
                                                       style="background-color:white;color: #0b0b0b"></td>
                                            <td></td>
                                        </tr>

                                        <tr>
                                            <td align="right">부경대 웹메일</td>
                                            <td><input type="email" class="form-control"
                                                       name="schoolNumber" id="schoolNumber"
                                                       style="background-color:white;color: #0b0b0b"></td>
                                            <td align="left">
                                                <button id="sendButton" type="button"  onclick="sendEmail()"
                                                        class="btn-primary btn">학생 인증
                                                </button>
                                            </td>
                                        </tr>

                                    </table>
                                </div>
                                <div>
										<span> <input class="btn btn-primary" type="submit"
                                                      value="회원가입"></span>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="slant"></div>
</section>

<footer id="footer" role="contentinfo">
    <a href="#" class="gotop js-gotop"><i class="icon-arrow-up2"></i></a>
    <div class="container">
        <div class="">
            <div class="col-md-12 text-center">
                <p>
                    &copy; 이상훈, 황선영<br>Created by 이상훈, 황선영<a
                        href="http://ce.pknu.ac.kr/main/main.php" target="_blank">부경대학교
                    컴퓨터공학과</a>
                </p>

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
<script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
<script src="../static/js/google_map.js?ver=1"></script>


<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
<script src="../static/js/jquery.style.switcher.js?ver=1"></script>

<!-- End demo purposes only -->

<!-- Main JS (Do not remove) -->
<script src="../static/js/main.js?ver=1"></script>

</body>
</html>

