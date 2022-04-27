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
<jsp:include page="blocks/header.jsp"/>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="py-5 text-center">
                <h2>
                <span style="vertical-align: inherit;">
                    <span
                            style="vertical-align: inherit;">Список всех пользователей</span>

                </span>
                </h2>
            </div>

            <%--            <div class="form-style-2">--%>
            <%--                <div class="form-style-2-heading">--%>
            <%--                    Please Sign Up!--%>
            <%--                </div>--%>
            <%--                <form method="post" action="/users">--%>
            <%--                    <label for="firstName">First Name--%>
            <%--                        <input class="input-field" type="text" id="firstName" name="firstName">--%>
            <%--                    </label>--%>
            <%--                    <label for="lastName">Last Name--%>
            <%--                        <input class="input-field" type="text" id="lastName" name="lastName">--%>
            <%--                    </label>--%>
            <%--                    <input type="submit" value="Add user">--%>
            <%--                </form>--%>
            <%--            </div>--%>

            <div class="form-style-2">
                <div class="form-style-2-heading">
                    Already in System!
                </div>
                <table class="table table-sm table-bordered">
                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Role</th>
                        <th>Status</th>
                        <th>Login</th>
                        <th>Email</th>

                    </tr>
                    <c:forEach items="${usersFromServer}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.role}</td>
                            <td>${user.state}</td>
                            <td>${user.login}</td>
                            <td>${user.email}</td>
                        </tr>
                    </c:forEach>

                </table>
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
</body>
</html>
