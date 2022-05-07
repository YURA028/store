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
<jsp:include page="blocks/header.jsp"/>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <h1 style="text-align: center">Мои товары</h1>
            <hr>
            <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
               data-toggle="collapse" href="#collapseExample" role="button"
               aria-expanded="true" aria-controls="collapseExample">
                Добавить новый товар
            </a>
            <div class="collapse mb-3" id="collapseExample" style="">
                <form action="../product/create" method="post" enctype="multipart/form-data">
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
                        <input type="number" required class="form-control" id="serialNumber" name="serialNumber">
                    </div>
                    <div class="form-group align-content-center">
                        <label for="exampleColorInput" class="form-label">Цвет</label>
                        <input type="color" name="color"   id="exampleColorInput" value="#ffffff"
                               title="Choose your color">
                    </div>

                    <div class="form-group">
                        <label for="name">Производитель</label>
                        <select id="maker" required name="maker.name" class="form-control">
                            <option value="">Производитель</option>
                            <option value="Польша">Польша</option>
                            <option value="Беларусь">Беларусь</option>
                            <option value="Германия">Германия</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="name">Тип продукта</label>
                        <select id="productType" required name="productType.name" class="form-control">
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
                        <textarea required class="form-control" id="description" name="description"></textarea>
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
            <h1 style="text-align: center">Не найдено</h1>
            <div class="card-columns">
                <c:forEach items="${products}" var="product">
                    <a href="/product/${product.id}" class="product-link">
                        <div class="card text-white bg-dark my-3 product">
                            <div class="card-top nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                                <form action="/product/delete/${product.id}" method="post">
                                        <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>--%>
                                    <button type="submit" class="btn btn-danger m-3">
                                        Удалить
                                    </button>
                                </form>
                                <form action="/product/${product.id}/edit">
                                        <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}"/>--%>
                                    <button type="submit" class="btn btn-danger m-3">
                                        Редактировать
                                    </button>
                                </form>
                            </div>
                            <img src="/images/${product.previewImageId}"
                                 class="card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">${product.name}</h5>
                                <p class="card-text">${product.price} ₽</p>
                            </div>
                            <div class="card-footer">
                                    ${product.maker.name}
                            </div>
                        </div>
                    </a>

                </c:forEach>

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
<jsp:include page="blocks/footer.jsp"/>
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