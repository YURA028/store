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
            <div class="py-3 text-center">
                <span style="vertical-align: inherit;">
                    <span style="vertical-align: inherit;"><h1>Редактирование пользователя</h1></span>
                </span>
            </div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col text-center">
                        <form  class="col-sm-10 col-sm offset-1" action="/profile/edit"
                               method="post" value="${users}"
                               enctype="multipart/form-data">
                            <div class="form-floating mb-1">
                                <input type="text" required class="form-control"
                                       id="username" name="username" value="${users.username}" placeholder="username">
                                <label for="username">username</label>
                            </div>
                            <div class="form-floating mb-1">
                                <input type="text" value="${users.email}"  class="form-control"
                                       placeholder="email" id="email"
                                       name="email">
                                <label for="email">email </label>
                            </div>
                            <div class="form-floating mb-1">
                                <input type="text" value="${users.firstName}"  class="form-control"
                                       placeholder="firstName" id="firstName"
                                       name="firstName">
                                <label for="firstName">firstName </label>
                            </div>
                            <div class="form-floating mb-1">
                                <input type="password" value="${users.password}"  class="form-control"
                                       placeholder="password" id="password"
                                       name="password">
                                <label for="firstName">password </label>
                            </div>
                            <div class="form-floating mb-1">
                                <input type="password" value="${users.matchingPassword}"  class="form-control"
                                       placeholder="matchingPassword" id="matchingPassword"
                                       name="matchingPassword">
                                <label for="firstName"> matchingPassword </label>
                            </div>
                            <br>
                            <button type="submit" style="width: 100%" class="btn btn-outline-success">
                                <spring:message code="label.refresh"/>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
<%--            <h1 style="text-align: center">Личный кабинет</h1>--%>
<%--                <form action="/profile/edit" value="${users}" method="post">--%>
<%--                    <label> username:--%>
<%--                        <input type="text" value="${users.username}" name="username" placeholder="username "--%>
<%--                               class="form-control">--%>
<%--                    </label>--%>
<%--                    <br>--%>
<%--                    <label>email:--%>
<%--                        <input type="text" value="${users.email}" name="email" placeholder="email "--%>
<%--                               class="form-control">--%>
<%--                    </label>--%>
<%--                    <br>--%>
<%--                    <label>firstName:--%>
<%--                        <input  type="text" value="${users.firstName}" name="firstName"--%>
<%--                                placeholder="firstName " class="form-control">--%>
<%--                    </label>--%>
<%--                    <br>--%>
<%--                    <label>firstName:--%>
<%--                        <input  type="password" value="${users.password}" name="password"--%>
<%--                                placeholder="password " class="form-control">--%>
<%--                    </label>--%>
<%--                    <br>--%>
<%--                    <label>firstName:--%>
<%--                        <input  type="password" value="${users.matchingPassword}" name="matchingPassword"--%>
<%--                                placeholder="matchingPassword " class="form-control">--%>
<%--                    </label>--%>
<%--                    <br>--%>
<%--                        &lt;%&ndash;                                <label>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                <textarea name="full_text" placeholder="Введите полный текст статьи" class="form-control" >${thePosts.serialNumber}</textarea>&ndash;%&gt;--%>
<%--                        &lt;%&ndash;                                </label><br>&ndash;%&gt;--%>
<%--                    <button type="submit" class="btn btn-success">Обновить</button>--%>
<%--                </form>--%>
        </main>

    </div>
</div>
<%@include file="blocks/footer.jsp" %>
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
