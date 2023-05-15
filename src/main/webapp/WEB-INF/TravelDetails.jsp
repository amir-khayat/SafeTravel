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
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>Expense Detail</h1>
		<table class="table">
			<tbody>
				<tr>
					<td><strong>Expense Name:</strong></td>
					<td>${expense.expense}</td>
				</tr>
				<tr>
					<td><strong>Vendor:</strong></td>
					<td>${expense.vendor}</td>
				</tr>
				<tr>
					<td><strong>Amount:</strong></td>
					<td>${expense.amount}</td>
				</tr>
				<tr>
					<td><strong>Description:</strong></td>
					<td>${expense.description}</td>
				</tr>
			</tbody>
		</table>
		<a href="/" class="btn btn-primary">Back to Expenses</a>
	</div>
</body>
</html>