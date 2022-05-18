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
<body class="bg-white">
<%@include file="blocks/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp" %>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="py-3 text-start">
                <span style="vertical-align: inherit;">
                   <h1> <span style="vertical-align: inherit;">${product.name}</span></h1>
                </span>
            </div>
            <div class="card-header bg-white nav">
                <br>
                <div class="p-4 flex-column position-static">
                    <c:forEach items="${images}" var="image">
                        <%--                        <img src="/images/${image.id}" class=" img-fluid rounded mx-auto d-block" height="150" alt="${image.name}"><br>--%>
                       <div class="p-1">
                        <img src="/images/${image.id}"
                             class=" p-1 rounded  d-block"
                             height="200px"
                             alt="${image.name}" style="border:1px solid #9198A1FF"></div>
                    </c:forEach>
                </div>
                <hr>
                <%--                <div class="m-3">--%>
                <div class="col p-4 flex-column position-static">
                    <dl class="dl-horizontal">
                        <dt><spring:message code="productType.title"/>:</dt>
                        <dd><spring:message code="productType.${product.productType.name}"/></dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt><spring:message code="title.maker"/>:</dt>
                        <dd>${product.maker.name}</dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt><spring:message code="basket.price"/>:</dt>
                        <dd>${product.price} руб.</dd>
                    </dl>
                    <dl class="dl-horizontal">
                        <dt><spring:message code="color.title"/>:</dt>
                        <dd><spring:message code="color.${product.color}"/></dd>
                    </dl>
<%--                    <dl class="dl-horizontal">--%>
<%--                        <dt><spring:message code="label.description"/>:</dt>--%>
<%--                        <div class="  text-wrap text-dark" style="width: 30rem;">--%>
<%--                        <dd>${product.description}</dd>--%>
<%--                        </div>--%>
<%--                    </dl>--%>
<%--                    <hr>--%>
                </div>
                <br><br>
                <hr>
                <br>
                <div class="col p-4 d-flex flex-column position-static">
                    <div class="text-center">
                        <h4>Все товары пользователя</h4>
                    </div>
                    <div class="text-end">
                        <form action="/user/${product.user.id}" method="get">
                            <button type="submit" class="btn btn-outline-success">
                                <img src="/resources/images/avatar.png" alt="mdo" width="32" height="32"
                                     class="rounded-circle">
                                ${authorProduct.firstName}
                            </button>
                        </form>
                    </div>
                    <div class="text-end ">
                        <form action="/product/${product.id}/basket" method="get">
                            <button type="submit" class="btn btn-outline-success">
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                     fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                                    <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                                </svg>
                                <spring:message code="basket.add"/>
                            </button>
                        </form>
                    </div>
                    <c:if test="${userPrincipal.role == 'ADMIN'}">
                        <div class="text-end ">
                            <form action="/product/${product.id}/edit" method="get">
                                <button type="submit" class="btn btn-outline-success">
                                    <spring:message code="label.edit"/>
                                </button>
                            </form>
                        </div>
                    </c:if>
                </div>
                <hr>
            </div>
            <div>
                <dl class="dl-horizontal">
                    <h3><dt><spring:message code="label.description"/>:</dt></h3>
                    <div class="  text-wrap text-dark" style="width: 40rem;">
                        <dd>${product.description}</dd>
                    </div>
                </dl>
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