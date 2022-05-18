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
    <title><spring:message code="title.product"/></title>

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
            <%--            <div class="py-3 text-center">--%>

            <%--                <span style="vertical-align: inherit;">--%>
            <%--                    <span style="vertical-align: inherit;"><h3>СПИСОК ТОВАРОВ</h3></span>--%>
            <%--                </span>--%>
            <%--            </div>--%>
            <sec:authorize access="hasAnyAuthority('ADMIN')">

                <div>
                    <a class="btn  mt-3 mb-3 btn-outline-success" style="text-align: center; width: 100%"
                       data-toggle="collapse" href="#collapseExample" role="button"
                       aria-expanded="true" aria-controls="collapseExample">
                        <spring:message code="label.addNewProduct"/>
                    </a>
                    <div class="collapse mb-3" id="collapseExample">
                        <form class="col-sm-10 col-sm offset-1" action="/product/create/0" method="post" enctype="multipart/form-data">
                            <div class="form-floating mb-1">
                                <input type="text" required class="form-control"
                                       id="name" name="name" placeholder="name">
                                <label for="name"><spring:message code="basket.title"/></label>
                            </div>
                            <div class="form-floating mb-1">
                                <input type="number" required class="form-control" placeholder="price" id="price"
                                       name="price">
                                <label for="price"><spring:message code="basket.price"/> р.</label>
                            </div>
                            <div class="form-floating mb-1">
                                <input type="number" required class="form-control" placeholder="quantity" id="quantity"
                                       name="quantity">
                                <label for="quantity"><spring:message code="product.quantity"/></label>
                            </div>
                            <div class="form-floating mb-1">
                                <select id="serialNumber" name="serialNumber" class="form-control">
                                    <option value=""><spring:message code="product.serialNumber"/></option>
                                    <option value="112345">112345</option>
                                    <option value="212345">212345</option>
                                    <option value="312345">312345</option>
                                    <option value="412345">412345</option>
                                    <option value="512345">512345</option>
                                    <option value="612345">612345</option>
                                    <option value="712345">712345</option>
                                    <option value="812345">812345</option>
                                    <option value="912345">912345</option>
                                </select>
                                <label for="serialNumber"><spring:message code="product.serialNumber"/></label>
                            </div>
                            <div class="form-floating mb-1">
                                <select id="color" name="color" class="form-control">
                                    <option value=""><spring:message code="color.title"/></option>
                                    <option value="white"><spring:message code="color.white"/></option>
                                    <option value="black"><spring:message code="color.black"/></option>
                                    <option value="grey"><spring:message code="color.grey"/></option>
                                    <option value="beige"><spring:message code="color.beige"/></option>
                                    <option value="red"><spring:message code="color.red"/></option>
                                    <option value="blue"><spring:message code="color.blue"/></option>
                                </select>
                                <label for="color"><spring:message code="color.title"/></label>
                            </div>
                            <div class="form-floating mb-1">
                                <select id="maker.name" name="maker.name" class="form-control">
                                    <option value=""><spring:message code="title.maker"/></option>
                                    <option value="Энергомера">Энергомера</option>
                                    <option value="Schneider">Schneider</option>
                                    <option value="Eaton">Eaton</option>
                                    <option value="ABB">ABB</option>
                                    <option value="EKF">EKF</option>
                                    <option value="ETP">ETP</option>
                                    <option value="IEK">IEK</option>
                                </select>
                                <label for="maker.name"><spring:message code="title.maker"/></label>
                            </div>
                            <div class="form-floating mb-1">
                                <select id="productType.name" required name="productType.name" class="form-control  btn-outline-secondary">
                                    <option value=""><spring:message code="productType.title"/></option>
                                    <option value="cableWire"><spring:message code="productType.cableWire"/></option>
                                    <option value="corrugatedPipe"><spring:message
                                            code="productType.corrugatedPipe"/></option>
                                    <option value="metalSleeve"><spring:message
                                            code="productType.metalSleeve"/></option>
                                    <option value="cableChannel"><spring:message
                                            code="productType.cableChannel"/></option>
                                    <option value="wiringBoxes"><spring:message
                                            code="productType.wiringBoxes"/></option>
                                    <option value="enclosuresBoxes"><spring:message
                                            code="productType.enclosuresBoxes"/></option>
                                    <option value="automata"><spring:message code="productType.automata"/></option>
                                    <option value="socketsSwitches"><spring:message
                                            code="productType.socketsSwitches"/></option>
                                    <option value="lightingTechnology"><spring:message
                                            code="productType.lightingTechnology"/></option>
                                    <option value="electricityMeters"><spring:message
                                            code="productType.electricityMeters"/></option>
                                </select>
                                <label for="name"><spring:message code="productType.title"/></label>
                            </div>

                            <div class="form-floating mb-1">
                        <textarea required rows="2" class="form-control"
                                  placeholder="description" id="description" name="description"></textarea>
                                <label for="description"><spring:message code="label.description"/></label>
                            </div>

                            <div class="form-group">
                                <div class="mb-3 ">
                                    <label for="file1" class="form-label"><spring:message code="product.photo"/>
                                        №1</label>
                                    <input class="form" required name="file1" type="file" id="file1">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="mb-3">
                                    <label for="file2" class="form-label"><spring:message code="product.photo"/>
                                        №2</label>
                                    <input class="form" name="file2" type="file" id="file2">
                                </div>
                            </div>
                            <button type="submit" style="width: 100%" class="btn btn-outline-success">
                                <spring:message code="product.add.item"/>
                            </button>
                        </form>
                    </div>
                </div>
            </sec:authorize>
            <div class="container-xxl m3">
                <form action="/filter">
                    <h5><spring:message code="label.sortBy"/></h5>
                    <select class="selective my-1 bg-white text-center text-success  bg-opacity-100 btn btn-outline-success"
                            id="maker" name="maker">
                        <option disabled selected value=""><spring:message code="title.maker"/></option>
                        <option value="Энергомера">Энергомера</option>
                        <option value="Schneider">Schneider</option>
                        <option value="Eaton">Eaton</option>
                        <option value="ABB">ABB</option>
                        <option value="EKF">EKF</option>
                        <option value="ETP">ETP</option>
                        <option value="IEK">IEK</option>
                    </select>

                    <select class="selective  my-1 bg-white text-center text-success  bg-opacity-100 btn btn-outline-success"
                            id="productType" name="productType">
                        <option disabled selected value=""><spring:message code="productType.title"/></option>
                        <option value="cableWire"><spring:message code="productType.cableWire"/></option>
                        <option value="corrugatedPipe"><spring:message code="productType.corrugatedPipe"/></option>
                        <option value="metalSleeve"><spring:message
                                code="productType.metalSleeve"/></option>
                        <option value="cableChannel"><spring:message
                                code="productType.cableChannel"/></option>
                        <option value="wiringBoxes"><spring:message
                                code="productType.wiringBoxes"/></option>
                        <option value="enclosuresBoxes"><spring:message
                                code="productType.enclosuresBoxes"/></option>
                        <option value="automata"><spring:message code="productType.automata"/></option>
                        <option value="socketsSwitches"><spring:message
                                code="productType.socketsSwitches"/></option>
                        <option value="lightingTechnology"><spring:message
                                code="productType.lightingTechnology"/></option>
                        <option value="electricityMeters"><spring:message
                                code="productType.electricityMeters"/></option>
                    </select>
                    <input class=" selective m-1  bg-opacity-100 btn btn-outline-success" type="submit"
                           style="color: #000000"
                           value="<spring:message code="label.search"/>"/>
                    <input class=" selective m-1  bg-opacity-100 btn btn-outline-success" type="button"
                           style="color: #000000"
                           value="<spring:message code="label.refresh"/>"
                           onclick="clearFilter()"/>
                </form>
            </div>
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
            <div class="bd-example">
                <nav aria-label="Another pagination example">
                    <ul class="pagination pagination-lg flex-wrap">
                        <li class="page-item disabled">
                            <a class="page-link">Previous</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item active" aria-current="page">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </main>
    </div>
</div>
<%@include file="blocks/footer.jsp" %>
<script type="text/javascript">
    function clearFilter() {
        window.location = '/';
    }
</script>
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