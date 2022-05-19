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
            <div class="py-5 text-center">
                <h2>
                <span style="vertical-align: inherit;">
                    <span
                            style="vertical-align: inherit;">Форма оформления заказа</span>
                </span>
                </h2>
            </div>

            <div class="row g-5">

                <div class="col-md-5 col-lg-4 order-md-last">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-dark">
                        <label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;"><spring:message code="basket.userCart"/></label>
                        </label>

                    </span>
                    </h4>

                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between">
                        <span><label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;"><h5><spring:message code="basket.amount"/>:</h5></label>
                        </label>
                        </span>
                            <strong>
                                <label style="vertical-align: inherit;">
                                   <h5> <label style="vertical-align: inherit;"><span class="badge bg-dark rounded-pill"><span style="vertical-align: inherit;"><span
                                            style="vertical-align: inherit;">${baskets.amountProducts}</span></span></span></label>
                                   </h5>
                                </label>
                            </strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                        <span><label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;"><h5><spring:message code="basket.orderPrice"/></h5></label>
                        </label>
                        </span>
                            <strong>
                                <label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">${baskets.sum}$</label>
                                </label>
                            </strong>
                        </li>
                        <c:forEach items="${baskets.basketDetails}" varStatus="status" var="basket">
                            <li class="list-group-item d-flex justify-content-between lh-sm">
                                <div>
                                    <h6 class="my-0"><label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">
                                            <th>
                                                <div class="  text-wrap text-dark" style="width: 15rem;">
                                                        ${basket.name}
                                                </div>
                                            </th>
                                        </label>
                                    </label></h6>
                                    <small class="text-muted"><label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">
                                            <th><spring:message code="basket.amount"/>: ${basket.amount}</th>
                                        </label>
                                    </label>
                                    </small>
                                </div>
                                <span class="text-muted"><label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;"><th>${basket.sum}$</th></label>
                        </label>
                        </span>
                            </li>
                        </c:forEach>
                        <li class="list-group-item d-flex justify-content-between">
                        <span><label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;"><spring:message code="basket.orderPrice"/></label>
                        </label>
                        </span>
                            <strong>
                                <label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">${baskets.sum}$</label>
                                </label>
                            </strong>
                        </li>
                    </ul>
                </div>

                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">
                        <label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;">Адрес доставки:</label>
                        </label>
                    </h4>
                    <form class="needs-validation" novalidate="">
                        <div class="row g-3">
                            <div class="col-12 form-floating">
                                <input type="text" class="form-control" id="firstName" placeholder=""
                                       value="${userPrincipal.firstName}"
                                       required="">
                                <label style="vertical-align: inherit;">Имя</label>
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>
                            <div class="col-12 form-floating">
                                <input type="email" class="form-control" value="${userPrincipal.email}"
                                       placeholder="you@example.com">
                                <label style="vertical-align: inherit;">Электронная почта </label>
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>

                            <div class="col-12 form-floating">
                                <input type="text" class="form-control" id="phone" placeholder="1234 Главная улица"
                                       required="" value="${userPrincipal.address.phone}">
                                <label style="vertical-align: inherit;"><spring:message code="address.phone"/> </label>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>
                            <div class="col-12 form-floating">
                                <input type="text" class="form-control" id="city" placeholder="1234 Главная улица"
                                       required="" value="${userPrincipal.address.city}">
                                <label><spring:message code="address.city"/> </label>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>
                            <div class="col-12 form-floating">
                                <input type="text" class="form-control" id="street" placeholder="1234 Главная улица"
                                       required="" value="${userPrincipal.address.street}">
                                <label><spring:message code="address.street"/> </label>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>
                            <div class="col-12 form-floating">
                                <input type="text" class="form-control" id="building" placeholder="phone"
                                       required="" value="${userPrincipal.address.building}">
                                <label><spring:message code="address.building"/> </label>
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>


                        </div>

                        <hr class="my-4">
                        <form action="/basket/deleteAll/${userPrincipal.basket.id}" method="post">
                                <button class="w-100 btn btn-outline-success btn-lg" type="submit">
                                    Заказать
                                </button>
                        </form>

                    </form>
                </div>
            </div>
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