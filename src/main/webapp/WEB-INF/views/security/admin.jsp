<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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


            <h3>Панель администратора </h3>

            <table class="table table-sm table-bordered">
                <tr>
                    <th>Email</th>
                    <th>Логин</th>
                    <th>Активность</th>
                    <th>Бан</th>
                    <th>Роль</th>
                    <th>Редактирование</th>
                    <th>Подробнее</th>
                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.login}</td>
                        <td>${user.state}</td>
                        <td>
                            <c:choose>
                                <c:when test="${user.state == 'ACTIVE'}">
                                    <c:if test="${user.id != 1}">
                                        <form action="/admin/user/ban/${user.id}" method="post">
                                                <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                            <input type="submit"
                                                   onclick="if (!(confirm('Вы действительно хотите изменить Status'))) return false"
                                                   value="BANNED">
                                        </form>
                                    </c:if>
                                </c:when>
                                <c:when test="${user.state == 'BANNED'}">
                                    <form action="/admin/user/ban/${user.id}" method="post">
                                            <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                        <input type="submit"
                                               onclick="if (!(confirm('Вы действительно хотите изменить Status'))) return false"
                                               value="ACTIVE">
                                    </form>
                                </c:when>
<%--                                <c:otherwise>Если нету подходящего значения</c:otherwise>--%>
                            </c:choose>
                        </td>
                        <td>${user.role}</td>
                        <td>
                            <c:choose>
                                <c:when test="${user.role == 'ADMIN'}">
                                    <c:if test="${user.id != 1}">
                                        <form action="/admin/user/edit/${user.id}" method="post">
                                                <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                            <input type="submit"
                                                   onclick="if (!(confirm('Вы действительно хотите изменить Role на USER'))) return false"
                                                   value="USER">
                                        </form>
                                    </c:if>

                                </c:when>
                                <c:when test="${user.role == 'USER'}">
                                    <form action="/admin/user/edit/${user.id}" method="post">
                                            <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                        <input type="submit"
                                               onclick="if (!(confirm('Вы действительно хотите изменить Role на ADMIN'))) return false"
                                               value="ADMIN">
                                    </form>
                                </c:when>
                                <%--                                <c:otherwise>Если нету подходящего значения</c:otherwise>--%>
                            </c:choose>

                        </td>
                        <td><a href="/user/${user.id}">Подробнее</a></td>
                    </tr>
                </c:forEach>
            </table>

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
