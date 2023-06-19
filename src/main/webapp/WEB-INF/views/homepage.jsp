<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%@ include file="./base.jsp"%>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12">

				<h1 class="text-center mb-3 mt-3">Welcome to Product App</h1>

				<table class="table table-dark">
					<thead>
						<tr>
							<th scope="col">S No.</th>
							<th scope="col">Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="p">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.name}</td>
								<td>${p.description}</td>
								<td class="font-weight-bold">&#x20B9; ${p.price}</td>
								<td><a href="delete/${p.id}"> <i
										class="fa-solid fa-trash text-danger"></i></a> <a
									href="update/${p.id}"> <i class="fa-solid fa-pen ml-2"></i></a>
								</td>

							</tr>
						</c:forEach>

					</tbody>
				</table>

				<div class="container text-center">

					<a href="add-product" class="btn btn-outline-success">Add</a>
				</div>

			</div>

		</div>

	</div>

</body>
</html>