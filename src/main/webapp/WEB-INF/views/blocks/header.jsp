<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<header class="p-3 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">
                    <use c:href="#bootstrap"></use>
                </svg>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/" class="nav-link px-2 text-secondary">Home</a></li>
                <li><a href="/basket" class="nav-link px-2 text-white">orderItem</a></li>



                <sec:authorize access="hasAnyAuthority('ADMIN')">
                    <li>
                        <a href="/admin" class="nav-link px-2 text-white">admin</a>
                    </li>
                </sec:authorize>

            </ul>
            <%--            <form action="/" method="get">--%>
            <%--                Поиск по названию объявления: <input type="text" name="title"><br>--%>
            <%--                <input type="submit" value="Поиск"/>--%>
            <%--            </form>--%>


            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3"
                  action="/" method="get">
                Поиск: <input type="search" name="nameProduct" placeholder="Search..." aria-label="Search">
            </form>

            <c:if test="${userPrincipal.email != null}">
                <div class="text-end">
                    <a href="/profile">
                        <button type="button" class="btn btn-outline-light me-2">${userPrincipal.login}</button>
                    </a>
                </div>
            </c:if>
            <c:if test="${userPrincipal.email == null}">
                <div class="text-end">
                    <a href="/login">
                        <button type="button" class="btn btn-outline-light me-2">Login</button>
                    </a>
                </div>
            </c:if>
        </div>
    </div>
</header>