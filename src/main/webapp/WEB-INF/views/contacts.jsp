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
            <div class="py-2 text-center">
                <h2>
                <span style="vertical-align: inherit;">
                    <span
                            style="vertical-align: inherit;">Контакты</span>
                </span>
                </h2>
            </div>
            <div>
                <p>Заказать товар или получить консультацию можно ежедневно с 8:00 до 22:00.</p>
                <div>
                    <h5>Телефоны:</h5>
                    <p>+375 17 3-024-068</p>
                    <p>+375 29 3-024-068</p>
                    <p>+375 33 3-024-068</p>
                    <p>+375 25 5-024-068</p>
                </div>
                <div>
                    <p><h5>Viber:</h5> Electrician.by</p>
                    <p><h5>Telegram:</h5> @Electrician</p>
                    <p><h5>E-mail:</h5> Electrician@mail.by</p>
                </div>
                <div>
                    <h5>Онлайн-заказы через корзину принимаются ежедневно и круглосуточно!</h5>
                    <p>Вы получите сообщение о подтверждении заказа в Viber или по смс на
                        указанный номер телефона. Если же нам нужно будет уточнить у вас
                        какие-либо детали по заказу — вам позвонит наш специалист.</p>
                </div>
                <div>
                    <h5>Онлайн-заказы через корзину принимаются ежедневно и круглосуточно!</h5>
                    <p>Если вам необходима консультация, обращайтесь по телефонам call-центра.
                        E-mail: Electrician@mail.by</p>
                </div>
                <div>
                    <h5>Пункты выдачи заказов в Минске и в регионах</h5>
                    <p>На странице «Самовывоз» вы можете ознакомиться с контактами, координатами и графиком работы всех ПВЗ.
                        Оформить самовывоз можно во всех областных центрах и многих других населенных пунктах Беларуси.</p>
                </div>
            </div>


        </main>
    </div>
</div>
<div>
    <%@include file="blocks/footer.jsp" %>
</div>

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