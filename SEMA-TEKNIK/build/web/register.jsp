<%-- 
    Document   : register
    Created on : Jul 3, 2014, 1:07:21 PM
    Author     : Reza
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String nim = request.getParameter("nim");
    //String jk = request.getParameter("jk");
    //String tgl1 = request.getParameter("ltahun");
    //String tgl2 = request.getParameter("lbulan");
    //String tgl3 = request.getParameter("lhari");
    //String alamat = request.getParameter("alamat");
    //String email = request.getParameter("email");
    //String phone = request.getParameter("phone");
    String nama  = request.getParameter("nama");
    String id_jurusan  = request.getParameter("id_jurusan");
    String id_jabatan  = request.getParameter("id_jabatan");
    String thn_ang  = request.getParameter("thn_ang");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_aplikasi_hima","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into daftar(nim,nama,id_jurusan,id_jabatan,thn_ang,username,password) values ('"+nim+"','"+nama+"','"+id_jurusan+"','"+id_jabatan+"','"+thn_ang+"','"+username+"','"+password+"')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("thank.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>