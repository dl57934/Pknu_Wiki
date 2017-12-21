<%@ page import="java.sql.Connection" %>
<%@ page import="DAO.writingDAO" %>
<%@ page import="com.github.rjeschke.txtmark.Processor" %><%--
  Created by IntelliJ IDEA.
  User: dl579
  Date: 2017-12-03
  Time: 오전 1:57
  To change this template use File | Settings | File Templates.
--%>
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
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.all.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.css">
    <!-- Include a polyfill for ES6 Promises (optional) for IE11 and Android browser -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>

    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />

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


</head>
<body>
<header role="banner" id="fh5co-header" style="background-color: #52d3aa;margin-top:0 ">
    <div class="container">
        <!-- <div class="row"> -->
        <nav class="navbar navbar-default">
            <div class="navbar-header">
                <!-- Mobile Toggle Menu Button -->
                <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
                <a class="navbar-brand" href="main" >PKNU WIKI</a>

            </div>

            <form method="post" action="/controller?action=search"
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
                <ul class="nav navbar-nav navbar-right"></ul>
            </div>
        </nav>
        <!-- </div> -->
    </div>
</header>
<section id="fh5co-about" data-section="Guide">
    <div class="container">
        <div style="padding-bottom: 180px" name="main">
            <%
                String title =  request.getParameter("title");
                writingDAO dao = new writingDAO();
                String finalText = Processor.process(dao.getView("#"+title));
                out.println( finalText);
            %>
        </div >
        <form method="post" action="/controller?action=modify"  class="form-inline" >
            <input type="hidden" name="title" value="<%=title%>">
            <input type="submit" class="btn btn-primary" style="background-color: white; color: #52d3aa" value="수정" >
        </form>
        <form method="post" action="/controller?action=discussion"  class="form-inline" >
            <input type="hidden" name="title" value="<%=title%>">
            <input type="submit" class="btn btn-primary" style="background-color: white; color: #52d3aa" value="토론" >
        </form>
    </div>
</section>


<footer id="footer" role="contentinfo">
    <a href="#" class="gotop js-gotop"><i class="icon-arrow-up2"></i></a>
    <div class="container">
        <div class="">
            <div class="col-md-12 text-center">
                <p>&copy; 이상훈, 황선영<br>Created by 이상훈, 황선영<a href="http://ce.pknu.ac.kr/main/main.php" target="_blank">부경대학교 컴퓨터공학과</a></p>

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
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
<script src="../static/js/google_map.js?ver=1"></script>


<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
<script src="../static/js/jquery.style.switcher.js?ver=1"></script>

<!-- End demo purposes only -->

<!-- Main JS (Do not remove) -->
<script src="../static/js/main.js?ver=1"></script>

</body>
</html>
