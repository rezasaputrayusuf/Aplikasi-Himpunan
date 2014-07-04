<%-- 
    Document   : editmhs
    Created on : Jul 3, 2014, 4:37:46 PM
    Author     : Reza
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    String nim          = request.getParameter("nim");
    String nama         = request.getParameter("nama");
    String id_jurusan   = request.getParameter("id_jurusan");
    String id_jabatan   = request.getParameter("id_jabatan");
    String thn_ang      = request.getParameter("thn_ang");

    out.print("<body style='border:1px solid black; margin:5% 30%;'><center><div id='con'><br /><h2>Edit Data Mahasiswa</h2>");
    out.print("<form action='prosesedit.jsp' method='post'>");
    out.print("<table clospan=1><tr>");
    out.print("<td>NIM</td>");
    out.print("<td>   <input type='text' name='nim' value="+nim+"><td>");
    out.print("</</tr>");
    out.print("<tr>");
    out.print("<td>Nama</td>");
    out.print("<td>   <input type='text' name='nama' value='"+nama+"'></td>");
    out.print("</tr>");
    out.print("<tr>");
    out.print("<td>Jurusan</td>");
    out.print("<td>   <input type='text' name='id_jurusan' value='"+id_jurusan+"'></td>");
    out.print("</tr>");
    out.print("<tr>");
    out.print("<td>Jabatan</td>");
    out.print("<td>   <input type='text' name='id_jabatan' value='"+id_jabatan+"'></td>");
    out.print("</tr>");
    out.print("<tr>");
    out.print("<td>T.A</td>");
    out.print("<td>   <input type='text' name='thn_ang' value='"+thn_ang+"'><td>");
    out.print("</tr>");
    out.print("<br><td></td><td><input type='submit' name='submit' Value='Update'/><a href='home.jsp'><input type='submit' name='submit' Value='Exit' ></a></td>");
    out.print("</tr></form>");
    out.print("</div></table></center></body>");
%>
