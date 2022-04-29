<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Пример оформления заказа · Bootstrap v5.1</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-light">
<jsp:include page="../blocks/header.jsp"/>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="../blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="py-5 text-center">
                <h2>
                <span style="vertical-align: inherit;">
                    <span
                            style="vertical-align: inherit;">Форма оформления заказа</span>
                </span>
                </h2>
            </div>

            <hr>
            <h3>
                <c:if test="${user.role.name() == 'ADMIN'}">
                    <a href="/admin">Админ</a>
                </c:if>
                <c:choose>
                    <c:when test="${user.email != null}">
                        <h3>Имя пользователя: <i>${user.firstName}</i></h3>
                        <form action="${pageContext.request.contextPath}/logout" method="post">
                                <%--                            <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                            <input type="submit" value="Выйти"/>
                        </form>
                    </c:when>
                    <c:when test="${user.email == null}">
                        <a href="${pageContext.request.contextPath}/login">Войти</a></h1>
                    </c:when>
                </c:choose>
            </h3>
            <h4>Товары </h4>
<%--            <form action="${pageContext.request.contextPath}/main/product" method="get">--%>
<%--                Поиск по названию объявления: <input type="text" name="name"><br>--%>
<%--                <input type="submit" value="Поиск"/>--%>

<%--            </form>--%>
            <c:forEach items="${products}" var="product">
                <div>
                    <p><b>${product.name}</b> ${product.price} руб.
                        <a type="submit" href="/main/product/${product.id}">Подробнее...</a>
                    </p>
                </div>
            </c:forEach>

            <h5>Товаров нет</h5>

            <c:if test="${user.email != null}">
                <hr>
                <h3>Создать новый товар</h3>
                <form action="${pageContext.request.contextPath}/main/product/create" method="post"
                      enctype="multipart/form-data">
                    Название товара: <label>
                    <input type="text" name="name"/>
                </label><br><br>
                    Описание товара: <label>
                    <input type="text" name="description"/>
                </label><br><br>
                    Цена: <label>
                    <input type="number" size="6" name="price"/>
                </label><br><br>
                    Производитель: <label>
                    <input type="text" name="maker.name"/>
                </label><br><br>
                    Тип продукта: <label>
                    <input type="text" name="productType.name"/>
                </label><br><br>
                    Цвет: <label>
                    <input type="text" name="color"/>
                </label><br><br>
                    Первая фотография: <input type="file" name="file1"/><br><br>
                    Вторая фотография: <input type="file" name="file2"/><br><br>
                    Третья фотография: <input type="file" name="file3"/><br><br>
                    <input type="submit" value="Добавить товар"/>
                </form>
            </c:if>
        </main>


        <div class="goog-te-spinner-pos">
            <div class="goog-te-spinner-animation">
                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px"
                     viewBox="0 0 66 66">
                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33"
                            cy="33" r="30"></circle>
                </svg>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../blocks/footer.jsp"/>
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
