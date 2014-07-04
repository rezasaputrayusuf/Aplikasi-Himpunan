<%-- 
    Document   : home
    Created on : Jul 3, 2014, 1:07:41 PM
    Author     : Reza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Himpunan Teknik UP</title>
    </head>
    <style>
        body {text-align: center; border-radius: 10px; margin: 3% 30%;background-image: url('images/bg.jpg');}
        img {width:20%; height: 20%; margin: 2%;}
        article{background: white; padding: 5%; border-radius: 5px;}
        li{display: inline;}
    </style>
    <body>
        <%
        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        %><article>
            You are not logged in<br/>
            <a href="index.jsp">Please Login</a>
        </article>
        <%} else {
        %>
        <article>
        <h2>Welcome <%=session.getAttribute("userid")%></h2>
        <hr />
        <h3>Data Anggota Himpunan Teknik</h3>
        <ul>    
            <li><a href="data-mahasiswa.jsp?jur=sema"><img src="images/sema.jpeg"></a></li>
            <li><a href="data-mahasiswa.jsp?jur=informatika"><img src="images/it.jpg"></a></li>
            <li><a href="data-mahasiswa.jsp?jur=arsitek"><img src="images/arsi.jpeg"></a></li>
            <li><a href="data-mahasiswa.jsp?jur=sipil"><img src="images/sipil.jpg"></a></li><br />
            <li><a href="data-mahasiswa.jsp?jur=elektro"><img src="images/elektro.jpg"></a></li>
            <li><a href="data-mahasiswa.jsp?jur=d3"><img src="images/d3.jpg"></a></li>
            <li><a href="data-mahasiswa.jsp?jur=industri"><img src="images/imti.jpg"></a></li>
            <li><a href="data-mahasiswa.jsp?jur=mesin"><img src="images/"></a>HMM</li><br />
            <li><a href="agenda.jsp"><img src="images/agenda.jpg"></a></li>
        </ul>
        <button><a href='logout.jsp'>Logout</a></button><br />
        <%
        }
        %>
        </article>
    </body>
</html>