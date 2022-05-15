<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../resources/css/style.css">
    <title>Пример оформления заказа · Bootstrap v5.1</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
          integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-light">
<%@include file="blocks/header.jsp"%>
<div class="container-fluid">
    <div class="row">
        <%@include file="blocks/aside.jsp"%>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="py-5 text-center">
                <h2>
                <span style="vertical-align: inherit;">
                    <span
                            style="vertical-align: inherit;">Форма оформления заказа</span>
                </span>
                </h2>
            </div>

            <div class="row g-5">
                <div class="col-md-5 col-lg-4 order-md-last">
                    <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span class="text-primary">
                        <label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;">Ваша корзина</label>
                        </label>

                    </span>
                        <span class="badge bg-primary rounded-pill"><font style="vertical-align: inherit;"><font
                                style="vertical-align: inherit;">3</font></font></span>
                    </h4>
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0"><label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Наименование товара</label>
                                </label></h6>
                                <small class="text-muted"><label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Краткое описание</label>
                                </label>
                                </small>
                            </div>
                            <span class="text-muted"><label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;">12 долларов</label>
                        </label>
                        </span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Второй продукт</label>
                                    </label>
                                </h6>
                                <small class="text-muted">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Краткое описание</label>
                                    </label>
                                </small>
                            </div>
                            <span class="text-muted">
                            <label style="vertical-align: inherit;">
                                <label style="vertical-align: inherit;">$8</label>
                            </label>
                        </span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Третий пункт</label>
                                    </label>
                                </h6>
                                <small class="text-muted"><label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Краткое описание</label>
                                </label>
                                </small>
                            </div>
                            <span class="text-muted">
                            <label style="vertical-align: inherit;">
                                <label style="vertical-align: inherit;">$5</label>
                            </label>
                        </span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between bg-light">
                            <div class="text-success">
                                <h6 class="my-0">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Промо код</label>
                                    </label>
                                </h6>
                                <small>
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">ПРИМЕР КОДА</label>
                                    </label>
                                </small>
                            </div>
                            <span class="text-success"><label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;">−5 долларов</label>
                        </label>
                        </span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between">
                        <span><label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;">Всего (долл. США)</label>
                        </label>
                        </span>
                            <strong>
                                <label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">20 долларов</label>
                                </label>
                            </strong>
                        </li>
                    </ul>

                    <form class="card p-2">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Промо код">
                            <button type="submit" class="btn btn-secondary">
                                <label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Выкупать</label>
                                </label>
                            </button>
                        </div>
                    </form>
                </div>
                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">
                        <label style="vertical-align: inherit;">
                            <label style="vertical-align: inherit;">Адрес для выставления счета</label>
                        </label>
                    </h4>
                    <form class="needs-validation" novalidate="">
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="firstName" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Имя</label>
                                    </label>
                                </label>
                                <input type="text" class="form-control" id="firstName" placeholder="" value=""
                                       required="">
                                <div class="invalid-feedback">
                                    Valid first name is required.
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Фамилия</label>
                                    </label>
                                </label>
                                <input type="text" class="form-control" id="lastName" placeholder="" value=""
                                       required="">
                                <div class="invalid-feedback">
                                    Valid last name is required.
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="username" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Имя пользователя</label>
                                    </label>
                                </label>
                                <div class="input-group has-validation">
                                <span class="input-group-text">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">@</label>
                                    </label>
                                </span>
                                    <input type="text" class="form-control" id="username" placeholder="Имя пользователя"
                                           required="">
                                    <div class="invalid-feedback">
                                        Your username is required.
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="email" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Электронная почта </label>
                                    </label><span class="text-muted"><label style="vertical-align: inherit;">
                                <label style="vertical-align: inherit;">(необязательно)</label>
                            </label>
                            </span>
                                </label>
                                <input type="email" class="form-control" id="email" placeholder="you@example.com">
                                <div class="invalid-feedback">
                                    Please enter a valid email address for shipping updates.
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="address" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Адрес</label>
                                    </label>
                                </label>
                                <input type="text" class="form-control" id="address" placeholder="1234 Главная улица"
                                       required="">
                                <div class="invalid-feedback">
                                    Please enter your shipping address.
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="address2" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Адрес 2 </label>
                                    </label><span class="text-muted">
                                <label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">(необязательно)</label>
                                </label>
                            </span>
                                </label>
                                <input type="text" class="form-control" id="address2" placeholder="Квартира или люкс">
                            </div>

                            <div class="col-md-5">
                                <label for="country" class="form-label"><label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Страна</label>
                                </label>
                                </label>
                                <select class="form-select" id="country" required="">
                                    <option value="">
                                        <label style="vertical-align: inherit;">
                                            <label style="vertical-align: inherit;">Выбирать...</label>
                                        </label>
                                    </option>
                                    <option>
                                        <label style="vertical-align: inherit;">
                                            <label style="vertical-align: inherit;">Соединенные Штаты</label>
                                        </label>
                                    </option>
                                </select>
                                <div class="invalid-feedback">
                                    Please select a valid country.
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label for="state" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Состояние</label>
                                    </label>
                                </label>
                                <select class="form-select" id="state" required="">
                                    <option value="">
                                    <span style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Выбирать...</label>
                                    </span>
                                    </option>
                                    <option>
                                        <label style="vertical-align: inherit;">
                                            <label style="vertical-align: inherit;">Калифорния</label>
                                        </label>
                                    </option>
                                    <option>
                                        <label style="vertical-align: inherit;">
                                            <label style="vertical-align: inherit;">Беларусь</label>
                                        </label>
                                    </option>
                                    <option>
                                        <label style="vertical-align: inherit;">
                                            <label style="vertical-align: inherit;">Поьша</label>
                                        </label>
                                    </option>
                                </select>
                                <div class="invalid-feedback">
                                    Please provide a valid state.
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="zip" class="form-label">
                                <span style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Почтовый индекс</label>
                                </span>
                                </label>
                                <input type="text" class="form-control" id="zip" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Zip code required.
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="same-address">
                            <label class="form-check-label" for="same-address">
                                <label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Адрес доставки совпадает с моим платежным
                                        адресом</label>
                                </label>
                            </label>
                        </div>

                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="save-info">
                            <label class="form-check-label" for="save-info">
                                <label style="vertical-align: inherit;">
                                    <label style="vertical-align: inherit;">Сохраните эту информацию для следующего
                                        раза</label>
                                </label>
                            </label>
                        </div>

                        <hr class="my-4">

                        <h4 class="mb-3">
                            <label style="vertical-align: inherit;">
                                <label style="vertical-align: inherit;">Оплата</label>
                            </label>
                        </h4>

                        <div class="my-3">
                            <div class="form-check">
                                <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked=""
                                       required="">
                                <label class="form-check-label" for="credit">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Кредитная карта</label>
                                    </label>
                                </label>
                            </div>
                            <div class="form-check">
                                <input id="debit" name="paymentMethod" type="radio" class="form-check-input"
                                       required="">
                                <label class="form-check-label" for="debit"><font style="vertical-align: inherit;"><font
                                        style="vertical-align: inherit;">Дебетовая карточка</font></font></label>
                            </div>
                            <div class="form-check">
                                <input id="paypal" name="paymentMethod" type="radio" class="form-check-input"
                                       required="">
                                <label class="form-check-label" for="paypal">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">PayPal</label>
                                    </label>
                                </label>
                            </div>
                        </div>

                        <div class="row gy-3">
                            <div class="col-md-6">
                                <label for="cc-name" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Имя на карте</label>
                                    </label>
                                </label>
                                <input type="text" class="form-control" id="cc-name" placeholder="" required="">
                                <small class="text-muted">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Полное имя, отображаемое на
                                            карточке</label>
                                    </label>
                                </small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label for="cc-number" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Номер кредитной карты</label>
                                    </label>
                                </label>
                                <input type="text" class="form-control" id="cc-number" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-expiration" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">Срок действия</label>
                                    </label>
                                </label>
                                <input type="text" class="form-control" id="cc-expiration" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label for="cc-cvv" class="form-label">
                                    <label style="vertical-align: inherit;">
                                        <label style="vertical-align: inherit;">CVV</label>
                                    </label>
                                </label>
                                <input type="text" class="form-control" id="cc-cvv" placeholder="" required="">
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">

                        <button class="w-100 btn btn-primary btn-lg" type="submit">
                            <label style="vertical-align: inherit;">
                                <label style="vertical-align: inherit;">Продолжить оформление заказа</label>
                            </label>
                        </button>
                    </form>
                </div>
            </div>
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
<%@include file="blocks/footer.jsp"%>
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