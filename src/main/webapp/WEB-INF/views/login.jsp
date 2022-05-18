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

<%--            <div id="rememberry__extension__root" style="all: unset;"></div>--%>

            <div class="container col-xl-13 col-xxl-8 px-1 py-1">
                <div class="row align-items-center g-lg-5 py-5">
                    <%--        <div class="col-lg-7 text-center text-lg-start">--%>
                    <%--            <h1 class="display-4 fw-bold lh-1 mb-3">Vertically centered hero sign-up form</h1>--%>
                    <%--            <p class="col-lg-10 fs-4">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>--%>
                    <%--        </div>--%>
                    <div class="col-md-10 mx-auto col-lg-5">
                        <form class="p-4 p-md-5 border rounded-3 bg-light" action="/login" method="post">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="email" name="email" placeholder="Email">
                                <label for="email">Email address</label>
<%--                                <lu>--%>
<%--                                    <c:if test="${error}">--%>
<%--                                        &lt;%&ndash;                            ${error} eror&ndash;%&gt;--%>
<%--                                        <small class="form-text text-danger">Некорректное имя пользователя или--%>
<%--                                            пароль</small>--%>
<%--                                    </c:if>--%>
<%--                                </lu>--%>
                                <lu>
                                    <c:choose>
                                        <c:when test="${error}">
                                            <small class="form-text text-danger">Некорректное имя пользователя или
                                                пароль</small>
                                        </c:when>
                                        <c:when test="${!error}">
                                            <small class="form-text text-primary">Введите имя пользователя и
                                                пароль</small>
                                        </c:when>
                                        <c:otherwise>Если нету подходящего значения</c:otherwise>
                                    </c:choose>

                                </lu>

                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control " id="password" name="password"
                                       placeholder="Password">
                                <label for="password">Password</label>
                            </div>
                            <div class="checkbox mb-3">
                                <label for="remember-me">
                                    <input type="checkbox" id="remember-me" name="remember-me"> Remember me
                                </label>
                            </div>
                            <button class="w-100 btn btn-lg btn-outline-primary" type="submit" value="login">Войти
                            </button>
                            <a href="/signUp">
                                <button type="button" class="w-100 btn btn-lg btn-outline-primary">Регистрация</button>
                            </a>
                            <hr class="my-4">
                            <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
                        </form>
                    </div>
                </div>
            </div>
        </main>


<%--        <div class="goog-te-spinner-pos">--%>
<%--            <div class="goog-te-spinner-animation">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px"--%>
<%--                     viewBox="0 0 66 66">--%>
<%--                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33"--%>
<%--                            cy="33" r="30"></circle>--%>
<%--                </svg>--%>
<%--            </div>--%>
<%--        </div>--%>
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
