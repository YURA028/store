<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html>
<head>
    <title>Title</title>
    <link href="/resources/css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="form-style-2-heading">${user.firstName}</div>
<div class="form-style-2-heading">${user.lastName}</div>
<a href="/logout">Выход</a>
</body>
</html>
