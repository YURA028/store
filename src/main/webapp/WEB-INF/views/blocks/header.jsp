<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                            <svg width="35" height="35" color="yellow"
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
                <li><a href="/" class="nav-link px-2 text-white text-uppercase">Product</a></li>
                <li><a href="/basket1" class="nav-link px-2 text-white text-uppercase">Order</a>
                </li>
                <sec:authorize access="hasAnyAuthority('ADMIN')">
                    <li>
                        <a href="/admin" class="nav-link px-2 text-white">admin</a>
                    </li>
                </sec:authorize>
            </ul>
            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 d-flex"
                  action="/filter">
                <input type="search" name="filter" class="form-control" placeholder="Search..."
                       value="${filter}" aria-label="Search">
                <button type="submit" class="btn btn-outline-light bg-opacity-100"><spring:message
                        code="label.search"/></button>
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
                <a target="_self" href="?lang=ru" hreflang="ru" title="Russian">
                    <img class="header-language-image" width="29" height="25"
                         src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/ru.png"
                         style="border:1px solid white">
                </a>
            </div>
            <br>
            <div>
                <a href="/basket" class="product-link" title="Корзина">
                    <button type="submit" class="btn btn-dark">
                        <svg style="color: #ffffff" style="border:1px solid white" width="27" height="27"
                             fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                            <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                        </svg>
                    </button>
                </a>
            </div>

            <div class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-0">
                <c:if test="${userPrincipal.email != null}">
                    <div class="text-end">
                        <a href="/profile">
                            <button type="button" class="btn btn-outline-light me-2">${userPrincipal.username}

                            <img src="../resources/images/avatar.png" alt="mdo" width="25" height="25"
                                 class="rounded-circle">
                            </button>
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
    </div>
</header>


