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
<body class="bg-light bg-white">
<%@include file="blocks/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp" %>
        <main class="col-md-9 ms-sm-auto bg-white col-lg-10 px-md-4">
            <div class="py-3 text-center">
                <span style="vertical-align: inherit;">
                    <span style="vertical-align: inherit;"><h1>ИНТЕРНЕТ-МАГАЗИН ЭЛЕКТРИКИ</h1></span>
                </span>
            </div>

            <hr>
            <div class="card-columns text-dark bg-white my-lg-0 my-md-0 product col">
                <a href="/filter1/Автоматы" class="product-link">
                    <div class="card  bg-black my-1 product ">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaxpsObViii7BPao2cdpPSPeMI_6u7HDQZg&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
<%--                            <h5>--%>
<%--                                Автоматы ///////////--%>
<%--                            </h5>--%>
                        </div>
                    </div>

                </a>
                <a href="/filter1/Кабель" class="product-link">

                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfBXs-q3c7DU0ZtQizYGW5BHpg1ixQiMJIMA&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
<%--                            <h5>--%>
<%--                                Кабель--%>
<%--                            </h5>--%>
                        </div>
                    </div>

                </a>
                <a href="/filter1/Гофра" class="product-link">
                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRoIUIwIo4MjVMQkJ53c82_wItnMiJ9yIoHZg&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
<%--                            <h5>--%>
<%--                                Гофра--%>
<%--                            </h5>--%>
                        </div>
                    </div>
                </a>
                <a href="/filter1/Автоматы" class="product-link ">
                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiePGQASLNA-On8ATUbfiMeIkLCLlgQNH8FA&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
<%--                            <h5>--%>
<%--                                Автоматы--%>
<%--                            </h5>--%>
                        </div>
                    </div>
                </a>
                <a href="/filter1/Лампочки" class="product-link">
                    <div class="card  bg-black my-1 product">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDP6wCJAfmwHs8dagsdnyzLCFoeLlHQq_GEQ&usqp=CAU"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
<%--                            <h5>--%>
<%--                                Лампочки--%>
<%--                            </h5>--%>
                        </div>
                    </div>
                </a>
                <a href="/filter1/Распаечная коробка" class="product-link">
                    <div class="card  bg-black my-1 product">
                        <img src="https://www.stroysmi.ru/wp-content/uploads/2016/06/4345678.gif"
                             class="card-img-top img-fluid img-thumbnail">
                        <div class="text-white text-center d-md-block col ">
<%--                            <h5>--%>
<%--                                Распаечная коробка--%>
<%--                            </h5>--%>
                        </div>
                    </div>
                </a>
            </div>
            <hr>
            <h3>Товары магазина:</h3>
            <hr>
            <div class="card-columns ">
                <%--                <div class="card-columns text-dark bg-white my-lg-0 my-md-0 product col">--%>
                <c:forEach items="${products}" begin="1" step="1" end="10" var="product">
                    <a href="/product/${product.id}" class="product-link">
                        <div class="card  bg-white my-1 product"  style="border:1px solid black">
                            <img src="/images/${product.previewImageId}"
                                 class="card-img-top img-fluid img-thumbnail">
                            <div class="text-black text-center d-md-block col ">
                                <h5>
                                    <h5 class="card-title">${product.name}</h5>
                                    <p class="card-text">Цена: ${product.price} $</p>
                                </h5>
                            </div>
                        </div>
                    </a>
                    <%--                    <a href="/product/${product.id}" class="product-link">--%>
                    <%--                        <div class="card text-white bg-dark my-3 product">--%>
                    <%--                            <img src="/images/${product.previewImageId}"--%>
                    <%--                                 class="card-img-top">--%>
                    <%--                            <div class="card-body text-center align-items-center">--%>
                    <%--                                <h5 class="card-title">${product.name}</h5>--%>
                    <%--                                <p class="card-text">Цена: ${product.price} $</p>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </a>--%>

                </c:forEach>

            </div>
            <%--            <div class="row product-item-detail-bigdata" data-entity="parent-container">--%>
            <%--                <c:forEach items="${products}" end="8" step="2" begin="1" var="product">--%>
            <%--                    &lt;%&ndash;                        <a href="/product/${product.id}" class="product-link">&ndash;%&gt;--%>
            <%--                    <div class="card text-dark bg-white my-2 product col-xs-3 col-md-3">--%>
            <%--                        <a href="/product/${product.id}" class="product-link">--%>
            <%--                            <img src="/images/${product.previewImageId}"--%>
            <%--                                 class="card-img-top">--%>
            <%--                        </a>--%>
            <%--                        <div class="card-body text-center align-items-center">--%>
            <%--                            <h5 class="card-title">${product.name}</h5>--%>
            <%--                            <p class="card-text">Цена: ${product.price} $</p>--%>
            <%--                            <p class="card-text">id: ${product.id}</p>--%>
            <%--                        </div>--%>

            <%--                            &lt;%&ndash;                            <a href="/user/${product.user.id}" class="product-link text-white">&ndash;%&gt;--%>
            <%--                        <div class="text-center card-footer bg-dark">--%>
            <%--                            <a href="/product/${product.id}/basket">Добавить в корзину</a>--%>

            <%--                                &lt;%&ndash;    <c:url var="addLink" value="/basket222/addBasket">&ndash;%&gt;--%>
            <%--                                &lt;%&ndash;        <c:param name="productId" value="${product.id}"/>&ndash;%&gt;--%>
            <%--                                &lt;%&ndash;    </c:url>&ndash;%&gt;--%>
            <%--                                &lt;%&ndash;    <a href="${addLink}">AddBasket</a>&ndash;%&gt;--%>
            <%--                        </div>--%>
            <%--                            &lt;%&ndash;                            </a>&ndash;%&gt;--%>
            <%--                    </div>--%>
            <%--                    &lt;%&ndash;                        </a>&ndash;%&gt;--%>
            <%--                </c:forEach>--%>
            <%--                <c:if test="${products == null}">--%>
            <%--                    <h1 style="text-align: center">Не найдено</h1>--%>
            <%--                </c:if>--%>
            <%--            </div>--%>

        </main>


        <%--        <div class="goog-te-spinner-pos">--%>
        <%--            <div class="goog-te-spinner-animation">--%>
        <%--                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px"--%>
        <%--                     viewBox="0 0 66 66">--%>
        <%--                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33"--%>
        <%--                            cy="33" r="30"></circle>--%>
        <%--                </svg>--%>
        <%--            </div>--%>
        <%--        </div>--%>
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