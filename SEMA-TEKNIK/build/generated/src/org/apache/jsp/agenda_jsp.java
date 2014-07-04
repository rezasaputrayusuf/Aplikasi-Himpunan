package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class agenda_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Agenda Acara</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        body {text-align: center; border-radius: 10px; margin: 3% 30%;background-image: url('images/bg.jpg');}\n");
      out.write("        img {width:20%; height: 20%; margin: 2%;}\n");
      out.write("        article{background: white; padding: 5%; border-radius: 5px;}\n");
      out.write("        li{display: inline;}\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <article>\n");
      out.write("        <h1>Agenda Acara</h1><hr />\n");
      out.write("         <div id=\"con\">\n");
      out.write(" <h2>Register Area</h2>\n");
      out.write(" <br /><a href=\"home.jsp\"><button style=\"float: left\">Kembali</button></a><br />\n");
      out.write(" <form action=\"regagenda.jsp\" method=\"get\">\n");
      out.write("     <center>\n");
      out.write(" <table border=\"1\"\">\n");
      out.write(" <tr>\n");
      out.write("  <td>Himpunan</td><td><input type=\"text\" name=\"id_himpunan\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("  <td>Tanggal</td><td><input type=\"text\" name=\"tanggal\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("  <td>Nama Acara</td><td><input type=\"text\" name=\"nama_acara\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("  <td>Tempat</td><td><input type=\"text\" name=\"tempat\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("  <td>P.J</td><td><input type=\"text\" name=\"pj\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("  <td>No. Telp</td><td><input type=\"text\" name=\"kontak\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" <tr>\n");
      out.write("  <td></td><td><input type=\"submit\" name=\"submit\" Value=\"Daftar\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" </table>\n");
      out.write("     \n");
      out.write(" <div id=\"con\"><h2>Data Agenda Acara</h2>\n");
      out.write("                <table border = 1>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Himpunan</th>\n");
      out.write("                        <th>Tanggal</th>\n");
      out.write("                        <th>Nama Acara</th>\n");
      out.write("                        <th>Tempat</th>\n");
      out.write("                        <th>P.J</th>\n");
      out.write("                        <th>No. Telp</th>\n");
      out.write("                    </tr>\n");
      out.write("            ");

                 
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
            
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div></center>\n");
      out.write("            </article>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
