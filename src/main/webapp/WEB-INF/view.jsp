<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


			 <table border="1">
			  <tr>
                    <th>ID</th>
                    <th>Ticker</th>
                    <th>Stock Name</th>
                    <th>Sector</th>
                </tr>
             <c:if test="${not empty stocksList}">
			 <c:forEach var="stock" items="${stocksList}">
                <tr>
                	<td>${stock.id}</td>
                    <td>${stock.ticker}</td>
                    <td>${stock.stockName}</td>
                    <td>${stock.sector}</td>
                </tr>
                </c:forEach>
                </c:if>
            </table>
 		
 		<form:form method="POST"  action="/delete" >
           <button class="btn btn-danger"  >Erase all data</button>
          </form:form>
</body>
</html>