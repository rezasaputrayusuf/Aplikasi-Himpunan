<%-- 
    Document   : agenda
    Created on : Jul 3, 2014, 8:37:32 PM
    Author     : Reza
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda Acara</title>
    </head>
    <style>
        body {text-align: center; border-radius: 10px; margin: 3% 30%;background-image: url('images/bg.jpg');}
        img {width:20%; height: 20%; margin: 2%;}
        article{background: white; padding: 5%; border-radius: 5px;}
        li{display: inline;}
    </style>
    <body>
        <article><a href="home.jsp"><button style="float: left">Kembali</button></a><br />
        <h1>Agenda Acara</h1><hr />
         <div id="con">
 <br />
 <form action="regagenda.jsp" method="get">
     <center>
 <table border="1"">
 <tr>
  <td>Himpunan</td><td><select name="id_himpunan">
      <option>--------------------------</option>
      <option value="Arsitek">Arsitek</option>
      <option value="Mesin">Mesin</option>
      <option value="Sema">Sema</option>
      <option value="Informatika">Informatika</option>
      <option value="Sipil">Sipil</option>
      <option value="Industri">Industri</option>
      <option value="Elektro">Elektro</option>
      <option value="D3">D3</option>
 </select>
  </td>
 </tr>
 <tr>
  <td>Tanggal</td><td><input type="text" name="tanggal"/></td>
 </tr>
 <tr>
  <td>Nama Acara</td><td><input type="text" name="nama_acara"/></td>
 </tr>
 <tr>
  <td>Tempat</td><td><input type="text" name="tempat"/></td>
 </tr>
 <tr>
  <td>P.J</td><td><input type="text" name="pj"/></td>
 </tr>
 <tr>
  <td>No. Telp</td><td><input type="text" name="kontak"/></td>
 </tr>
 <tr>
  <td></td><td><input type="submit" name="submit" Value="Tambah"/></td>
 </tr>
 </table>
     
 <div id="con"><h2>Data Agenda Acara</h2>
                <table border = 1>
                    <tr>
                        <th>Himpunan</th>
                        <th>Tanggal</th>
                        <th>Nama Acara</th>
                        <th>Tempat</th>
                        <th>P.J</th>
                        <th>No. Telp</th>
                    </tr>
            <%
                 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_aplikasi_hima","root", "");
                Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select * from agenda ");
                while(rs.next()) {
                    String id_himpunan = rs.getString("id_himpunan");
                    String tanggal = rs.getString("tanggal");
                    String nama_acara = rs.getString("nama_acara");
                    String tempat = rs.getString("tempat");
                    String pj = rs.getString("pj");
                    String kontak = rs.getString("kontak");

                    out.print("<tr>");
                    out.print("<th>"+id_himpunan+"</th>");
                    out.print("<th>"+tanggal+"</th>");
                    out.print("<th>"+nama_acara+"</th>");
                    out.print("<th>"+tempat+"</th>");
                    out.print("<th>"+pj+"</th>");
                    out.print("<th>"+kontak+"</th>");
                    
                    out.print("</tr>");
                }
            %>
            </table>
        </div></center>
            </article>
    </body>
</html>
