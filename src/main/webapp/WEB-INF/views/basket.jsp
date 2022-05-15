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
<body class="bg-light bg-white">
<%@include file="blocks/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp" %>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h2>Корзина</h2>
            <%--            <table class="table table-sm border-success">--%>
            <%--            <table class="table table-striped table-warning">--%>
            <div class="card-header nav">
                <div class="p-3 flex-column position-static">
                    <table class="table table-bordered border-primary   ">
                        <tr class="text-center">
                            <td>№</td>
                            <th>Фото</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Sum</th>
                            <th>Amount</th>

                        </tr>
                        <c:forEach items="${baskets.basketDetails}" varStatus="status" var="basket">
                            <tr class="text-center text-start">
                                <td width="30px">${status.count}</td>
                                <td width="100px" class="text-center">
                                    <img src="/images/${basket.previewImageId}" height="100px"/>
                                </td>
                                <td width="100px">${basket.name}</td>
                                <td width="100px">${basket.price}</td>
                                <td width="100px">${basket.sum}</td>
                                <td width="100px">${basket.amount}</td>
                                <td>
                                        <%--                                    <div class="nav col-6 mb-md-0">--%>
                                    <form action="/basket/product/${basket.productId}" method="get">
                                        <button type="submit" class="btn btn-outline-success">+</button>
                                    </form>
                                    <form action="/basket/delete/${basket.productId}" method="post">
                                        <button type="submit" class="btn btn-outline-danger">-</button>
                                    </form>
                                        <%--                                </td>--%>
                                        <%--                                <td>--%>
                                        <%--                                        <a type="text"--%>
                                        <%--                                           class="btn bg-white text-dark btn-outline-light">${basket.amount}</a>--%>

                                        <%--                                    </div>--%>
                                </td>
                                    <%--                        <td>--%>
                                    <%--                            <form action="/basket/delete/${basket.productId}" method="post">--%>
                                    <%--                                    &lt;%&ndash;                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>&ndash;%&gt;--%>
                                    <%--                                <button type="submit" class="btn btn-outline-danger">-</button>--%>
                                    <%--                            </form>--%>
                                    <%--                        </td>--%>
                                    <%--                        <td>--%>
                                    <%--                            <form action="/basket/deleteAll/${basket.productId}" method="post">--%>
                                    <%--                                <button type="submit" class="btn btn-outline-dark">Удалить товар</button>--%>
                                    <%--                            </form>--%>
                                    <%--                        </td>--%>
                            </tr>
                        </c:forEach>
                        <%--                        <tr>--%>
                        <%--                            <td colspan="5"><h3>Сумма заказа:</h3></td>--%>
                        <%--                            <td><h3>${baskets.sum} $</h3></td>--%>
                        <%--                        </tr>--%>


                    </table>
                </div>
                <div class="col p-3  flex-column position-static">
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-dark">
                            <div class="card-header py-3 text-dark btn btn-outline-light border-dark">
                                <h4 class="my-0 fw-normal">Заказа:</h4>
                            </div>
                            <div class="card-body">
                                                                <h3>Сумма заказа:</h3>
                                <h3>${baskets.sum} $</h3>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li>30 users included</li>
                                    <li>15 GB of storage</li>
                                    <li>Phone and email support</li>
                                    <li>Help center access</li>
                                </ul>
                                <form action="/basket/deleteAll/${userPrincipal.basket.id}" method="post">
                                    <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>--%>
                                    <button type="submit" class="w-100 btn btn-outline-danger">Очистить корзину</button>
                                </form>
                                <button type="submit" class="w-100 text-dark btn btn-lg btn-outline-success">Оформить заказ</button>
                            </div>
                        </div>
                    </div>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <br>--%>
<%--                    <div>--%>
<%--                        <h3>Сумма заказа:</h3>--%>
<%--                        <h3>${baskets.sum} $</h3>--%>
<%--                    </div>--%>
<%--                    <form action="#" method="post">--%>
<%--                        &lt;%&ndash;                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>&ndash;%&gt;--%>
<%--                        <button type="submit" class="btn btn-outline-dark">Оформить заказ</button>--%>
<%--                    </form>--%>
<%--                    <form action="/basket/deleteAll/${userPrincipal.basket.id}" method="post">--%>
<%--                        &lt;%&ndash;                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>&ndash;%&gt;--%>
<%--                        <button type="submit" class="btn btn-outline-dark">Очистить корзину</button>--%>
<%--                    </form>--%>
                </div>
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
