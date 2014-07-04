<%-- 
    Document   : logout
    Created on : Jul 3, 2014, 1:09:28 PM
    Author     : Reza
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>