<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
<title>Insert title here</title>
</head>
<body>
	<%@include file="Navbar.jsp" %>
	
            <form action="Rregistered.jsp" class="m-5" style="text-align: center;">
			    <h1 class="d-flex justify-content-center">Patient's Details</h1>
                <input hidden type="text" class="form-control" name="bg" id="" value="<%=request.getParameter("bg") %>">
                <input type="text" class="form-control" name="name" id="" placeholder="patient's name*" required>
                <input type="text" class="form-control" name="mobile" id="" placeholder="mobile no" required>
                <input type="text" class="form-control" name="unit" id="" placeholder="units required" required>
                <button class="btn btn-danger ">Submit Requirement</button>
            </form>
     <!-- footer -->
	<%@include file="Footer.jsp"%>
</body>
</html>