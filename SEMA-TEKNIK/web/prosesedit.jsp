<%-- 
    Document   : prosesedit
    Created on : Jul 3, 2014, 5:07:52 PM
    Author     : Reza
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String nim           = request.getParameter("nim");
    String nama          = request.getParameter("nama");
    String id_jurusan    = request.getParameter("id_jurusan");
    String id_jabatan    = request.getParameter("id_jabatan");
    String thn_ang       = request.getParameter("thn_ang");
    String submit        = request.getParameter("submit");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_aplikasi_hima","root", "");
    Statement st = con.createStatement();
    //ResultSet rs;
    
    int i = st.executeUpdate("UPDATE `daftar` SET `nim`='"+nim+"',`nama`='"+nama+"',`id_jurusan`='"+id_jurusan+"',`id_jabatan`='"+id_jabatan+"',`thn_ang`='"+thn_ang+"' WHERE nim='"+nim+"'");
    if (i > 0) {
        out.print("BERHASIL");
        response.sendRedirect("data-mahasiswa.jsp");
    } else {
        out.print("GAGAL");
    }
    
%>