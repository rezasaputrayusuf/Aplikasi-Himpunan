<%-- 
    Document   : regagenda
    Created on : Jul 3, 2014, 10:49:47 PM
    Author     : Reza
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        String id_himpunan  = request.getParameter("id_himpunan");
                 String tanggal  = request.getParameter("tanggal");
                 String nama_acara  = request.getParameter("nama_acara");
                 String tempat  = request.getParameter("tempat");
                 String pj = request.getParameter("pj");
                 String kontak = request.getParameter("kontak");
         Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_aplikasi_hima","root", "");
                Statement st = con.createStatement();
                ResultSet rs;        
        int i = st.executeUpdate("insert into agenda(id_himpunan,tanggal,nama_acara,tempat,pj,kontak) values ('"+id_himpunan+"','"+tanggal+"','"+nama_acara+"','"+tempat+"','"+pj+"','"+kontak+"')");
        if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("agenda.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("agenda.jsp");
    }        
%>