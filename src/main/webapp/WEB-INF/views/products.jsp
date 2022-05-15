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
                        Добавить новый товар
                    </a>
                    <div class="collapse mb-3" id="collapseExample" style="">
                        <form action="/product/create" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="name">Название товара</label>
                                <input type="text" required class="form-control"
                                       id="name" name="name">
                            </div>
                            <div class="form-group">
                                <label for="price">Цена товара</label>
                                <div class="input-group mb-3">
                                    <input type="number" required class="form-control" id="price" name="price">
                                    <div class="input-group-append">
                                        <span class="input-group-text">$</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="quantity">Количество на складе товара</label>
                                <div class="input-group mb-3">
                                    <input type="number" required class="form-control" id="quantity" name="quantity">
                                    <div class="input-group-append">
                                        <span class="input-group-text">шт</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="serialNumber">Серийный номер товара</label>
                                <input type="number" required class="form-control" id="serialNumber"
                                       name="serialNumber">
                            </div>
                            <div class="form-group align-content-center">
                                <label for="exampleColorInput" class="form-label">Цвет</label>
                                <input type="color" name="color" id="exampleColorInput" value="#ffffff"
                                       title="Choose your color">
                            </div>

                            <div class="form-group">
                                <label for="name">Производитель</label>
                                <select id="maker.name" name="maker.name" class="form-control">
                                    <option value="">Производитель</option>
                                    <option value="Польша">Польша</option>
                                    <option value="Беларусь">Беларусь</option>
                                    <option value="Германия">Германия</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">Тип продукта</label>
                                <select id="productType.name" required name="productType.name" class="form-control">
                                    <option value="">Тип продукта</option>
                                    <option value="Лампочки">Лампочки</option>
                                    <option value="Автоматы">Автоматы</option>
                                    <option value="Кабель">Кабель</option>
                                    <option value="Гофра">КабГофраель</option>
                                    <option value="Распаечная коробка">Распаечная коробка</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <label for="description">Описание товара</label>
                                <textarea required rows="2" class="form-control" id="description"
                                          name="description"></textarea>
                            </div>

                            <div class="form-group">
                                <div class="mb-3">
                                    <label for="file1" class="form-label">Первая фотография к товару</label>
                                    <input class="form-control" required name="file1" type="file" id="file1">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="mb-3">
                                    <label for="file2" class="form-label">Первая фотография к товару</label>
                                    <input class="form-control" name="file2" type="file" id="file2">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="mb-3">
                                    <label for="file3" class="form-label">Первая фотография к товару</label>
                                    <input class="form-control" name="file3" type="file" id="file3">
                                </div>
                            </div>
                                <%--                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>--%>

                            <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
                        </form>
                    </div>
                </div>

            </sec:authorize>

<%--            <div>--%>
<%--                <div class="bd-example p-2">--%>

<%--                    <a href="/filter1/Лампочки">--%>
<%--                        <button type="button" class="btn btn-success">Лампочки</button>--%>
<%--                    </a>--%>
<%--                    <a href="/filter1/Автоматы">--%>
<%--                        <button type="button" class="btn btn-success">Автоматы</button>--%>
<%--                    </a>--%>
<%--                    <a href="/filter1/Кабель">--%>
<%--                        <button type="button" class="btn btn-success">Кабель</button>--%>
<%--                    </a>--%>
<%--                    <a href="/filter1/Гофра">--%>
<%--                        <button type="button" class="btn btn-success">Гофра</button>--%>
<%--                    </a>--%>
<%--                    <a href="/filter1/Распаечная коробка">--%>
<%--                        <button type="button" class="btn btn-success">Распаечная коробка</button>--%>
<%--                    </a>--%>
<%--                    <a href="/filter2/Беларусь">--%>
<%--                        <button type="button" class="btn btn-danger">Беларусь</button>--%>
<%--                    </a>--%>
<%--                    <a href="/filter2/Германия">--%>
<%--                        <button type="button" class="btn btn-danger">Германия</button>--%>
<%--                    </a>--%>
<%--                    <a href="/filter2/Польша">--%>
<%--                        <button type="button" class="btn btn-danger">Польша</button>--%>
<%--                    </a>--%>

