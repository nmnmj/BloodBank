<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="Navbar.jsp" %>
	
	<table class="table" style="font-size: 80%" >
                    <thead>
                        <tr>
                            <td colspan="5" style="background-color: red;color: white; text-align:center">
                                Compatible Blood Type Donors
                            </td>
                        </tr>
                    </thead>
                    <thead>
                        <tr>
                            <th scope="col">Blood Type</th>
                            <th scope="col">Units Available</th>                            
                            <th scope="col">Donate Blood to</th>
                            <th scope="col">Recieve Blood from</th>
                            <th scope="col">Blood Required</th>
                        </tr>
                    </thead>
                    <tbody>
                    <jsp:useBean id="ddao" class="pp.Ddao" />
                    <%Integer ap = ddao.apblood(); %>
                    <%Integer an = ddao.anblood(); %>
                    <%Integer bp = ddao.bpblood(); %>
                    <%Integer bn = ddao.bnblood(); %>
		            <%Integer op = ddao.opblood(); %>
		            <%Integer on = ddao.onblood(); %>
		            <%Integer abp = ddao.abpblood(); %>
		            <%Integer abn = ddao.abnblood(); %>
                        <tr>
                            <td>A+</td>
                            <td><%=ap %></td>
                            <td>A+ AB+</td>
                            <td>A+ A- O+ O-</td>
				            <td><a href="Requirement.jsp?bg=A%2B">Request</a></td>
                        </tr>
                        <tr>
                            <td>O+</td>
                           <td><%=op %></td>
                            <td>O+ A+ B+ AB+</td>
                            <td>O+ O-</td>
                            <td><a href="Requirement.jsp?bg=O%2B">Request</a></td>
                        </tr>
                        <tr>
                            <td>B+</td>
                           <td><%=bp %></td>
                            <td>B+ AB+</td>
                            <td>B+ B- O+ O-</td>
                            <td><a href="Requirement.jsp?bg=B%2B">Request</a></td>
                        </tr>
                        <tr>
                            <td>AB+</td>
                           <td><%=abp %></td>
                            <td>AB+td>
                            <td>Everyone</td>
                            <td><a href="Requirement.jsp?bg=AB%2B">Request</a></td>
                        </tr>
                        <tr>
                            <td>A-</td>
                            <td><%=an %></td>
                            <td>A+ A- AB+ AB-</td>
                            <td>A- O-</td>
                            <td><a href="Requirement.jsp?bg=A%2D">Request</a></td>
                        </tr>
                        <tr>
                            <td>O-</td>
                           <td><%=on %></td>
                            <td>Everyone</td>
                            <td>O-</td>
                            <td><a href="Requirement.jsp?bg=O%2D">Request</a></td>
                        </tr>
                        <tr>
                            <td>B-</td>
                            <td><%=bn %></td>
                            <td>B+ B- AB+ AB-</td>
                            <td>B- O-</td>
                            <td><a href="Requirement.jsp?bg=B%2D">Request</a></td>
                        </tr>
                        <tr>
                            <td>AB-</td>
                            <td><%=abn %></td>
                            <td>AB+ AB-</td>
                            <td>AB- A- B- O-</td>
                            <td><a href="Requirement.jsp?bg=AB%2D">Request</a></td>
                        </tr>

                    </tbody>
                </table>
                
         
	
<!-- footer -->
	<%@include file="Footer.jsp"%>
</body>
</html>