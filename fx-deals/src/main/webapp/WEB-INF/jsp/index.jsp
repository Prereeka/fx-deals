<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!doctype html>
<head>
<meta charset="utf-8">
<meta Full Name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="<c:url value='/theme/css/bootstrap.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value='/theme/css/jquery-ui.min.css'/>" />
<link rel="stylesheet" href="<c:url value='/theme/css/chosen.min.css'/>" />
<script type="text/javascript"
	src="<c:url value='/theme/js/lib/jquery.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/theme/js/lib/chosen.jquery.min.js'/>"></script>
<script type="text/javascript"
	src="<c:url value='/theme/js/bootstrap.min.js'/>"></script>
<title>FX Deals</title>
</head>

<body>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
			<h2 class="text-center">DEAL</h2>
			<div class="panel panel-info">
				<div class="panel-body">
					<form method="POST" action="<c:url value="save-deal" />" modelAttribute = "dealDetails" target="_blank">
						<div class="form-group row">
							<label class="col-md-4">From Currency ISO Code*:</label> <select
								id="fromCurrency" class="select-form col-md-4"
								name="fromCurrency" data-placeholder="From Currency Code">
								<c:forEach var="fromCurrency" items="${isoCurrencyCodes}">
									<option value="${fromCurrency.currencyCode}">${fromCurrency.combinedData}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group row">
							<label class="col-md-4">To Currency ISO Code*:</label> <select
								id="toCurrency" class="select-form col-md-4" name="toCurrency"
								data-placeholder="To Currency Code">
								<c:forEach var="toCurrency" items="${isoCurrencyCodes}">
									<option value="${toCurrency.currencyCode}">${toCurrency.combinedData}</option>
								</c:forEach>
							</select>
						</div>
						<div class="form-group row">
							<label class="col-md-4">Date*:</label> <input
								class="form-control col-md-4" type="date" name="timestamp">
						</div>
						<div class="form-group row">
							<label class="col-md-4">Amount*:</label> <input
								class="form-control col-md-4" type="text" name="amount">
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>