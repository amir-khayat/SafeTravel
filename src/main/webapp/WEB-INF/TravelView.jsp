<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Safe Travel</title>
</head>
<body>
	<div class="container">
		<h1>Save Travel</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Expenses</th>
					<th scope="col">Vendor</th>
					<th scope="col">Amount</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses}">
					<tr>
						<td><a href="/detail/${expense.id}"> <c:out
									value="${expense.expense}" />
						</a></td>
						<td><c:out value="${expense.vendor}" /></td>
						<td>$<c:out value="${expense.amount}" />
						</td>
						<td class="d-flex gap-3"><a href="/update/${expense.id}"
							class="btn btn-info">Edit</a>
							<form action="/delete/${expense.id}" method="post">
								<input type="hidden" name="_method" value="delete"> <input
									type="submit" value="Delete" class="btn btn-danger">
							</form></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="/create" class="btn btn-success">Create</a>
	</div>
</body>
</html>