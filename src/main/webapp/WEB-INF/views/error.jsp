<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html>
<head>
    <title>Error</title>
</head>
<body>

    <output value="${errorMassage}"> ${errorMassage}</output>
<%--    <p c:insert="${errorMassage}"> Error java.lang.NullPointerException</p>--%>


</body>
</html>
