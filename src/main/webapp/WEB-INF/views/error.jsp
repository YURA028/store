<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Error</title>
</head>
<body>

    <output value="${errorMassage}"> ${errorMassage}</output>
<%--    <p c:insert="${errorMassage}"> Error java.lang.NullPointerException</p>--%>


</body>
</html>
