<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<jsp:include page="blocks/header.jsp"/>
<div class="container-fluid" >
    <div class="row">
        <jsp:include page="blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <div class="container mt-5 mb-5">
                    <a href="${pageContext.request.contextPath}/product" class="nav-link px-2 text-black">product</a>
                    <a href="${pageContext.request.contextPath}/product/add" class="nav-link px-2 text-black">Добавить</a>
                     <div class="alert alert_info mt-2">
                         <h1>hi</h1>
                        <c:forEach items="${post}" var="thePosts" >
                            <h3 >${thePosts.name}</h3>
                            <p >${thePosts.color}</p>
                            <p >${thePosts.serialNumber}</p>
<%--                            <p><b>Просмотры:</b> <span >${thePosts.serialNumber}</span></p>--%>
                            <a href="/product/${thePosts.id}/edit" class="btn btn-warning">Редактировать</a>
                            <form action="/product/${thePosts.id}/remove" method="post">
                                <button class="btn btn-warning" type="submit">Удалить</button>
                            </form>
                        </c:forEach>


                      </div>

                </div>

        </main>


        <div class="goog-te-spinner-pos">
            <div class="goog-te-spinner-animation">
                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
                </svg>
            </div>
        </div>
    </div>
</div>
<jsp:include page="blocks/footer.jsp"/>
</body>
</html>