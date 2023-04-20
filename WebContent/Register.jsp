<jsp:useBean id="p" class="pp.Doner" />
<jsp:useBean id="ddao" class="pp.Ddao" />
<jsp:setProperty property="*" name="p"/>
<%
out.println("<script>alert('Registered')</script>");
int i = ddao.newregister(p);
if(i==1){
response.sendRedirect("index.jsp");	
}
%>