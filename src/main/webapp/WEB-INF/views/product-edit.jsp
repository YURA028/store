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
<c:forEach var="product" items="${post}">
    <form action="/product/create" method="post" enctype="multipart/form-data">
    <div class="form-group">
    <label for="name">Название товара</label>
    <input type="text" value="${product.name}" required class="form-control"
    id="name" name="name">
    </div>
    <div class="form-group">
    <label for="price">Цена товара</label>
    <div class="input-group mb-3">
    <input type="number" value="${product.price}" required class="form-control" id="price" name="price">
    <div class="input-group-append">
    <span class="input-group-text">₽</span>
    </div>
    </div>
    </div>
    <div class="form-group">
    <label for="searchCity">Город</label>
    <select id="searchCity" value="${product.maker.name}" required name="city" class="form-control">
    <option value="">Производитель</option>

    <option value="Польша">Польша</option>
    <option value="Беларусь">Беларусь</option>
    <option value="Германия">Германия</option>

    </select>
    </div>
    <div class="form-group">
    <label for="description">Описание товара</label>
    <textarea class="form-control" role="textbox" value="${product.description}" id="description" name="description"></textarea>
    </div>

    <div class="form-group">
    <div class="custom-file">

    <input required type="file" name="file1" id="file1">
    <label class="custom-file-label" for="file1">Первая фотография к товару</label>
    </div>
    </div>

        <div class="form-group">
            <div class="custom-file">
                    <%--                            <img src="/images/${product.imageProducts.get(1)}" height="60px" /><br>--%>
                <input type="file" name="file2"  id="file2">
                <label class="custom-file-label" for="file2">Вторая фотография к товару</label>
            </div>
        </div>

        <div class="form-group">
            <div class="custom-file">
<%--                <img src="/images/${product.imageProducts.get(2)}" height="60px"/><br>--%>
                <input type="file" name="file3"  id="file3">
                <label class="custom-file-label" for="file3">Третья фотография к товару</label>
            </div>
        </div>
<%--        <input type="hidden" name="_csrf" value="${_csrf.token}"/>--%>

        <button type="submit" style="width: 100%" class="btn btn-dark">Добавить</button>
        </form>
    </c:forEach>
    </div>
<%--    <c:forEach items="${images}" var="image" step="1" varStatus="status">--%>
<%--        <img src="/images/${image.id}"  height="60px"/><br>--%>
<%--        ${status.index}--%>
<%--    </c:forEach>--%>
    /////////////////////////////////////////////////////////////////////////////////////////////
    <%--            <div class="container mt-5 mb-5">--%>
    <%--                <h1>Редоктирование статьи</h1>--%>
    <%--                <div>--%>
    <%--                    <c:forEach items="${post}" var="thePosts">--%>
    <%--                        <form method="post">--%>
    <%--                            <label> Название товара:--%>
    <%--                                <input type="text" value="${thePosts.name}" name="name" placeholder="Name "--%>
    <%--                                       class="form-control">--%>
    <%--                            </label><br>--%>
    <%--                            <label>Цвет:--%>
    <%--                                <input type="text" value="${thePosts.color}" name="color" placeholder="Color "--%>
    <%--                                       class="form-control">--%>
    <%--                            </label><br>--%>
    <%--                            <label>Серийный номер:--%>
    <%--                                <input  type="number" value="${thePosts.serialNumber}" name="serialNumber"--%>
    <%--                                        placeholder="SerialNumber " class="form-control">--%>
    <%--                            </label><br>--%>
    <%--                                &lt;%&ndash;                                <label>&ndash;%&gt;--%>
    <%--                                &lt;%&ndash;                                <textarea name="full_text" placeholder="Введите полный текст статьи" class="form-control" >${thePosts.serialNumber}</textarea>&ndash;%&gt;--%>
    <%--                                &lt;%&ndash;                                </label><br>&ndash;%&gt;--%>
    <%--                            <button type="submit" class="btn btn-success">Обновить</button>--%>
    <%--                        </form>--%>
    <%--                    </c:forEach>--%>
    <%--                </div>--%>
    <%--            </div>--%>

    </main>

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
