<%--
  Created by IntelliJ IDEA.
  User: dl579
  Date: 2017-12-13
  Time: 오전 1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <a class="navbar-brand" href="main.jsp" >PKNU WIKI</a>

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
<section id="fh5co-about" data-section="Guide">
    <div class="container">
        <div style="padding-bottom: 180px" name="main">
            <hr>
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
            </ul>
            <pre><code># This is a H1
## This is a H2
### This is a H3
#### This is a H4
##### This is a H5
###### This is a H6
</code></pre>
            <h1><a href="#this-is-a-h1" aria-hidden="true" class="anchor" id="user-content-this-is-a-h1"></a>This is a H1</h1>
            <h2><a href="#this-is-a-h2" aria-hidden="true" class="anchor" id="user-content-this-is-a-h2"></a>This is a H2</h2>
            <h3><a href="#this-is-a-h3" aria-hidden="true" class="anchor" id="user-content-this-is-a-h3"></a>This is a H3</h3>
            <h4><a href="#this-is-a-h4" aria-hidden="true" class="anchor" id="user-content-this-is-a-h4"></a>This is a H4</h4>
            <h5><a href="#this-is-a-h5" aria-hidden="true" class="anchor" id="user-content-this-is-a-h5"></a>This is a H5</h5>
            <h6><a href="#this-is-a-h6" aria-hidden="true" class="anchor" id="user-content-this-is-a-h6"></a>This is a H6</h6>
            <p>####### This is a 7.</p>
            <h2><a href="#22-blockquote" aria-hidden="true" class="anchor" id="user-content-22-blockquote"></a>1.2. BlockQuote</h2>
            <p>이메일에서 사용하는 <code>&gt;</code> 블럭인용문자를 이용한다.</p>
            <pre><code>&gt; This is a blockqute.
</code></pre>
            <blockquote>
                <p>This is a first blockqute.</p>
                <blockquote>
                    <p>This is a second blockqute.</p>
                    <blockquote>
                        <p>This is a third blockqute.</p>
                    </blockquote>
                </blockquote>
            </blockquote>
            <p>이 안에서는 다른 마크다운 요소를 포함할 수 있다.</p>
            <blockquote>
                <h3><a href="#this-is-a-h3-1" aria-hidden="true" class="anchor" id="user-content-this-is-a-h3-1"></a>This is a H3</h3>
                <ul>
                    <li>List
                        <pre><code>code
</code></pre>
                    </li>
                </ul>
            </blockquote>
            <h2><a href="#23-목록" aria-hidden="true" class="anchor" id="user-content-23-목록"></a>1.3. 목록</h2>
            <h3><a href="#-순서있는-목록번호" aria-hidden="true" class="anchor" id="user-content--순서있는-목록번호"></a>● 순서있는 목록(번호)</h3>
            <p>순서있는 목록은 숫자와 점을 사용한다.</p>
            <pre><code>1. 첫번째
2. 두번째
3. 세번째
</code></pre>
            <ol>
                <li>첫번째</li>
                <li>두번째</li>
                <li>세번째</li>
            </ol>
            <p><strong>현재까지는 어떤 번호를 입력해도 순서는 내림차순으로 정의된다.</strong></p>
            <pre><code>1. 첫번째
3. 세번째
2. 두번째
</code></pre>
            <ol>
                <li>첫번째</li>
                <li>세번째</li>
                <li>두번째</li>
            </ol>
            <p>딱히 개선될 것 같지는 않다. 존 그루버가 신경안쓰고 있다고...</p>
            <h3><a href="#-순서없는-목록글머리-기호" aria-hidden="true" class="anchor" id="user-content--순서없는-목록글머리-기호"></a>● 순서없는 목록(글머리 기호)</h3>
            <pre><code>* 빨강
  * 녹색
    * 파랑

+ 빨강
  + 녹색
    + 파랑

- 빨강
- 녹색
- 파랑
</code></pre>
            <ul>
                <li>빨강
                    <ul>
                        <li>녹색
                            <ul>
                                <li>파랑</li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>빨강
                    <ul>
                        <li>녹색
                            <ul>
                                <li>파랑</li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul>
                <li>빨강
                    <ul>
                        <li>녹색
                            <ul>
                                <li>파랑</li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <p>혼합해서 사용하는 것도 가능하다(내가 선호하는 방식)</p>
            <ul>
                <li>1단계
                    <ul>
                        <li>2단계
                            <ul>
                                <li>3단계
                                    = 4단계</li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <h2><a href="#24-코드precodecodepre" aria-hidden="true" class="anchor" id="user-content-24-코드precodecodepre"></a>1.4. 코드<code>&lt;pre&gt;&lt;code&gt;&lt;/code&gt;&lt;/pre&gt;</code></h2>
            <p>4개의 공백 또는 하나의 탭으로 들여쓰기를 만나면 변환되기 시작하여 들여쓰지 않은 행을 만날때까지 변환이 계속된다.</p>
            <pre><code>This is a normal paragraph:

    This is a code block.
end code block.
</code></pre>
            <p>실제로 적용해보면,
                This is a normal paragraph:</p>
            <pre><code>This is a code block.
</code></pre>
            <p>end code block.</p>
            <h2><a href="#25-수평선hr" aria-hidden="true" class="anchor" id="user-content-25-수평선hr"></a>1.5. 수평선<code>&lt;hr/&gt;</code></h2>
            <p>아래 줄은 모두 수평선을 만든다. 마크다운 문서를 미리보기로 출력할 때 <em>페이지 나누기</em> 용도로 많이 사용한다.</p>
            <pre><code>* * *

***

*****

- - -

