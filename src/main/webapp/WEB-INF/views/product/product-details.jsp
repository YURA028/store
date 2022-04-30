<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>--%>
<%--<html>--%>
<%--<head>--%>

<%--    <meta charset="utf-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--    <meta name="description" content="">--%>
<%--    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">--%>
<%--    <meta name="generator" content="Hugo 0.88.1">--%>
<%--    <title>Пример оформления заказа · Bootstrap v5.1</title>--%>

<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"--%>
<%--          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"--%>
<%--          crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body class="bg-light">--%>
<%--<jsp:include page="../blocks/header.jsp"/>--%>
<%--<div class="container-fluid">--%>
<%--    <div class="row">--%>
<%--        <jsp:include page="../blocks/aside.jsp"/>--%>
<%--        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">--%>
<%--            &lt;%&ndash;                <div class="container mt-5 mb-5">&ndash;%&gt;--%>
<%--            &lt;%&ndash;                    <a href="${pageContext.request.contextPath}/product" class="nav-link px-2 text-black">product</a>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                    <a href="${pageContext.request.contextPath}/product/add" class="nav-link px-2 text-black">Добавить</a>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                     <div class="alert alert_info mt-2">&ndash;%&gt;--%>
<%--            &lt;%&ndash;                         <h1>hi</h1>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                        <c:forEach items="${post}" var="thePosts" >&ndash;%&gt;--%>
<%--            &lt;%&ndash;                            <h3 >${thePosts.name}</h3>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                            <p >${thePosts.color}</p>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                            <p >${thePosts.serialNumber}</p>&ndash;%&gt;--%>
<%--            &lt;%&ndash;&lt;%&ndash;                            <p><b>Просмотры:</b> <span >${thePosts.serialNumber}</span></p>&ndash;%&gt;&ndash;%&gt;--%>
<%--            &lt;%&ndash;                            <a href="/product/${thePosts.id}/edit" class="btn btn-warning">Редактировать</a>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                            <form action="/product/${thePosts.id}/remove" method="post">&ndash;%&gt;--%>
<%--            &lt;%&ndash;                                <button class="btn btn-warning" type="submit">Удалить</button>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                            </form>&ndash;%&gt;--%>
<%--            &lt;%&ndash;                        </c:forEach>&ndash;%&gt;--%>


<%--            &lt;%&ndash;                      </div>&ndash;%&gt;--%>

<%--            &lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--            <div class="row mb-2">--%>
<%--                <div class="col-md-6">--%>
<%--                    <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">--%>
<%--                        <c:forEach items="${post}" var="thePosts">--%>
<%--                            <div class="col p-4 d-flex flex-column position-static">--%>
<%--                                <strong class="d-inline-block mb-2 text-primary">Товар</strong>--%>
<%--                                <h3 class="mb-0">${thePosts.name}</h3>--%>
<%--                                <div class="mb-1 text-muted">Цвет: ${thePosts.color}</div>--%>
<%--                                <p class="card-text mb-auto">Описание: ${thePosts.serialNumber}</p>--%>
<%--                                <div>--%>
<%--&lt;%&ndash;                                    <sec:authorize access="hasRole('ADMIN')">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <td><a href="<c:url value='/product/${thePosts.id}/edit' />" type="submit" class="btn btn-success custom-width">Редактировать</a></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </sec:authorize>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <sec:authorize access="hasRole('ADMIN')">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <td><a href="<c:url value='/product/${thePosts.id}/remove' />" type="submit" class="btn btn-danger custom-width">Удалить</a></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </sec:authorize>&ndash;%&gt;--%>
<%--                                    <a href="/product/${thePosts.id}/edit">--%>
<%--                                        <button type="submit">Редактировать</button>--%>
<%--                                    </a>--%>
<%--                                    <a>--%>
<%--                                        <form action="/product/${thePosts.id}/remove" method="post">--%>
<%--                                            <button type="submit">Удалить</button>--%>
<%--                                        </form>--%>
<%--                                    </a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-auto d-none d-lg-block">--%>
<%--                                <c:forEach items="${images}" var="img">--%>
<%--                                    <img src="${pageContext.request.contextPath}/images/${img.id}"  class="bd-placeholder-img" width="200" height="250"--%>
<%--                                         xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice"--%>
<%--                                          focusable="false" >--%>

<%--                                        <title>Placeholder</title>--%>
<%--                                        <rect width="100%" height="100%" fill="#55595c"></rect>--%>
<%--                                        <text x="50%" y="50%" fill="#eceeef" dy=".3em"></text>--%>

<%--                                    </img>--%>
<%--                                </c:forEach>--%>

<%--                            </div>--%>
<%--                        </c:forEach>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--                <div class="row mb-2">--%>
<%--                    <div class="col-md-6">--%>
<%--                        <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">--%>
<%--                            <div class="col p-4 d-flex flex-column position-static">--%>
<%--                                <strong class="d-inline-block mb-2 text-primary">العالم</strong>--%>
<%--                                <h3 class="mb-0">مشاركة مميزة</h3>--%>
<%--                                <div class="mb-1 text-muted">نوفمبر 12</div>--%>
<%--                                <p class="card-text mb-auto">هذه بطاقة أوسع مع نص داعم أدناه كمقدمة طبيعية لمحتوى إضافي.</p>--%>
<%--                                <a href="#" class="stretched-link">أكمل القراءة</a>--%>
<%--                            </div>--%>
<%--                            <div class="col-auto d-none d-lg-block">--%>
<%--                                <c:forEach items="${images}" var="img">--%>
<%--                                <img src="${pageContext.request.contextPath}/images/${img.id}" class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">صورة مصغرة</text></img>--%>


<%--                                </c:forEach>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-md-6">--%>
<%--                        <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">--%>
<%--                            <div class="col p-4 d-flex flex-column position-static">--%>
<%--                                <strong class="d-inline-block mb-2 text-success">التصميم</strong>--%>
<%--                                <h3 class="mb-0">عنوان الوظيفة</h3>--%>
<%--                                <div class="mb-1 text-muted">نوفمبر 11</div>--%>
<%--                                <p class="mb-auto">هذه بطاقة أوسع مع نص داعم أدناه كمقدمة طبيعية لمحتوى إضافي.</p>--%>
<%--                                <a href="#" class="stretched-link">أكمل القراءة</a>--%>
<%--                            </div>--%>
<%--                            <div class="col-auto d-none d-lg-block">--%>
<%--                                <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img"--%>
<%--                                     aria-label="Placeholder: صورة مصغرة" preserveAspectRatio="xMidYMid slice" focusable="false">--%>
<%--                                    <title>Placeholder</title>--%>
<%--                                    <rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">صورة مصغرة</text></svg>--%>

<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--        </main>--%>


<%--        <div class="goog-te-spinner-pos">--%>
<%--            <div class="goog-te-spinner-animation">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px"--%>
<%--                     viewBox="0 0 66 66">--%>
<%--                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33"--%>
<%--                            cy="33" r="30"></circle>--%>
<%--                </svg>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<jsp:include page="../blocks/footer.jsp"/>--%>
<%--</body>--%>
<%--</html>--%>
