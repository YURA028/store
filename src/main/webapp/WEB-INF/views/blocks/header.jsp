<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<header class="p-2 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a href="/" class="d-flex align-items-center mb-2 mb-lg-0  text-white text-decoration-none">
<%--                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap">--%>
<%--                    <use c:href="#bootstrap"></use>--%>
<%--                </svg>dd--%>
                <svg xmlns="http://www.w3.org/2000/svg" width="34" height="34" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home" aria-hidden="true">
                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                <polyline points="9 22 9 12 15 12 15 22"></polyline>
            </svg> Home
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/basket" class="nav-link px-2 text-white">orderItem</a></li>
                <li><a href="/profile/edit" class="nav-link px-2 text-white">edit</a></li>
                <li><a href="/basket" class="nav-link px-2 text-white">basket</a></li>



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
                <input type="search" name="nameProduct" placeholder="Search..." aria-label="Search">
                <button type="submit" class="btn-success">Поиск</button>
            </form>

            <c:if test="${userPrincipal.email != null}">
                <div class="text-end">
                    <a href="/profile">
                        <button type="button" class="btn btn-outline-light me-2">${userPrincipal.username}</button>
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