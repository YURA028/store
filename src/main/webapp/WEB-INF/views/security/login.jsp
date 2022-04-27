<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
    <%--    <link href="/resources/css/styles.css" rel="stylesheet" type="text/css">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>

<body>
<jsp:include page="../blocks/header.jsp"/>

<div class="goog-te-spinner-pos">
    <div class="goog-te-spinner-animation">
        <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
            <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33"
                    r="30"></circle>
        </svg>
    </div>
</div>
<div id="rememberry__extension__root" style="all: unset;"></div>
</body>
<div class="container col-xl-10 col-xxl-8 px-4 py-5">
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
                    <lu>
                        <c:if test="${error != null}">
<%--                            ${error} eror--%>
                            <small class="form-text text-danger">Некорректное имя пользователя или пароль</small>
                        </c:if>
                    </lu>
                    <lu>
                        <c:choose>
                            <c:when test="${error != null}">
                                <small class="form-text text-danger">Некорректное имя пользователя или пароль</small>
                            </c:when>
                            <c:when test="${error == null}">
                                <small class="form-text text-primary">Введите имя пользователя или пароль</small>
                            </c:when>
                            <c:otherwise>Если нету подходящего значения</c:otherwise>
                        </c:choose>

                    </lu>

                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    <label for="password">Password</label>
                </div>
                <div class="checkbox mb-3">
                    <label for="remember-me">
                        <input type="checkbox" id="remember-me" name="remember-me"> Remember me
                    </label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit" value="login">Sign up</button>
                <hr class="my-4">
                <small class="text-muted">By clicking Sign up, you agree to the terms of use.</small>
            </form>
        </div>
    </div>
</div>

<jsp:include page="../blocks/footer.jsp"/>
</body>
</html>
