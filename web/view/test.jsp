<%--
  Created by IntelliJ IDEA.
  User: dl579
  Date: 2017-11-28
  Time: 오전 1:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.all.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.0.3/sweetalert2.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<html>
<head>
    <title>글작성 하기</title>
</head>
<body>
<%
if(session.getAttribute("loginCheck") != null){%>
    <form method="post" name="myform" action="/controller?action=writing">
        <input type="text" name="title">
        <textarea name="body"> </textarea>

        <input type="submit" value="글작성 하기"> <input type="submit" value="미리보기">
    </form>
<%} else{%>
    <script type="text/javascript">

        alert("세션이 있어야지만 글을 작성할 수 있습니다.");
    window.location.replace("main.jsp");
    </script>


<% }%>
</body>
</html>
