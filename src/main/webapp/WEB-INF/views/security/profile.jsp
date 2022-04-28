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
                            style="vertical-align: inherit;">Кобинет пользователя</span>
                </span>
                </h2>
            </div>
            <div class="bd-example">
                <table class="table table-sm table-bordered">
                    <colgroup>
                        <col span="1" style="background:Khaki">
                        <!-- С помощью этой конструкции задаем цвет фона для первых двух столбцов таблицы-->
                        <col style="background-color:#ff0000">
                        <col style="background-color:#0b58dc">
                        <col style="background-color:#33d1ff">
                        <col style="background-color:#efe309">
                    </colgroup>
                    <thead>
                    <tr class="py-5 text-center">
                        <th scope="col">Id</th>
                        <th scope="col">Login</th>
                        <th scope="col">Имя</th>
                        <th scope="col">Email</th>

                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.login}</td>
                        <td>${user.firstName}</td>
                        <td>${user.email}</td>
                    </tr>
                    </tbody>

                </table>
                <a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/logout">Выход</a>
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
<jsp:include page="../blocks/footer.jsp"/>
</body>
</html>
