<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../resources/css/style.css">
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
<jsp:include page="blocks/header.jsp"/>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h1 style="text-align: center">Информация о пользователе</h1>
            <hr>
            <div style="text-align: center">
                <img src="../resources/images/avatar.png"
                     style="border:2px solid black; border-radius: 20px" height="120">
                <br>
                <br>
                <h2>${user.firstName}</h2>
                <br>
                Data: <b>${user.dateOfCreated}</b>
            </div>
            <br>
            <hr>
            <h1 style="text-align: center">Товары пользователя ${user.firstName}</h1>
            <br>
            <div class="card-columns">
                <c:forEach items="${products}" var="product">
                <a href="/product/${product.id}" class="product-link">
                    <div class="card text-white bg-dark my-3 product">

                        <img src="/images/${product.previewImageId}"
                             class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${product.name}</h5>
                            <p class="card-text">${product.price} ₽</p>
                        </div>
                        <div class="card-footer">
                            ${product.user.firstName}
                        </div>
                    </div>
                </a>
                    <c:if test="${user.products == null}">
                    <h1 style="text-align: center">Не найдено</h1>
                    </c:if>

                </c:forEach>
    </div>
        </main>

    </div>
</div>
<jsp:include page="blocks/footer.jsp"/>
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
