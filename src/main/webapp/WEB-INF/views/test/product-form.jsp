<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Пример оформления заказа · Bootstrap v5.1</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
          crossorigin="anonymous">
</head>
<body class="bg-light">
<jsp:include page="../blocks/header.jsp"/>
<div class="container-fluid" >
    <div class="row">
        <jsp:include page="../blocks/aside.jsp"/>
        <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
            <div class="container">
                <div class="col-md-offset-2 col-md-7">
                    <h2 class="text-center">Spring MVC 5 + Hibernate 5 + JSP + MySQL
                        Example</h2>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Add Customer</div>
                        </div>
                        <div class="panel-body">
                            <form:form action="saveProduct" cssClass="form-horizontal"
                                       method="post" modelAttribute="product">

                                <!-- need to associate this data with customer id -->
                                <form:hidden path="id" />

                                <div class="form-group">
                                    <label for="name" class="col-md-3 control-label">Name</label>
                                    <div class="col-md-9">
                                        <form:input path="name" cssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="price" type="number" class="col-md-3 control-label">Price
                                        </label>
                                    <div class="col-md-9">
                                        <form:input type="number" path="price" maxlength="3" cssClass="form-control"/>
                                    </div
                                </div>

<%--                                <div class="form-group">--%>
<%--                                    <label for="availability" class="col-md-3 control-label">Availability</label>--%>
<%--                                    <div class="col-md-9">--%>
<%--                                        <form:input path="availability" cssClass="form-control" />--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                                <div class="form-group">
                                    <label for="quantity"  type="number" class="col-md-3 control-label">Quantity</label>
                                    <div class="col-md-9">
                                        <form:input path="quantity" type="number" cssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="color" class="col-md-3 control-label">Color</label>
                                    <div class="col-md-9">
                                        <form:input path="color" cssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="description" class="col-md-3 control-label">Description</label>
                                    <div class="col-md-9">
                                        <form:input path="description" cssClass="form-control" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="serialNumber" class="col-md-3 control-label">SerialNumber</label>
                                    <div class="col-md-9">
                                        <form:input path="serialNumber" cssClass="form-control" />
                                    </div>
                                </div>
<%--                                <div class="form-group">--%>
<%--                                    <label for="saveProduct.maker.name" class="col-md-3 control-label">Maker</label>--%>
<%--                                    <div class="col-md-9">--%>
<%--                                        <form:input path="saveProduct.maker.name" cssClass="form-control" />--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="saveProduct.productType.name" class="col-md-3 control-label">ProductType</label>--%>
<%--                                    <div class="col-md-9">--%>
<%--                                        <form:input path="saveProduct.productType.name" cssClass="form-control" />--%>
<%--                                    </div>--%>
<%--                                </div>--%>

                                <div class="form-group">
                                    <!-- Button -->
                                    <div class="col-md-offset-3 col-md-9">
                                        <form:button cssClass="btn btn-primary">Submit</form:button>
                                    </div>
                                </div>


                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </main>


        <div class="goog-te-spinner-pos">
            <div class="goog-te-spinner-animation">
                <svg xmlns="http://www.w3.org/2000/svg" class="goog-te-spinner" width="96px" height="96px" viewBox="0 0 66 66">
                    <circle class="goog-te-spinner-path" fill="none" stroke-width="6" stroke-linecap="round" cx="33" cy="33" r="30"></circle>
                </svg>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../blocks/footer.jsp"/>
</body>
</html>