---------------------------------------
</code></pre>
            <h2><a href="#26-링크" aria-hidden="true" class="anchor" id="user-content-26-링크"></a>1.6. 링크</h2>
            <ul>
                <li>참조링크</li>
            </ul>
            <pre><code>[link keyword][id]
[id]: URL "Optional Title here"

Link: [Google][googlelink]
[googlelink]: https://google.com "Go google"
</code></pre>
            <p>Link: [Google][googlelink]
                [googlelink]: <a href="https://google.com">https://google.com</a> "Go google"</p>
            <ul>
                <li>인라인 링크</li>
            </ul>
            <pre><code>syntax: [Title](link)
</code></pre>
            <p>Link: <a href="https://google.com," title="google link">Google</a></p>
            <ul>
                <li>자동연결</li>
            </ul>
            <pre><code>&lt;http://example.com/&gt;
&lt;address@example.com&gt;
</code></pre>
            <p><a href="http://example.com/">http://example.com/</a>
                <a href="mailto:address@example.com">address@example.com</a></p>
            <h2><a href="#27-강조" aria-hidden="true" class="anchor" id="user-content-27-강조"></a>1.7. 강조</h2>
            <pre><code>*single asterisks*
_single underscores_
**double asterisks**
__double underscores__
++underline++
~~cancelline~~
</code></pre>
            <p><em>single asterisks</em>
                <em>single underscores</em>
                <strong>double asterisks</strong>
                <strong>double underscores</strong>
                ++underline++
                <del>cancelline</del></p>
            <h2><a href="#28-이미지" aria-hidden="true" class="anchor" id="user-content-28-이미지"></a>1.8. 이미지</h2>
            <pre><code>![Alt text](/path/to/img.jpg)
![Alt text](/path/to/img.jpg "Optional title")
</code></pre>
            <p><a href="https://camo.githubusercontent.com/202c9ae1d457d6109be6c4cf13db9cac5fd708a6/687474703a2f2f6366696c65362e75662e746973746f72792e636f6d2f696d6167652f32343236453634363534334339423435333243374230" target="_blank"><img src="https://camo.githubusercontent.com/202c9ae1d457d6109be6c4cf13db9cac5fd708a6/687474703a2f2f6366696c65362e75662e746973746f72792e636f6d2f696d6167652f32343236453634363534334339423435333243374230" alt="석촌호수 러버덕" data-canonical-src="http://cfile6.uf.tistory.com/image/2426E646543C9B4532C7B0" style="max-width:100%;"></a>
                <a href="https://camo.githubusercontent.com/202c9ae1d457d6109be6c4cf13db9cac5fd708a6/687474703a2f2f6366696c65362e75662e746973746f72792e636f6d2f696d6167652f32343236453634363534334339423435333243374230" target="_blank"><img src="https://camo.githubusercontent.com/202c9ae1d457d6109be6c4cf13db9cac5fd708a6/687474703a2f2f6366696c65362e75662e746973746f72792e636f6d2f696d6167652f32343236453634363534334339423435333243374230" alt="석촌호수 러버덕" title="RubberDuck" data-canonical-src="http://cfile6.uf.tistory.com/image/2426E646543C9B4532C7B0" style="max-width:100%;"></a></p>
            <p>사이즈 조절 기능은 없기 때문에 <code>&lt;img width="" height=""&gt;&lt;/img&gt;</code>를 이용한다.</p>
            <hr>
            <h2>1.7. 테이블 만들기</h2>
            <pre><code>| 왼쪽 정렬 | 가운데 정렬 | 오른쪽 정렬 |
|:--------|:--------:|--------:|
| 내용 11 | 내용 12 | 내용 13 |
| 내용 21 | 내용 22 | 내용 23 |
</code></pre>
            <p></p>
            <table>
                <thead>
                <tr><th>왼쪽 정렬</th><th>가운데 정렬</th><th>오른쪽 정렬</th></tr>
                </thead>
                <tbody>
                <tr><td>내용 11</td><td>내용 12</td><td style="text-align:right;">내용 13</td></tr>
                <tr><td>내용 21</td><td>내용 22</td><td style="text-align:right;">내용 23</td></tr>
                </tbody>
            </table>
            <p>공백, 좌우<code>|</code> 없애기 등등 여러 시도를 했지만 역시 가운데 정렬은 안됩니다.</p>
            <p>제목을 가운데 정렬해주기 위해서는 <code>&lt;center&gt;</code>을 이용해주면 됩니다.</p>
            <pre><code>|  &lt;center&gt;Header1&lt;/center&gt; |  &lt;center&gt;Header2&lt;/center&gt; |  &lt;center&gt;Header3&lt;/center&gt; |
|:--------|:--------:|--------:|
|**cell 1x1** | &lt;center&gt;cell 1x2 &lt;/center&gt; |*cell 1x3* |
|**cell 2x1** | &lt;center&gt;cell 2x2 &lt;/center&gt; |*cell 2x3* |
|**cell 3x1** | &lt;center&gt;cell 3x2 &lt;/center&gt; |*cell 3x3* |
</code></pre>
            <p></p>
            <p>결과표</p>
            <table>
                <thead>
                <tr><th><center>Header1</center></th><th><center>Header2</center></th><th><center>Header3</center></th></tr>
                </thead>
                <tbody>
                <tr><td><strong>cell 1x1</strong></td><td><center>cell 1x2</center></td><td style="text-align:right;"><em>cell 1x3</em></td></tr>
                <tr><td><strong>cell 2x1</strong></td><td><center>cell 2x2</center></td><td style="text-align:right;"><em>cell 2x3</em></td></tr>
                <tr><td><strong>cell 3x1</strong></td><td><center>cell 3x2</center></td><td style="text-align:right;"><em>cell 3x3</em></td></tr>
                </tbody>
            </table>

        </div >
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