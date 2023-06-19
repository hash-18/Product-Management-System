<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="./base.jsp" %>
<title>Insert title here</title>

<style>
        body {
            background-color: #8697a8;
        }

        .container {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 50px;
        }

        .form-label {
            font-weight: bold;
            color: #343a40;
        }
        
}
        
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">Product Form</h1>

    <form:form action="handle-product" method="post" modelAttribute="product">
        <div class="form-group">
            <label for="product-name" class="form-label">Product Name</label>
            <form:input path="name" type="text" class="form-control" name="name" id="product-name" placeholder="Enter product name"/>
        <form:errors path="name" cssClass="text-danger"/>
        </div>
        <div class="form-group">
            <label for="product-description" class="form-label">Description</label>
            <form:textarea path="description" class="form-control" id="product-description" name="description" rows="3"
                      placeholder="Enter product description"/>
                      <form:errors path="description" cssClass="text-danger"/>
        </div>
        <div class="form-group">
            <label for="product-price" class="form-label">Price (in rupees)</label>
            <form:input path="price" type="number" class="form-control" id="product-price" name="price" placeholder="Enter product price"/>
             <form:errors path="price" cssClass="text-danger"/>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
        
       <!--  Another way to add back button
        <a href="javascript:history.back()" class="btn btn-secondary btn-back">Back</a> -->
    </form:form>
</div>

</body>
</html>