<%--                    &lt;%&ndash;            <button type="button" class="btn btn-secondary">Secondary</button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <button type="button" class="btn btn-success">Success</button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <button type="button" class="btn btn-danger">Danger</button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <button type="button" class="btn btn-warning">Warning</button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <button type="button" class="btn btn-info">Info</button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <button type="button" class="btn btn-light">Light</button>&ndash;%&gt;--%>
<%--                    &lt;%&ndash;            <button type="button" class="btn btn-dark">Dark</button>&ndash;%&gt;--%>

<%--                    &lt;%&ndash;            <button type="button" class="btn btn-link">Link</button>&ndash;%&gt;--%>
<%--                </div>--%>
<%--            </div>--%>

            <div class="container-xxl m3">
                <form method="post" action="/filter">
                    <h5>Сортировать по:</h5>
                    <select class="selective my-1  bg-opacity-100 btn btn-outline-success" id="maker" name="maker">
                        <option disabled selected style="color: black">Производитель</option>
                        <option value="Беларусь">Беларусь</option>
                        <option value="Германия">Германия</option>
                        <option value="Польша">Польша</option>
                    </select>

                    <select class="selective  my-1  bg-opacity-100 btn btn-outline-success" id="productType" name="productType">
                        <option disabled selected style="color: black">Тип продукта</option>
                        <option value="Лампочки">Лампочки</option>
                        <option value="Автоматы">Автоматы</option>
                        <option value="Кабель">Кабель</option>
                        <option value="Гофра">КабГофраель</option>
                        <option value="Распаечная коробка">Распаечная коробка</option>
                    </select>
                    <input class=" selectpicker m-1  bg-opacity-100 btn btn-outline-success" type="submit" style="color: #000000"
                           value="Поиск"/>
                    <input class=" selectpicker m-1  bg-opacity-100 btn btn-outline-success" type="button" style="color: #000000"
                           value="Обновить"
                           onclick="clearFilter()"/>
                </form>
            </div>


            <div class="container mt-4 ">
                <%--                <div class="card-columns row">--%>
                <div class="row product-item-detail-bigdata " data-entity="parent-container">
                    <c:forEach items="${products}" var="product">
                        <%--                        <a href="/product/${product.id}" class="product-link">--%>
                        <div class="card text-dark btn btn-outline-success bg-white my-3 product col-xs-4 col-md-3">
                            <a href="/product/${product.id}" class="product-link">
                                <img src="/images/${product.previewImageId}"
                                     class="card-img-top" height="200px">
                            </a>
                            <div class="card-body text-center align-items-center">
                                <h5 class="card-title">${product.name}</h5>
                                <p class="card-text">Цена: ${product.price} $</p>
                            </div>

                                <%--                            <a href="/user/${product.user.id}" class="product-link text-white">--%>
                            <div class="text-center ">

<%--                                <button type="submit" href="/product/${product.id}/basket" class="btn btn-outline-danger">Добавить в корзину</button>--%>

                                <form action="/product/${product.id}/basket" method="get">
                                    <button type="submit" class="btn btn-outline-success">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                                            <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                                        </svg>
                                        Добавить в корзину
                                    </button>
                                </form>
                                    <%--                                        <c:url var="addLink" value="/basket222/addBasket">--%>
                                    <%--                                            <c:param name="productId" value="${product.id}"/>--%>
                                    <%--                                        </c:url>--%>
                                    <%--                                        <a href="${addLink}">AddBasket</a>--%>
                            </div>
                                <%--                            </a>--%>
                        </div>
                        <%--                        </a>--%>
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
