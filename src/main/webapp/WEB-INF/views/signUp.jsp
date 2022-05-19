<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/resources/css/style.css">
    <title>Пример оформления заказа · Bootstrap v5.1</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-light">
<%@include file="blocks/header.jsp"%>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp"%>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="py-2 text-center">
                <h2>
                <span style="vertical-align: inherit;">
                    <span
                            style="vertical-align: inherit;"><spring:message code="title.registration"/></span>
                </span>
                </h2>
            </div>
            <div class="col-md-10 mx-auto col-lg-5">

                <form class="p-4 p-md-5 border rounded-3 bg-light" action="${pageContext.request.contextPath}/signUp"
                      method="post">
                    <div class="form-floating mb-3">
                        <input type="text" checked class="form-control" id="username" name="username" placeholder="username">
                        <label for="username"><c:out value="${userPrincipal.username}">Логин</c:out></label>

                        <c:if test="${errorMessageUsername != null}">
                            <small class="form-text text-danger">${errorMessageUsername}</small>
                        </c:if>
<%--                        <small class="form-text text-danger">Validation error</small>--%>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" required value="${formUser.firstName}" class="form-control" id="firstName" name="firstName" placeholder="FirstName">
                        <label for="firstName">Имя</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" required value="${formUser.email}" class="form-control" id="email" name="email" placeholder="Email">
                        <label for="email">email</label>
                        <c:if test="${errorMessageEmail != null}">
                            <small class="form-text text-danger">${errorMessageEmail}</small>
                        </c:if>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" required value="${formUser.password}" class="form-control" id="password" name="password"
                               placeholder="Password">
                        <label for="password">Password</label>
                        <c:if test="${errorMessagePassword != null}">
                            <small class="form-text text-danger">${errorMessagePassword}</small>
                        </c:if>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" required value="${formUser.matchingPassword}" class="form-control" id="matchingPassword" name="matchingPassword"
                               placeholder="matchingPassword">
                        <label for="matchingPassword">matchingPassword</label>
<%--                        <small class="form-text text-danger">Validation error</small>--%>
                    </div>
<%--                    <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                    <button class="w-100 btn btn-lg btn-primary" type="submit" value="signUp">
                        <spring:message code="label.signUp"/></button>
                    <hr class="my-4">
                    <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
                </form>

            </div>
        </main>



    </div>
</div>
<%@include file="blocks/footer.jsp"%>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
        integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
        crossorigin="anonymous"></script>
</body>
</html>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--    <link href="/resources/css/styles.css" rel="stylesheet" type="text/css">--%>
<%--</head>--%>

<%--<body>--%>
<%--<div class="form-style-2">--%>
<%--    <div class="form-style-2-heading">--%>
<%--        Зарегистрируйтесь!--%>
<%--    <form method="post" action="/signUp">--%>
<%--        <label for="login">Логин--%>
<%--            <input class="input-field" type="text" id="login" name="login">--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label for="password">Пароль--%>
<%--            <input class="input-field" type="password" id="password" name="password">--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label for="first-name">Имя--%>
<%--            <input class="input-field"  id="first-name" name="firstName">--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label for="last-name">Фамилия--%>
<%--            <input class="input-field"  id="last-name" name="lastName">--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label for="remember-me">--%>
<%--            <input type="checkbox" id="remember-me" name="remember-me">Запомнить меня</label>--%>
<%--        <input type="submit" value="SignUp">--%>
<%--        <br>--%>
<%--    </form>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>