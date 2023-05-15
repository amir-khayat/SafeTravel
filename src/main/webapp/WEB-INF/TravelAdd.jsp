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
<title>Add Expense</title>
</head>
<body>

	<div class="container">
		<h1>Add Expense</h1>
		<form:form method="post" action="/createExpense"
			modelAttribute="expenseObject">
			<div class="form-group mb-3">
				<form:label class="col-sm-3 control-label" path="expense">Expense Name:</form:label>
				<div class="col-sm-9">
					<form:input path="expense" type="text" class="form-control" />
					<form:errors path="expense" class="text-danger" />
				</div>
			</div>
			<div class="form-group mb-3">
				<form:label class="col-sm-3 control-label" path="vendor">Vendor:</form:label>
				<div class="col-sm-9">
					<form:input path="vendor" type="text" class="form-control"/>
					<form:errors path="vendor" class="text-danger" />
				</div>
			</div>
			<div class="form-group mb-3">
				<form:label class="col-sm-3 control-label" path="amount">Amount:</form:label>
				<div class="col-sm-9">
					<form:input path="amount" type="number" class="form-control"/>
					<form:errors path="amount" class="text-danger" />
				</div>
			</div>
			<div class="form-group mb-3">
				<form:label class="col-sm-3 control-label" path="description">Description:</form:label>
				<div class="col-sm-9">
					<form:textarea path="description" class="form-control"></form:textarea>
					<form:errors path="description" class="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-3 col-sm-9">
					<input type="submit" class="btn btn-primary" value="Submit" /> 
					<a href="/" class="btn btn-secondary">Go Back</a>
				</div>
			</div>
		</form:form>

	</div>

</body>
</html>