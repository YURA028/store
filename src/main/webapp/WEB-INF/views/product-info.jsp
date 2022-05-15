<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
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
<%@include file="blocks/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp" %>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

            <div class="card-header nav">
                <br>
                <div class="p-4 flex-column position-static">
                    <c:forEach items="${images}" var="image">
                        <img src="/images/${image.id}" height="200px" alt="${image.name}"><br>
                    </c:forEach>
                </div>
                <hr>
                <%--                <div class="m-3">--%>
                <div class="col p-4 flex-column position-static">
                    <h1><spring:message code="label.description"/></h1>

                    <dl class="dl-horizontal">
                        <dt>Название товара:</dt>
                        <dd>${product.name}</dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>Цена товара:</dt>
                        <dd>${product.price} $</dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>Цвет товара:</dt>
                        <dd>${product.color}</dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>Описание товара:</dt>
                        <dd>${product.description}</dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>Производитель товара:</dt>
                        <dd>${product.maker.name}</dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt>Тип товара:</dt>
                        <dd>${product.productType.name}</dd>
                    </dl>
                    <hr>

                </div>
                <br><br>
                <hr>
                <br>
                <div class="col p-4 d-flex flex-column position-static">
                    <div >
                        <h4>Все товары пользователя</h4>
                        <p style="text-align: left">
                            <a href="/user/${authorProduct.id}" >
                                <img src="../resources/images/avatar.png" alt="mdo" width="32" height="32"
                                     class="rounded-circle">
                                <button type="submit" class="btn btn-success">${authorProduct.firstName}</button>
                            </a>
                        </p>
                    </div>
                    <br>
                    <%--                    <div>--%>
                    <%--                        <span sec:authentication="${userPrincipal.username}">${userPrincipal.username}</span>--%>
                    <%--                    </div>--%>
                    <div class="bd-example">
                        <a href="/product/${product.id}/basket">
                            <button type="submit" class="btn btn-success">Добавить в корзину</button>
                        </a>
                    </div>
                </div>
                <hr>
            </div>

        </main>

    </div>
</div>
<div>
    <%@include file="blocks/footer.jsp" %>
</div>

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