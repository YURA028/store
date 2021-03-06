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
            <div class="py-3 text-center">
                <span style="vertical-align: inherit;">
                    <span style="vertical-align: inherit;"><h3><spring:message code="title.admin.panel"/></h3></span>
                </span>
            </div>

            <table class="table table-sm table-bordered">
                <tr>
                    <th>Email</th>
                    <th>username</th>
                    <th>имя</th>
                    <th>Активность</th>
                    <th>Бан</th>
                    <th>Роль</th>

                </tr>
                <c:forEach items="${users}" var="user">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.username}</td>
                        <td>${user.firstName}</td>
                        <td>${user.state}</td>
                        <td>
                            <c:choose>
                                <c:when test="${user.state == 'ACTIVE'}">
                                    <c:if test="${user.id != 1}">
                                        <form action="/admin/user/ban/${user.id}" method="post">
                                                <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                            <input type="submit" class="btn-outline-danger"
                                                   onclick="if (!(confirm('Вы действительно хотите изменить Status'))) return false"
                                                   value="BANNED">
                                        </form>
                                    </c:if>
                                </c:when>
                                <c:when test="${user.state == 'BANNED'}">
                                    <form action="/admin/user/ban/${user.id}" method="post">
                                            <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                        <input type="submit" class="btn-outline-success"
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
                                            <input type="submit" class="btn-outline-danger"
                                                   onclick="if (!(confirm('Вы действительно хотите изменить Role на USER'))) return false"
                                                   value="USER">
                                        </form>
                                    </c:if>

                                </c:when>
                                <c:when test="${user.role == 'USER'}">
                                    <form action="/admin/user/edit/${user.id}" method="post">
                                            <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                        <input type="submit" class="btn-outline-success"
                                               onclick="if (!(confirm('Вы действительно хотите изменить Role на ADMIN'))) return false"
                                               value="ADMIN">
                                    </form>
                                </c:when>
                                <%--                                <c:otherwise>Если нету подходящего значения</c:otherwise>--%>
                            </c:choose>

                        </td>
                        <td>
                            <c:if test="${user.role != 'ADMIN'}">
                                <form action="/user/${user.id}" method="post">
                                    <input type="submit" class="btn-outline-primary"
                                           value="<spring:message code="label.detail"/>">
                                </form>
                            </c:if>
                        </td>
                        <td>
                            <c:if test="${user.role != 'ADMIN'}">
                                <form action="/admin/user/delete/${user.id}" method="post">
                                        <%--                                <input type="hidden" name="_csrf" value="${_csrf.token}">--%>
                                    <input type="submit" class="btn-outline-danger"
                                           onclick="if (!(confirm('Вы действительно хотите изменить Role на ADMIN'))) return false"
                                           value="<spring:message code="label.delete.profile"/>">
                                </form>
                            </c:if>
                        </td>
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
