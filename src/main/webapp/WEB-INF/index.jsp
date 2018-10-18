<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
	<script type="text/javascript" 		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
		<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">Stocks App</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/">Home</a></li>
					<li><a href="viewTicker">View Stocks</a></li>
				</ul>
			</div>
		</div>
	</nav>
			<h1> ${message}</h1>
   <form:form method="POST"
          action="/addTicker" modelAttribute="stock">
             <table>
                <tr>
                    <td><form:label path="ticker">Ticker</form:label></td>
                    <td><form:input path="ticker"/></td>
                    <td><form:errors path="ticker" /></td>
                </tr>
                <tr>
                    <td><form:label path="stockName">Stock Name</form:label></td>
                    <td><form:input path="stockName"/></td>
                     <td><form:errors path="stockName" /></td>
                </tr>
                <tr>
                    <td><form:label path="sector">Sector</form:label></td>
                    <td><form:input path="sector"/></td>
                </tr>
                <tr>
                    <td><button type="submit" class="btn btn-primary">Submit</button></td>
                </tr>
            </table>
        </form:form>

<h2> ${ticker}</h2>

</body>
</html>