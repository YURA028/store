<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Пример оформления заказа · Bootstrap v5.1</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-light">
<jsp:include page="../blocks/header.jsp"/>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="../blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="py-5 text-center">
                <h2>
                <span style="vertical-align: inherit;">
                    <span
                            style="vertical-align: inherit;">Форма оформления заказа</span>
                </span>
                </h2>
            </div>

            <h1>BUYSELL</h1>
            <hr>
            <h4>Подробная информация о товаре</h4>
            <c:forEach items="${images}" var="img">
                <img src="/images/${img.id}" height="60px" alt="no img"/><br><br>
            </c:forEach>

            <b>Название товара: </b>${product.name}<br>
            <b>Описание товара: </b>${product.description}<br>
            <b>Цена: </b>${product.price}<br>
            <b>производитель: </b>${product.maker.name}<br>
            <b>Тип продукта: </b>${product.productType.name}<br>
            <b>Автор: </b><a href="/user/${product.user.id}"> ${product.user.firstName}</a><br>
            <hr>
            <form action="/main/product/delete/${product.id}" method="post">
                <input type="submit" value="Удалить товар"/>
            </form>
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
<jsp:include page="../blocks/footer.jsp"/>
</body>
</html>
