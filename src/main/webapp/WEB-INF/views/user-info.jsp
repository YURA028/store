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
    <title>user-info</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-white">
<%@include file="blocks/header.jsp"%>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp"%>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h1 style="text-align: center">Информация о пользователе</h1>
            <hr>
            <div class="card-header bg-white nav">
                <br>
                <div class="p-4 flex-column position-static">
                    <img src="/resources/images/avatar.png"
                         style="border:2px solid #0e6e0e; border-radius: 20px" height="120">
                </div>
                <div class="col p-4 flex-column position-static">
                    name: <b>${user.firstName}</b><br>
                    Логин: <b>${user.username}</b><br>
                    Email: <b>${user.email}</b><br>
                    Role: <b>${user.role.name()}</b><br>
                    Status: <b>${user.state.name()}</b>
                    <br>
                </div>
                <br><br>
                <br>
                <div class="col p-4 d-flex flex-column position-static">
                    <div>
                    <h5>Address:</h5>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                         class="bi bi-telephone-forward" viewBox="0 0 16 16">
                        <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zm10.762.135a.5.5 0 0 1 .708 0l2.5 2.5a.5.5 0 0 1 0 .708l-2.5 2.5a.5.5 0 0 1-.708-.708L14.293 4H9.5a.5.5 0 0 1 0-1h4.793l-1.647-1.646a.5.5 0 0 1 0-.708z"/>
                    </svg>
                    phone:<b>${user.address.phone}</b><br>
                    city: <b>${user.address.city}</b><br>
                    street: <b>${user.address.street}</b><br>
                    building: <b>${user.address.building}</b>
                    <br>
                    </div>
                </div>
            </div>
            <br>
            <h1 style="text-align: center">Товары пользователя ${user.firstName}</h1>
            <hr>
            <div class="container mt-4 ">
                <div class="row product-item-detail-bigdata " data-entity="parent-container">
                    <c:forEach items="${products}" var="product">
                        <%--                        <a href="/product/${product.id}" class="product-link">--%>
                        <div class="card text-dark btn btn-outline-success bg-white my-3 product col-xs-4 col-md-3">
                            <a href="/product/${product.id}" class="product-link">
                                <img src="/images/${product.previewImageId}"
                                    <%--                                     class="card rounded mx-auto d-block" height="150">--%>
                                     class=" img-fluid rounded mx-auto d-block" height="150">
                            </a>
                            <div class="card-body  text-center align-items-center">
                                <h5 class="card-title ">${product.name}</h5>
                                <p class="card-text ">Цена: ${product.price} $</p>
                            </div>
                            <div class="text-center ">
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
                        </div>
                    </c:forEach>
                    <c:if test="${products == null}">
                        <h1 style="text-align: center">Не найдено</h1>
                    </c:if>
                </div>
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
