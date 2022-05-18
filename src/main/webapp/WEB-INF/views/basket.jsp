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
<body class="bg-light bg-white">
<%@include file="blocks/header.jsp" %>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp" %>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <%--            <h1><spring:message code="label.description"/> </h1>--%>
            <div class="py-3 p-4  text-start">
                <h3>
                <span style="vertical-align: inherit;">
                    <span style="vertical-align: inherit;"><spring:message code="basket.userCart"/></span>
                </span>
                </h3>
            </div>
            <div class="bg-white card-header nav">
                <div class="p-1 flex-column position-static">
                    <table class="table table-bordered border-primary   ">
                        <tr class="text-center">
                            <td>№</td>
                            <th><spring:message code="basket.photo"/></th>
                            <th><spring:message code="basket.title"/></th>
                            <th><spring:message code="basket.price"/></th>
                            <th><spring:message code="basket.sum"/></th>
                            <th><spring:message code="basket.amount"/></th>
                        </tr>
                        <c:forEach items="${baskets.basketDetails}" varStatus="status" var="basket">
                            <tr class="text-center text-start">
                                <td width="30px">${status.count}</td>
                                <td width="100px" class="text-center">
                                    <a href="/product/${basket.productId}" class="product-link">
                                        <img class="img-fluid" src="/images/${basket.previewImageId}" height="100px"/>
                                    </a>
                                </td>
                                <td width="70px">
                                    <div class="  text-wrap text-dark" style="width: 6rem;">
                                            ${basket.name}
                                    </div>
                                </td>
                                <td width="70px">${basket.price}</td>
                                <td width="70px">${basket.sum}</td>
                                <td width="70px">${basket.amount}</td>
                                <td>
                                    <form action="/basket/product/${basket.productId}" method="get">
                                        <button type="submit" class="btn btn-outline-success">+</button>
                                    </form>
                                    <form action="/basket/delete/${basket.productId}" method="post">
                                        <c:if test="${basket.amount > 1}">
                                            <button type="submit" class="btn btn-outline-danger">-</button>
                                        </c:if>
                                    </form>
                                </td>
                                <td>
                                    <form action="/basket/delete2/${basket.productId}" method="post">
                                        <button type="submit" class="btn btn-outline-dark">Удалить</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
                <div class="col p-1  flex-column position-static">
                    <div class="col">
                        <div class="card mb-4 rounded-3 shadow-sm border-dark">
                            <div class="card-header py-3 text-dark btn btn-outline-light border-dark">
                                <h4 class="my-0 fw-normal"><spring:message code="basket.order"/></h4>
                            </div>
                            <div class="card-body">
                                <h3><spring:message code="basket.orderPrice"/></h3>
                                <h3>${baskets.sum} $</h3>
                                <ul class="list-unstyled mt-3 mb-4">
                                    <li><spring:message code="basket.managerMail"/></li>
                                    <li><a href="#">manager@mail.com</a></li>
                                    <li><spring:message code="basket.managerNumber"/></li>
                                    <li><a href="#">8-029-888-88-88</a></li>
                                </ul>
                                <form action="/basket/deleteAll/${userPrincipal.basket.id}" method="post">
                                    <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>--%>
                                    <button type="submit" class="w-100 btn btn-outline-danger"
                                            onclick="if (!(confirm('Вы действительно хотите изменить Status'))) return false">
                                        <spring:message code="basket.emptyTrash"/>
                                    </button>
                                </form>
                                <button type="submit" class="w-100 text-dark btn btn-lg btn-outline-success">
                                    <spring:message code="basket.checkout"/>
                                </button>
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
