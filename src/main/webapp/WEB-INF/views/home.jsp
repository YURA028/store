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
    <title><spring:message code="title.home"/></title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-light bg-white">
<%@include file="blocks/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp" %>
        <main class="col-md-9 ms-sm-auto bg-white col-lg-10 px-md-4">
            <div class="py-3 text-center">
                <span style="vertical-align: inherit;">
                    <span style="vertical-align: inherit;"><h1><spring:message code="title.home"/></h1></span>
                </span>
            </div>
            <hr>
            <div class="card-columns text-dark bg-white my-lg-0 my-md-0  col">
                <a href="/filterType/cableChannel" class="product-link">
                    <div class="card  bg-black my-1 product ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaxpsObViii7BPao2cdpPSPeMI_6u7HDQZg&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
                            <h5>
                                <spring:message code="productType.automata"/>
                            </h5>
                        </div>
                    </div>
                </a>
                <a href="/filterType/cableWire" class="product-link">
                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfBXs-q3c7DU0ZtQizYGW5BHpg1ixQiMJIMA&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
                            <h5>
                                <spring:message code="productType.cableWire"/>
                            </h5>
                        </div>
                    </div>
                </a>
                <a href="/filterType/socketsSwitches" class="product-link">
                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoIUIwIo4MjVMQkJ53c82_wItnMiJ9yIoHZg&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
                            <h5>
                                <spring:message code="productType.socketsSwitches"/>
                            </h5>
                        </div>
                    </div>
                </a>
                <a href="/filterType/automata" class="product-link ">
                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiePGQASLNA-On8ATUbfiMeIkLCLlgQNH8FA&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
                            <h5>
                                <spring:message code="productType.automata"/>
                            </h5>
                        </div>
                    </div>
                </a>
                <a href="/filterType/lightingTechnology" class="product-link">
                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDP6wCJAfmwHs8dagsdnyzLCFoeLlHQq_GEQ&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
                            <h5>
                                <spring:message code="productType.lightingTechnology"/>
                            </h5>
                        </div>
                    </div>
                </a>
                <a href="/filterType/enclosuresBoxes" class="product-link">
                    <div class="card  bg-black my-1 product">
                        <img src="https://www.stroysmi.ru/wp-content/uploads/2016/06/4345678.gif"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
                            <h5>
                                <spring:message code="productType.enclosuresBoxes"/>
                            </h5>
                        </div>
                    </div>
                </a>
            </div>
            <hr>
            <h3><spring:message code="title.home.two"/> </h3>
            <hr>
            <div class="card-columns ">
                <c:forEach items="${products}" begin="1" step="1" end="10" var="product">
                    <a href="/product/${product.id}" class="product-link">
                        <div class="card  bg-white my-1 product"  style="border:1px solid black">
                            <img src="/images/${product.previewImageId}"
                                 class=" img-fluid rounded mx-auto d-block"  height="150px">
                            <div class="text-black text-center d-md-block col ">
                                <h5>
                                    <h5 class="card-title">${product.name}</h5>
                                    <p class="card-text">Цена: ${product.price} $</p>
                                </h5>
                            </div>
                        </div>
                    </a>
                </c:forEach>
            </div>
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