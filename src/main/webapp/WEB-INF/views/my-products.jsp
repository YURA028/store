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
            <h1 style="text-align: center"><spring:message code="title.my.product"/></h1>
            <hr>
            <div>

                <a class="btn  mt-3 mb-3 btn-outline-success" style="text-align: center; width: 100%"
                   data-toggle="collapse" href="#collapseExample" role="button"
                   aria-expanded="true" aria-controls="collapseExample">
                    <spring:message code="label.addNewProduct"/>
                </a>
                <div class="collapse mb-3" id="collapseExample">
                    <form class="col-sm-10 col-sm offset-1" action="/product/create/1" method="post" enctype="multipart/form-data">
                        <div class="form-floating mb-1">
                            <input type="text" required class="form-control"
                                   id="name" name="name" placeholder="name">
                            <label for="name"><spring:message code="basket.title"/></label>
                        </div>
                        <div class="form-floating mb-1">
                            <input type="number" required class="form-control" placeholder="price" id="price"
                                   name="price">
                            <label for="price"><spring:message code="basket.price"/> $</label>
                        </div>
                        <div class="form-floating mb-1">
                            <input type="number" required class="form-control" placeholder="amount" id="amount"
                                   name="amount">
                            <label for="amount"><spring:message code="product.amount"/> </label>
                        </div>
                        <div class="form-floating mb-1">
                            <select id="serialNumber" name="serialNumber" class="form-control">
                                <option value=""><spring:message code="product.serialNumber"/></option>
                                <option value="112345">112345</option>
                                <option value="212345">212345</option>
                                <option value="312345">312345</option>
                                <option value="412345">412345</option>
                                <option value="512345">512345</option>
                                <option value="612345">612345</option>
                                <option value="712345">712345</option>
                                <option value="812345">812345</option>
                                <option value="912345">912345</option>
                            </select>
                            <label for="serialNumber"><spring:message code="product.serialNumber"/></label>
                        </div>
                        <div class="form-floating mb-1">
                            <select id="color" name="color" class="form-control">
                                <option value=""><spring:message code="color.title"/></option>
                                <option value="white"><spring:message code="color.white"/></option>
                                <option value="black"><spring:message code="color.black"/></option>
                                <option value="grey"><spring:message code="color.grey"/></option>
                                <option value="beige"><spring:message code="color.beige"/></option>
                                <option value="red"><spring:message code="color.red"/></option>
                                <option value="blue"><spring:message code="color.blue"/></option>
                            </select>
                            <label for="color"><spring:message code="color.title"/></label>
                        </div>
                        <div class="form-floating mb-1">
                            <select id="maker.name" name="maker.name" class="form-control">
                                <option value=""><spring:message code="title.maker"/></option>
                                <option value="Энергомера">Энергомера</option>
                                <option value="Schneider">Schneider</option>
                                <option value="Eaton">Eaton</option>
                                <option value="ABB">ABB</option>
                                <option value="EKF">EKF</option>
                                <option value="ETP">ETP</option>
                                <option value="IEK">IEK</option>
                            </select>
                            <label for="maker.name"><spring:message code="title.maker"/></label>
                        </div>
                        <div class="form-floating mb-1">
                            <select id="productType.name" required name="productType.name" class="form-control">
                                <option value=""><spring:message code="productType.title"/></option>
                                <option value="cableWire"><spring:message code="productType.cableWire"/></option>
                                <option value="corrugatedPipe"><spring:message
                                        code="productType.corrugatedPipe"/></option>
                                <option value="metalSleeve"><spring:message
                                        code="productType.metalSleeve"/></option>
                                <option value="cableChannel"><spring:message
                                        code="productType.cableChannel"/></option>
                                <option value="wiringBoxes"><spring:message
                                        code="productType.wiringBoxes"/></option>
                                <option value="enclosuresBoxes"><spring:message
                                        code="productType.enclosuresBoxes"/></option>
                                <option value="automata"><spring:message code="productType.automata"/></option>
                                <option value="socketsSwitches"><spring:message
                                        code="productType.socketsSwitches"/></option>
                                <option value="lightingTechnology"><spring:message
                                        code="productType.lightingTechnology"/></option>
                                <option value="electricityMeters"><spring:message
                                        code="productType.electricityMeters"/></option>
                            </select>
                            <label for="name"><spring:message code="productType.title"/></label>
                        </div>

                        <div class="form-floating mb-1">
                        <textarea required  rows="2"  class="form-control"
                                  placeholder="description" id="description" name="description">
                        </textarea>
                            <label for="description">
                                <spring:message code="label.description"/>
                            </label>
                        </div>
                        <div class="form-group">
                            <div class="mb-3">
                                <label for="file1" class="form-label"><spring:message code="product.photo"/> №1</label>
                                <input class="form" required name="file1" type="file" id="file1">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="mb-3">
                                <label for="file2" class="form-label"><spring:message code="product.photo"/> №2</label>
                                <input class="form" name="file2" type="file" id="file2">
                            </div>
                        </div>
                        <br>
                        <button type="submit" style="width: 100%" class="btn btn-outline-success">
                            <spring:message code="product.add.item"/>
                        </button>
                    </form>
                </div>
            </div>
            <table class="table table-bordered border-primary">
                <tr class="text-center">
                    <td>№</td>
                    <th>Фото</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Amount</th>
                    <th>Color</th>
                    <th>Maker</th>
                    <th>ProductType</th>
                </tr>
                <c:forEach items="${products}" varStatus="status" var="product">
                    <tr class="text-center text-start">
                        <td width="30px">${status.count}</td>
                        <td width="100px" class="text-center">
                            <img class="img-fluid" src="/images/${product.previewImageId}" height="200px"/>
                        </td>
                        <td width="30px">
                            <div class="  text-wrap text-dark" style="width: 6rem;">
                                    ${product.name}
                            </div>
                        </td>
                        <td width="70px">${product.price}</td>
                        <td width="70px">${product.amount}</td>
                        <td width="70px"><spring:message code="color.${product.color}"/></td>
                        <td width="70px"><spring:message code="productType.${product.productType.name}"/></td>
                        <td width="70px">${product.maker.name}</td>
                        <td>
                            <form action="/product/${product.id}/edit">
                                <button type="submit" class="btn btn-outline-success col-sm-5 col-sm offset-1">
                                    <spring:message code="label.edit"/>
                                </button>
                            </form>
                            <form action="/product/${product.id}">
                                <button type="submit" class="btn btn-outline-dark col-sm-5 col-sm offset-1">
                                    <spring:message code="label.detail"/>
                                </button>
                            </form>
                            <form action="/product/delete/${product.id}" method="post">
                                <button type="submit" class="btn btn-outline-danger col-sm-5 col-sm offset-1">
                                    <spring:message code="label.delete"/>
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </main>



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