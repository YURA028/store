<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <div class="col-md-offset-1 col-md-10">
                    <h2>CRM - Product Relationship Manager</h2>
                    <hr />

                    <input type="button" value="Add Customer"
                           onclick="window.location.href='showForm'; return false;"
                           class="btn btn-primary" />
                    <br/><br/>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Product List</div>
                        </div>
                        <div class="panel-body">
                            <table class="table table-sm table-bordered">
                                <tr>
                                    <th>Name</th>
<%--                                    <th>Availability</th>--%>
                                    <th>Color</th>
                                    <th>Description</th>
                                    <th>Price</th>
                                    <th>Quantity</th>
                                    <th></th>
<%--                                    <th>maker</th>--%>
<%--                                    <th>productType</th>--%>
<%--                                    <th>Action</th>--%>
                                </tr>
<%--                                <jsp:useBean id="productsId" scope="request" type="java.util.List"/>--%>
                                <c:forEach items="${products}" var="theProducts" >

                                    <c:url var="updateLink" value="/product2/updateForm">
                                        <c:param name="productId" value="${theProducts.id}"/>
                                    </c:url>

                                    <c:url var="deleteLink" value="/product2/delete">
                                        <c:param name="productId" value="${theProducts.id}"/>
                                    </c:url>
                                    <tr>
                                        <td>${theProducts.name}</td>
<%--                                        <td>${theProducts.availability}</td>--%>
                                        <td>${theProducts.color}</td>
                                        <td>${theProducts.description}</td>
                                        <td>${theProducts.price}</td>
                                        <td>${theProducts.quantity}</td>
                                        <td>${theProducts.serialNumber}</td>
<%--                                        <td>${theProducts.maker.name}</td>--%>
<%--                                        <td>${theProducts.productType.name}</td>--%>
                                        <td>
                                            <a href="${updateLink}">Update</a>
                                            <a href="${deleteLink}"
                                               onclick="if (!(confirm('Are you sure you want to delete this product?'))) return false">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
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
