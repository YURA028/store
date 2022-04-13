<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Title</title>
    <link href="/resources/css/styles.css" rel="stylesheet" type="text/css">
</head>

<body>

<%--<div class="alert alert-danger" role="alert">Логин или пароль введены неверно</div>--%>

<div class="form-style-2">
    <div class="form-style-2-heading">
        Please Login!
    </div>
    <form method="post" action="/login">
        <label for="login">Логин
            <input class="input-field" type="text" id="login" name="login">
        </label>
        <br>
        <label for="password">Пароль
            <input class="input-field" type="password" id="password" name="password">
        </label>
        <br>
        <label for="remember-me">
            <input type="checkbox" id="remember-me" name="remember-me">Запомнить меня</label>
        <input type="submit" value="Login">
    </form>
</div>
</body>
</html>







<%--&lt;%&ndash;<%@ page language="java" contentType="text/html; charset=UTF-8"&ndash;%&gt;--%>
<%--&lt;%&ndash;         pageEncoding="UTF-8"%>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>&ndash;%&gt;--%>
<%--&lt;%&ndash;<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;<!DOCTYPE html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<html>&ndash;%&gt;--%>
<%--&lt;%&ndash;<head><%@ page isELIgnored="false" %>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <meta charset="UTF-8" >&ndash;%&gt;--%>
<%--&lt;%&ndash;    <title>java</title>&ndash;%&gt;--%>

<%--&lt;%&ndash;    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">&ndash;%&gt;--%>
<%--&lt;%&ndash;</head>&ndash;%&gt;--%>

<%--&lt;%&ndash;<body class="d-flex h-100 text-center text-white bg-dark">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="core-container aem-GridColumn--xlarge--none aem-GridColumn--default--none aem-GridColumn aem-GridColumn--default--12 aem-GridColumn--xlarge--2 aem-GridColumn--offset--xlarge--0 aem-GridColumn--offset--default--0">&ndash;%&gt;--%>

<%--&lt;%&ndash;    <div id="container-25fd719852" class="cmp-container  ">&ndash;%&gt;--%>

<%--&lt;%&ndash;        <div class="title">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <div class="cmp-title" id="title-5c85c35f60">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <h5 class="cmp-title__text wd-uppercase wd-font-16 ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    Follow Autodesk</h5>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="responsivelist"><ul class="cmp-responsivelist  small-block-grid-1 medium-block-grid-5 large-block-grid-5 xlarge-block-grid-1 wd-mt-0">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div><div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div id="text-82124eebc8" class="cmp-text ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p class="wd-font-14 wd-pv-8">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <a class="wd-inline-icon" data-wat-link="true"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                   data-wat-loc="megafooter" data-wat-val="facebook"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                   href="https://www.facebook.com/autodesk?source=footer"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                   target="_blank">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <svg class="wd-icon icon-svg-facebook">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <use xlink:href="#icon-svg-facebook"></use></svg>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <span>Facebook</span></a></p>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div id="text-9e641a2153" class="cmp-text ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p class="wd-font-14 wd-pv-8"><a class="wd-inline-icon" data-wat-link="true" data-wat-loc="megafooter" data-wat-val="instagram" href="https://www.instagram.com/autodesk?source=footer" target="_blank"><svg class="wd-icon icon-svg-instagram"><use xlink:href="#icon-svg-instagram"></use></svg><span>Instagram</span></a></p>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div><div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div id="text-fdf59700b6" class="cmp-text ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p class="wd-font-14 wd-pv-8"><a class="wd-inline-icon" data-wat-link="true" data-wat-loc="megafooter" data-wat-val="twitter" href="https://www.twitter.com/autodesk?source=footer" target="_blank"><svg class="wd-icon icon-svg-twitter"><use xlink:href="#icon-svg-twitter"></use></svg><span>Twitter</span></a></p>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div><div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div id="text-51ebe0f664" class="cmp-text ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p class="wd-font-14 wd-pv-8"><a class="wd-inline-icon" data-wat-link="true" data-wat-loc="megafooter" data-wat-val="linkedin" href="https://www.linkedin.com/company/autodesk?source=footer" target="_blank"><svg class="wd-icon icon-svg-linkedin"><use xlink:href="#icon-svg-linkedin"></use></svg><span>LinkedIn</span></a></p>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <li>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div><div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                    <div class="text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <div id="text-5bdf0aaea2" class="cmp-text ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p class="wd-font-14 wd-pv-8"><a data-wat-link="true" data-wat-loc="megafooter" data-wat-val="all social media" href="https://www.autodesk.com/social-media?source=footer"><span>All social media</span></a></p>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </li>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <div class="text">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <div id="text-8d3a4e635e" class="cmp-text ">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <p class="wd-font-14 wd-btw-1 wd-bc-light wd-mt-8 wd-pv-16 wp-full-width"><a class="wd-inline-icon" data-wat-link="true" data-wat-loc="megafooter" data-wat-val="worldwide sites" href="https://www.autodesk.com/site-selector?source=footer"><svg class="wd-icon icon-svg-globe-international"><use xlink:href="#icon-svg-globe-international"></use></svg><span>Worldwide sites</span></a></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>&ndash;%&gt;--%>
<%--&lt;%&ndash;</body>&ndash;%&gt;--%>
<%--&lt;%&ndash;</html>&ndash;%&gt;--%>
