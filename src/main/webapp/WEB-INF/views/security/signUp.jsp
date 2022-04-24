<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Пример оформления заказа · Bootstrap v5.1</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-light">
<jsp:include page="../blocks/header.jsp"/>
<div class="container-fluid" >
    <div class="row">
        <jsp:include page="../blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="col-md-10 mx-auto col-lg-5">
                <form class="p-4 p-md-5 border rounded-3 bg-light" action="${pageContext.request.contextPath}/signUp" method="post">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="login" name="login" placeholder="Login">
                        <label for="login">Логин</label>
                        <small class="form-text text-danger">Validation error</small>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="firstName" name="firstName" placeholder="FirstName">
                        <label for="firstName">Имя</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="lastName" name="lastName" placeholder="LastName">
                        <label for="lastName">Фамилия</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                        <label for="email">почта</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                        <label for="password">Password</label>
                        <small class="form-text text-danger">Validation error</small>
                    </div>
                    <button class="w-100 btn btn-lg btn-primary" type="submit" value="signUp">Sign up</button>
                    <hr class="my-4">
                    <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
                </form>
            </div>
        </main>
        <div class="goog-te-spinner-pos">
            <div class="goog-te-spinner-animation">
                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
                </svg>
            </div>
        </div>
    </div>
</div>
    <jsp:include page="../blocks/footer.jsp"/>
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