<jsp:useBean id="p" class="pp.Patient" />
<jsp:setProperty property="*" name="p"/>
<jsp:useBean id="Rdao" class="pp.Pdao" />

<%
int i = Rdao.newregister(p);
RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
rd.include(request, response);
out.println("<script>alert('Requirement sent will contact you soon.')</script>");


%>