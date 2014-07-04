<%-- 
    Document   : hapusmhs
    Created on : Jul 3, 2014, 4:33:33 PM
    Author     : Reza
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<script language="JavaScript">
    function berhasil() {
        alert("berhasil di hapus!!!");
    }
    
</script>

<%
    String nim = request.getParameter("nim");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_aplikasi_hima","root", "");
    Statement st = con.createStatement();

    int i = st.executeUpdate("DELETE FROM `daftar` WHERE nim='"+nim+"'");
    if (i > 0) {
        out.write("<script type='text/javascript'>\n");
        out.write("alert(' Berhasil dihapus!!! ');\n");
        out.write("setTimeout(function(){window.location.href='data-mahasiswa.jsp'},500);");
        out.write("</script>\n");
    } else {
        out.print("GAGAL");
    }
%>