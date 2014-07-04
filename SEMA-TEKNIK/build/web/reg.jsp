<%-- 
    Document   : reg
    Created on : Jul 3, 2014, 1:06:16 PM
    Author     : Reza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Daftar</title>
        <style type="text/css">
 *{margin:auto;padding:0;}
 body{font-family:helvetica;background-image: url('images/bg.jpg');}
 #con{background:#fff;width:350px;padding:30px;margin-top:100px;border-radius:20px;border:1 solid #eee;box-shadow:2px 6px 10px #ccc;}
 h2{text-align:center;margin-bottom:15px;}
 p{margin-bottom:10px;}
 label{display:inline-block;width:100px;}
 input[type=submit]{border:none;color:#fff;background:linear-gradient(top, #333 0%, #777 100%);background:-moz-linear-gradient(top, #333 0%, #777 100%);background:-webkit-linear-gradient(top, #333 0%, #777 100%);height:30px;width:100px;border-radius:5px;}
 input[type=submit]:active{background:linear-gradient(top, #888 0%, #bbb 100%);background:-moz-linear-gradient(top, #888 0%, #bbb 100%);background:-webkit-linear-gradient(top, #888 0%, #bbb 100%);}
        </style>
    </head>
    <body>
        <div id="con">
 <h2>Register Area</h2>
 <form action="register.jsp" method="get">
 <p>
  <label>NIM</label>
  <input type="text" name="nim"/>
 </p>
 <p>
  <label>Nama</label>
  <input type="text" name="nama"/>
 </p>
 <p>
  <label>Jurusan</label>
  <select name="id_himpunan">
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
 </p>
 <p>
  <label>jabatan</label>
  <input type="text" name="id_jabatan"/>
 </p>
 <p>
  <label>T.A</label>
  <input type="text" name="thn_ang"/>
 </p>
 <p>
  <label>Username</label>
  <input type="text" name="username"/>
 </p>
 <p>
  <label>Password</label>
  <input type="password" name="password"/>
 </p>
 <%--<p>
  <label>Kelamin</label>
  <input type="radio" name="jk" value="Laki-laki" checked/> Laki-laki
  <input type="radio" name="jk" value="Perempuan"/> Perempuan
 </p>
 <p>
  <label>Lahir</label>
  <select name="lhari">
  <%
                    for(int a=1;a<=31;a++){
  %>
                <option><% out.println(a); %></option>
  <% 
                    }
  %>
  </select>
  <select name="lbulan">
  <%
                    for(int a=1;a<=12;a++){
  %>
   <option><% out.println(a); %></option>
  <% 
                    }
  %>
  </select>
  <select name="ltahun">
  <%
                    for(int a=1980;a<=2014;a++){
  %>
   <option><% out.println(a); %></option>
  <% 
                    }
  %>
  </select>
 </p>
 <p>
  <label>Alamat</label>
  <input type="text" name="alamat"/>
 </p>
 <p>
  <label>Email</label>
  <input type="email" name="email"/>
 </p>
 <p>
  <label>Phone</label>
  <input type="phone" name="phone"/>
 </p>
 --%>
 
 <p>
  <label></label>
  <input type="submit" name="submit" Value="Daftar"/>
 </p>
 </form>
</div>
    </body>
</html>
