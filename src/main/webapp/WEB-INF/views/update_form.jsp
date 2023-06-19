<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@include file="./base.jsp" %>
<title>Insert title here</title>
</head>
<body>

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
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">Product Form</h1>

    <form action="${pageContext.request.contextPath }/handle-product" method="post">
    <div class="form-group">
    <input type="hidden" name="id" value="${product.id}"/>
    </div>
        <div class="form-group">
            <label for="product-name" class="form-label">Product Name</label>
            <input type="text" class="form-control" name="name" id="product-name" value="${product.name}">
        </div>
        <div class="form-group">
            <label for="product-description" class="form-label">Description</label>
            <textarea class="form-control" id="product-description" name="description" rows="3">${product.description}</textarea>
        </div>
        <div class="form-group">
            <label for="product-price" class="form-label">Price (in rupees)</label>
            <input type="number" class="form-control" id="product-price" name="price" value="${product.price}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
        <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
        
       <!--  Another way to add back button
        <a href="javascript:history.back()" class="btn btn-secondary btn-back">Back</a> -->
    </form>
</div>

</body>
</html>