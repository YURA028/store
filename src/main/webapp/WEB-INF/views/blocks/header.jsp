<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ page session="false" %>

<header class="p-2 bg-dark  ">
    <div class="container-xxl">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a>
                <h5>
                    <a href="/home" class="product-link">
                        <i class=" bi-lightning-fill">
                            <%--                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"--%>
                            <%--                                 class=" bi  bi-lightning-fill" viewBox="0 0 16 16">--%>
                            <%--                                <path d="M5.52.359A.5.5 0 0 1 6 0h4a.5.5 0 0 1 .474.658L8.694 6H12.5a.5.5 0 0 1 .395.807l-7 9a.5.5 0 0 1-.873-.454L6.823 9.5H3.5a.5.5 0 0 1-.48-.641l2.5-8.5z"/>--%>
                            <%--                            </svg>--%>
                            <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" color="yellow"
                                 fill="currentColor"
                                 class="bi bi-activity" viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
                                      d="M6 2a.5.5 0 0 1 .47.33L10 12.036l1.53-4.208A.5.5 0 0 1 12 7.5h3.5a.5.5 0 0 1 0 1h-3.15l-1.88 5.17a.5.5 0 0 1-.94 0L6 3.964 4.47 8.171A.5.5 0 0 1 4 8.5H.5a.5.5 0 0 1 0-1h3.15l1.88-5.17A.5.5 0 0 1 6 2Z"/>
                            </svg>
                            <b style="color: #00b900">Electrician...</b>
                        </i>
                    </a>
                </h5>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/home" class="nav-link px-2 text-white">home</a></li>
                <li><a href="/" class="nav-link px-2 text-white">Product</a></li>
                <li><a href="/basket" class="nav-link px-2 text-white"><spring:message code="label.basket"/></a></li>
                <li><a href="/basket1" class="nav-link px-2 text-white"><spring:message code="label.orderItem"/></a>
                </li>
                <%--                <li><a href="/basket222/list" class="nav-link px-2 text-white">CORZINA</a></li>--%>

                <sec:authorize access="hasAnyAuthority('ADMIN')">
                    <li>
                        <a href="/admin" class="nav-link px-2 text-white">admin</a>
                    </li>
                </sec:authorize>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3"
                  action="/filter" method="post">
                <input type="search" name="filter" placeholder="Search..." value="${filter}" aria-label="Search">
                <button type="submit" class="btn-outline-success">Поиск</button>
            </form>

            <div id="header-languages-bar">
                <a target="_self" href="?lang=en" hreflang="en" title="English">
                    <img class="header-language-image" width="29" height="25"
                         src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/en.png"
                         style="border:1px solid white">
                </a>
                <a target="_self" href="?lang=be" hreflang="be" title="Belarusian">
                    <img class="header-language-image" width="29" height="25"
                         src="http://vignette3.wikia.nocookie.net/m__/images/1/14/%D0%A4%D0%BB%D0%B0%D0%B3_%D0%91%D0%B5%D0%BB%D0%BE%D1%80%D1%83%D1%81%D1%81%D0%B8%D0%B8.png/revision/latest?cb=20160630173632&path-prefix=metro%2Fru"
                         style="border:1px solid white">
                </a>
                <a target="_self" href="?lang=ru" hreflang="ru" title="Rusian">
                    <img class="header-language-image" width="29" height="25"
                         src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/ru.png"
                         style="border:1px solid white">
                </a>
            </div>
            <%--                        <div style="text-align: right;padding:5px;margin:5px 0px;background:#ccc;">--%>
            <%--                            <a href="${pageContext.request.contextPath}/en/">Login (English)</a>--%>
            <%--                            &nbsp;|&nbsp;--%>
            <%--                            <a href="${pageContext.request.contextPath}/ru/">Login (Русский)</a>--%>
            <%--                            &nbsp;|&nbsp;--%>
            <%--                            <a href="${pageContext.request.contextPath}/be/?">Login (Беларускі)</a>--%>
            <%--                        </div>--%>
            <br>

            <div class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                <c:if test="${userPrincipal.email != null}">
                    <div class="text-end">
                        <a href="/profile">
                            <button type="button" class="btn btn-outline-light me-2">${userPrincipal.username}</button>
                            <img src="../resources/images/avatar.png" alt="mdo" width="32" height="32"
                                 class="rounded-circle">
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
            <%--            <div>--%>
            <%--                <a href="${pageContext.request.contextPath}/?lang=en">en</a>--%>

            <%--                <a href="${pageContext.request.contextPath}/?lang=ru">ru</a>--%>

            <%--                <a href="${pageContext.request.contextPath}/?lang=be">be</a>--%>
            <%--            </div>--%>

        </div>
    </div>
</header>

