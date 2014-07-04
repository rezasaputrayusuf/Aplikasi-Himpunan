<%-- 
    Document   : data-mahasiswa
    Created on : Jul 3, 2014, 4:04:11 PM
    Author     : Reza
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Mahasiswa</title>
        <style>
        body {text-align: center; border-radius: 10px; margin: 3% 30%;background-image: url('images/bg.jpg');}
        img {width:20%; height: 20%; margin: 2%;}
        article{background: white; padding: 5%; border-radius: 5px;}
        li{display: inline;}
    </style>
    </head>
    <body>
        <article><a href="home.jsp"><button style="float: left">Kembali</button></a>
        <div id="con"><h2>Data Mahasiswa</h2> 
            <hr />
            <center>
                <table border = 1>
                    <tr>
                        <th>NIM</th>
                        <th>Nama</th>
                        <th>Jurusan</th>
                        <th>Jabatan</th>
                        <th>T.A</th>
                        <th>Operasi</th>
                    </tr>
            <%
                
                String jur = request.getParameter("jur");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_aplikasi_hima","root", "");
                Statement st = con.createStatement();
                ResultSet rs;
                if(jur!=null){
                    rs = st.executeQuery("select * from daftar where id_jurusan='"+jur+"'");
                } else{
                    rs = st.executeQuery("select * from daftar ");
                }
                
                while(rs.next()) {
                    String nim = rs.getString("nim");
                    String nama = rs.getString("nama");
                    String id_jurusan = rs.getString("id_jurusan");
                    String id_jabatan = rs.getString("id_jabatan");
                    String thn_ang = rs.getString("thn_ang");

                    out.print("<tr>");
                    out.print("<th>"+nim+"</th>");
                    out.print("<th>"+nama+"</th>");
                    out.print("<th>"+id_jurusan+"</th>");
                    out.print("<th>"+id_jabatan+"</th>");
                    out.print("<th>"+thn_ang+"</th>");
                    out.print("<th><a href='hapusmhs.jsp?action=hapus&nim="+nim+"'><input type='submit' name='submit' Value='Delete'></a><a href='editmhs.jsp?action=edit&nim="+nim+"&nama="+nama+"&id_jurusan="+id_jurusan+"&id_jabatan="+id_jabatan+"&thn_ang="+thn_ang+"'><input type='submit' name='submit' Value='Edit'></a></th>");
                    out.print("</tr>");
                }
            %>
            </table>
            </center>
        </div>
        <div id="con"><h2>Data Agenda Acara</h2>
            <center> <table border = 1>
                    <tr>
                        <th>Himpunan</th>
                        <th>Tanggal</th>
                        <th>Nama Acara</th>
                        <th>Tempat</th>
                        <th>P.J</th>
                        <th>No. Telp</th>
                    </tr>
            <%
               if(jur!=null){
                    rs = st.executeQuery("select * from agenda where id_himpunan='"+jur+"'");
                } else{
                    rs = st.executeQuery("select * from agenda ");
                }
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
            </table></center>
        </div>
       </article>
    </body>
</html>
