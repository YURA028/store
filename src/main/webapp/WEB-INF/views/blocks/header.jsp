<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>

<header class="p-2 bg-dark  ">
    <div class="container-xxl product-link">
        <div class="d-flex flex-wrap  align-items-center justify-content-center justify-content-lg-start">
            <div >
                <h5>
                    <a href="/home" class="product-link">
                        <i class=" bi-lightning-fill">
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
            </div>

            <ul class="nav col-12 product-link col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/" class="nav-link px-2 text-white product">
                    <spring:message
                            code="header.catalog"/></a></li>
                <li><a href="/order" class="nav-link px-2 text-white  product">
                <spring:message
                        code="header.paymentAndDelivery"/></a>
                </li>
                <li><a href="/contacts" class="nav-link px-2 text-white  product">
                    <spring:message code="header.communications"/></a>
            </ul>
            <div id="header-languages-bar" class="me-lg-1 btn btn-dark product">
                <a target="_self" class="text-white btn-outline-danger product-link" href="?lang=en" hreflang="en" title="English">
                    <%--                    <img class="header-language-image" width="29" height="25"--%>
                    <%--                         src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/en.png"--%>
                    <%--                         style="border:1px solid white">--%>
                    EN
                </a>
                <a target="_self" class="text-white btn-outline-info product-link" href="?lang=be" hreflang="be" title="Belarusian">
                    <%--                    <img class="header-language-image" width="29" height="25"--%>
                    <%--                         src="http://vignette3.wikia.nocookie.net/m__/images/1/14/%D0%A4%D0%BB%D0%B0%D0%B3_%D0%91%D0%B5%D0%BB%D0%BE%D1%80%D1%83%D1%81%D1%81%D0%B8%D0%B8.png/revision/latest?cb=20160630173632&path-prefix=metro%2Fru"--%>
                    <%--                         style="border:1px solid white">--%>
                    BY
                </a>
                <a target="_self" class="text-white btn-outline-warning product-link" href="?lang=ru" hreflang="ru" title="Russian">
                    <%--                    <img class="header-language-image" width="29" height="25"--%>
                    <%--                         src="https://s2.o7planning.com/templates/o7planning/resources/images/languages/ru.png"--%>
                    <%--                         style="border:1px solid white">--%>
                    RU
                </a>
            </div>
            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-1 d-flex"
                  action="/filter">
                <input type="search" name="filter" class="form-control" placeholder="Search..."
                       value="${filter}" aria-label="Search">
                <button type="submit" class="btn btn-outline-light bg-opacity-100"><spring:message
                        code="label.search"/></button>
            </form>



            <br>
            <div class="px-2-2">
                <a href="/basket" class="product-link" title="Корзина">
                    <button type="submit" class="btn btn-dark btn-outline-light">
                        <svg width="27" height="27"
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

                                <img src="/resources/images/avatar.png" alt="mdo" width="25" height="25"
                                     class="rounded-circle">
                            </button>
                        </a>
                    </div>
                </c:if>
                <c:if test="${userPrincipal.email == null}">
                    <div class="text-end">
                        <a href="/login">
                            <button type="button" class="btn btn-outline-light me-2">
                                Login
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor"
                                     class="bi bi-incognito" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                          d="m4.736 1.968-.892 3.269-.014.058C2.113 5.568 1 6.006 1 6.5 1 7.328 4.134 8 8 8s7-.672 7-1.5c0-.494-1.113-.932-2.83-1.205a1.032 1.032 0 0 0-.014-.058l-.892-3.27c-.146-.533-.698-.849-1.239-.734C9.411 1.363 8.62 1.5 8 1.5c-.62 0-1.411-.136-2.025-.267-.541-.115-1.093.2-1.239.735Zm.015 3.867a.25.25 0 0 1 .274-.224c.9.092 1.91.143 2.975.143a29.58 29.58 0 0 0 2.975-.143.25.25 0 0 1 .05.498c-.918.093-1.944.145-3.025.145s-2.107-.052-3.025-.145a.25.25 0 0 1-.224-.274ZM3.5 10h2a.5.5 0 0 1 .5.5v1a1.5 1.5 0 0 1-3 0v-1a.5.5 0 0 1 .5-.5Zm-1.5.5c0-.175.03-.344.085-.5H2a.5.5 0 0 1 0-1h3.5a1.5 1.5 0 0 1 1.488 1.312 3.5 3.5 0 0 1 2.024 0A1.5 1.5 0 0 1 10.5 9H14a.5.5 0 0 1 0 1h-.085c.055.156.085.325.085.5v1a2.5 2.5 0 0 1-5 0v-.14l-.21-.07a2.5 2.5 0 0 0-1.58 0l-.21.07v.14a2.5 2.5 0 0 1-5 0v-1Zm8.5-.5h2a.5.5 0 0 1 .5.5v1a1.5 1.5 0 0 1-3 0v-1a.5.5 0 0 1 .5-.5Z"/>
                                </svg>
                            </button>
                        </a>
                    </div>
                </c:if>
            </div>

        </div>
    </div>
</header>


