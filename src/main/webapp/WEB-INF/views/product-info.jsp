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
            <%--                        <div id="myCarousel" class="carousel "  data-ride="carousel">--%>
            <%--                            <ol class="carousel-indicators">--%>
            <%--                                <c:forEach items="${images}" var="image">--%>
            <%--                                    <li data-target="myCarousel" data-slide-to="0" class=""></li>--%>
            <%--                                </c:forEach>--%>
            <%--                            </ol>--%>
            <%--                            <br>--%>
            <%--                            <div class="carousel-inner">--%>
            <%--                                <c:forEach items="${images}" var="image">--%>
            <%--                                    <div class="carousel-item <c:if test="${image.previewImage}" >active</c:if>">--%>
            <%--                                        <svg class="bd-placeholder-img " width="100%" height="50%"--%>
            <%--                                             xmlns="http://www.w3.org/2000/svg"--%>
            <%--                                             role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false">--%>
            <%--                                            <title></title>--%>
            <%--                                            <rect width="100%" height="100%" fill="#7777"></rect>--%>
            <%--                                            <text x="50%" y="50%" fill="#777" dy=".3em"></text>--%>
            <%--                                        </svg>--%>

            <%--                                        <div class="container">--%>
            <%--                                            <div class="carousel-caption">--%>
            <%--                                                <a href="/images/${image.id}">--%>
            <%--                                                    <img class="product" style="height: 200px" src="/images/${image.id}"--%>
            <%--                                                         height="100px">--%>
            <%--                                                </a>--%>
            <%--                                            </div>--%>
            <%--                                        </div>--%>
            <%--                                    </div>--%>
            <%--                                </c:forEach>--%>


            <%--                            </div>--%>
            <%--                            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">--%>
            <%--                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>--%>
            <%--                                <span class="sr-only">Previous</span>--%>
            <%--                            </a>--%>
            <%--                            <a class="carousel-control-next " href="#myCarousel" role="button" data-slide="next">--%>
            <%--                                <span class="carousel-control-next-icon" aria-hidden="true"></span>--%>
            <%--                                <span class="sr-only ">Next</span>--%>
            <%--                            </a>--%>
            <%--                        </div>--%>
            <div class="card-header nav">
                <br>
                <div class="p-4 flex-column position-static" >
                    <c:forEach items="${images}" var="image">
                        <img src="/images/${image.id}" height="200px" alt="${image.name}"><br>
                    </c:forEach>
                </div>
                <hr>
<%--                <div class="m-3">--%>
                <div class="col p-4 flex-column position-static">
                    <h1>Описание</h1>
<%--                    <p>Название товара: ${product.name}</p>--%>
<%--                    <p>Цена товара: ${product.price} $</p>--%>
<%--                    <p>Цвет товара: ${product.color}</p>--%>
<%--                    <p class="card-text mb-auto">Описание товара: ${product.description}</p><br>--%>
<%--                    <p>Производитель товара: ${product.maker.name}</p><br>--%>
<%--                    <p>Тип товара: ${product.productType.name}</p><br>--%>
<%--                    <p>Дата добавления товара: ${product.dateOfCreated}</p><br>--%>

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

<%--                    <abbr title="${product.description}" class="initialism">HTML</abbr>--%>
<%--                    <abbr title="${product.description}">attr</abbr>--%>

                    <%--            <p>--%>
                    <%--            <h1 style="text-align: center">--%>
                    <%--                 | ${product.price} ₽--%>
                    <%--            </h1>--%>
                    <%--            </p>--%>
                    <%--            <p style="text-align: center">${product.description}</p>--%>
                    <%--            <p style="text-align: center">Номер Имя продавца:--%>
                    <%--                <b>${authorProduct.firstName}</b>--%>
                    <%--            </p>--%>
                    <%--                <div class="form-group align-content-center">--%>
                    <%--                    <label type="color" value="${product.color}"  class="form-label">Цвет--%>
                    <%--                        <input type="color" value="${product.color}">--%>
                    <%--                    </label>--%>
                    <%--                </div>--%>

                    <hr>

                </div><br><br>
                <hr>
                <br>
                <div class="col p-4 d-flex flex-column position-static">
                    <h4>Продавец</h4>
                    <p style="text-align: left">
                        <a href="/user/${authorProduct.id}">
                            <img src="../resources/images/avatar.png" alt="mdo" width="32" height="32"
                                 class="rounded-circle"> ${authorProduct.username}
                        </a>
                    </p>
                    <div>

                    </div>
                    <div>
                        <span sec:authentication="${userPrincipal.username}">Bill</span>
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