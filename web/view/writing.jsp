<%@ page import="com.github.rjeschke.txtmark.*" %><%--
  Created by IntelliJ IDEA.
  User: dl579
  Date: 2017-11-15
  Time: 오전 1:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PKNU WIKI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.all.min.js"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.css">
    <!-- Include a polyfill for ES6 Promises (optional) for IE11 and Android browser -->
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>


    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

    <link rel="shortcut icon" href="favicon.ico">

    <link
            href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700'
            rel='stylesheet' type='text/css'>

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
    <link rel="stylesheet" id="theme-switch"
          href="../static/css/style.css?ver=1">
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
            text-align: center;;
            font-size: 11px;
            letter-spacing: 2px;
            text-transform: uppercase;
            color: #777;
            margin: 0 0 10px 0;
            padding: 0;;
        }

        #colour-variations ul, #colour-variations ul li {
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

        #colour-variations li a>span {
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
            -webkit-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            -moz-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            -ms-box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
            box-shadow: 0 0 9px 0 rgba(0, 0, 0, .1);
        }

        .option-toggle i {
            top: 2px;
            position: relative;
        }

        .option-toggle:hover, .option-toggle:focus, .option-toggle:active {
            color: #fff;
            text-decoration: none;
            outline: none;
        }
        .layer{
            position:absolute;
            top:50%;
            left:50%;
            background:skyblue;
            transform:translate(-50%, -50%)
        }
    </style>
    <!-- End demo purposes only -->


    <!-- Modernizr JS -->
    <script src="../static/js/modernizr-2.6.2.min.js?ver=1"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="../static/js/respond.min.js?ver=1"></script>
    <![endif]-->
    <script>
     <%
            if(session.getAttribute("loginCheck") == null){
        %>
        alert("글을 작성하려면 로그인이 필요합니다");
        window.location.href="http://localhost:3000/PknuWiki/view/main.jsp";
        <%}

        %>

            function check() {
                if(document.getElementById("inputEmail3").value == "") {
                    alert("제목을 입력해주세요");
                    $("#inputEmail3").focus();
                    return false;
                }
                if( document.getElementById("inputPassword3").value == ""){
                    alert("본문이 비어있습니다")
                    $("#inputPassword3").focus();
                    return false;
                }
                if($(".textar").val().length < 15){
                    return false;
                }
                if($(".textar").val().length
                    > 15){
                    return true;
                }
                return true;
        };
            function mySubmit(index) {
                if(check()){
                if(index == 1){
                    document.fr.action = '/controller?action=writing';
                }if(index == 2){
                    document.fr.action = 'preview.jsp';
                }
                document.fr.submit();
                    }else{
                    return false;
                }
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
                <div style="float: right">
                    <input rightmargin="0"
                           style="background-color: white; width: 60%; height: 40px"
                           type="text" class="form-control" name="searchInfo"> <input type="submit"
                                                                    class="btn btn-primary" value="찾기">
                </div>
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
    <div class="container ">
        <div class="text-wrap">
            <div class="text-inner">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div style="padding-bottom: 180px">
                            <h1>게시글 작성</h1>
                             <form class="form-horizontal" name ="fr" method="post" id="fr"  >
                                <div class="form-group" style=" margin-right: 400px">
                                    <label for="inputEmail3" style="font-size: 15px" class="col-sm-2 control-label">제목</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" style="background-color: white; width: 230%; " id="inputEmail3" name="title" placeholder="제목을 입력하세요">
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group" style=" margin-right: 400px">
                                    <label for="inputPassword3" class="col-sm-2 control-label" style="font-size: 15px">내용</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control textar" minlength="15" id="inputPassword3" rows="10" style="background-color: white; width: 230%" name="body"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10"></div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10" align="right">
                                        <input type="submit"  id ="complete" class="btn btn-primary" onclick="mySubmit(1)"  value="작성완료">  <input type="submit" onclick="mySubmit(2)" id="preview" class="btn btn-primary" value="미리보기">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="slant"></div>
    </div>

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