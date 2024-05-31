<%--
  Created by IntelliJ IDEA.
  User: jjm42
  Date: 2024-05-31
  Time: 오전 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<html>
<head>
    <title>회원 정보 </title>
</head>
<body>
<p>아이디 : ${member.id}</p>
<p>이름 : ${member.name}</p>
<p>이메일 : ${member.email}</p>
<p>가입일 : <tf:formatDateTime value="${member.registerDateTime}" pattern="yyyy-MM-dd" /> </p>
</body>
</html>
