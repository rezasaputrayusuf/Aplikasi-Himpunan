package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class editmhs_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    String nim          = request.getParameter("nim");
    String nama         = request.getParameter("nama");
    String id_jurusan   = request.getParameter("id_jurusan");
    String id_jabatan   = request.getParameter("id_jabatan");
    String thn_ang      = request.getParameter("thn_ang");

    out.print("<div id='con'><h2>Daftar Mahasiswa</h2>");
    out.print("<form action='prosesedit.jsp' method='post'>");
    out.print("<p>");
    out.print("<label>NIM</label>");
    out.print("<input type='text' name='nim' value="+nim+">");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Nama</label>");
    out.print("<input type='text' name='nama' value='"+nama+"'>");
    out.print("</p>");
    out.print("<p>");
    out.print("<label>Jurusan</label>");
    out.print("<input type='text' name='id_jurusan' value='"+id_jurusan+"'>");
    out.print("</p>");
    out.print("<label>Jabatan</label>");
    out.print("<input type='text' name='id_jbatan' value='"+id_jabatan+"'>");
    out.print("</p>");
    out.print("<label>T.A</label>");
    out.print("<input type='text' name='thn_ang' value='"+thn_ang+"'>");
    out.print("</p>");
    out.print("<input type='submit' name='submit' Value='Add'/>");
    out.print("<input type='submit' name='submit' Value='Edit'/>");
    out.print("<input type='submit' name='submit' Value='Delete'/>");
    out.print("</form>");
    out.print("<a href='home.jsp'><input type='submit' name='submit' Value='Exit' ></a>");
    out.print("</div>");

      out.write('\n');
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
