<%@page import="pp.Ddao"%>
<%@page import="pp.Doner"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'
	rel='stylesheet'
	integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC'
	crossorigin='anonymous'>
<script
	src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'
	integrity='sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM'
	crossorigin='anonymous'></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	<%@include file="Navbar.jsp" %>
	<jsp:useBean id="Ddao" class="pp.Ddao" />
	<%
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	Doner d = Ddao.login(email, password);
	%>	
	<div class="d-flex justify-content-center m-4">
		<div class="card" style="width: 18rem;">
		  <div class="card-body">
		    <h5 class="card-title">Welcome, <%=d.getName() %> 
		    <br> BloodGroup:- (<%=d.getBg() %>)</h5>
		    <p class="card-text">
			    Age:- <%=d.getAge() %> 
			    Weight:- <%=d.getWeight() %>
		    <p class="card-text">
		    	State:- <%=d.getState() %></p>
		    </p>
		    <a href="#" class="btn btn-danger">Donate Again</a>
		  </div>
		</div>	
	</div>
		
	<!-- footer -->
	<%@include file="Footer.jsp"%>
</body>
</html>