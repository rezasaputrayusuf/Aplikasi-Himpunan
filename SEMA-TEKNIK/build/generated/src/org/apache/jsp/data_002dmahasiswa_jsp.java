package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class data_002dmahasiswa_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Data Mahasiswa</title>\n");
      out.write("        <style>\n");
      out.write("        body {text-align: center; border-radius: 10px; margin: 3% 30%;background-image: url('images/bg.jpg');}\n");
      out.write("        img {width:20%; height: 20%; margin: 2%;}\n");
      out.write("        article{background: white; padding: 5%; border-radius: 5px;}\n");
      out.write("        li{display: inline;}\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <article><a href=\"home.jsp\"><button style=\"float: left\">Kembali</button></a>\n");
      out.write("        <div id=\"con\"><h2>Data Mahasiswa</h2> \n");
      out.write("            <hr />\n");
      out.write("            <center>\n");
      out.write("                <table border = 1>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>NIM</th>\n");
      out.write("                        <th>Nama</th>\n");
      out.write("                        <th>Jurusan</th>\n");
      out.write("                        <th>Jabatan</th>\n");
      out.write("                        <th>T.A</th>\n");
      out.write("                        <th>Operasi</th>\n");
      out.write("                    </tr>\n");
      out.write("            ");

                
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
            
      out.write("\n");
      out.write("            </table>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"con\"><h2>Data Agenda Acara</h2>\n");
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

               if(jur!=null){
                    rs = st.executeQuery("select * from agenda,daftar where id_himpunan='"+jur+"'");
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
            
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("       </article>\n");
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
