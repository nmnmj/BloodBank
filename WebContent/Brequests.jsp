<%@page import="pp.Pdao"%>
<%@page import="pp.Patient"%>
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
	<jsp:useBean id="Pdao" class="pp.Pdao" />
	<%
	String pn = request.getParameter("pno");
	int pno = Integer.parseInt(pn);
	int total = 5;
	if(pno==1){
		pno=pno-1;
	}
	else{
		pno=pno-1;
		pno=total*pno;
	}
	%>
	  <table class="table mt-2" style="font-size: 80%;">
               
                <thead style="background-color: red; color: white;">
                    <tr>
                        <th scope="col">Patient's Name</th>
                        <th scope="col">Blood Type</th>
                        <th scope="col">Unit</th>
                    </tr>
                </thead>
                <tbody>
                <%
                List<Patient> al = Pdao.showbypage(pno, total);
                for(Patient p : al){   	
                %>
                    <tr>
                        <td style="text-transform: uppercase;"><%=p.getName() %></td>
                        <td><%=p.getBg() %></td>
                        <td><%=p.getUnit() %></td>
                    </tr>
                <%
                }
                %>

                </tbody>
            </table>
            <nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <%
			    int s = Pdao.allrequirement().size();
			    int c = 1;
			    for(int i=1;i<=s;i=i+5){
			    %>
			    <li class="page-item"><a class="page-link" href="Brequests.jsp?pno=<%=c %>"><%=c %></a></li>
			   <%
			    c++;
			    }
			   %>
			  </ul>
			</nav>
   <!-- footer -->
	<%@include file="Footer.jsp"%>
</body>
</html>