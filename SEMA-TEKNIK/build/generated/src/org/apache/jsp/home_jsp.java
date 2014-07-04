package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Himpunan Teknk UP</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        body {text-align: center; border-radius: 10px; margin: 3% 30%;background-image: url('images/bg.jpg');}\n");
      out.write("        img {width:20%; height: 20%; margin: 2%;}\n");
      out.write("        article{background: white; padding: 5%; border-radius: 5px;}\n");
      out.write("        li{display: inline;}\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        ");

        if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        
      out.write("<article>\n");
      out.write("            You are not logged in<br/>\n");
      out.write("            <a href=\"index.jsp\">Please Login</a>\n");
      out.write("        </article>\n");
      out.write("        ");
} else {
        
      out.write("\n");
      out.write("        <article>\n");
      out.write("        <h2>Welcome ");
      out.print(session.getAttribute("userid"));
      out.write("</h2>\n");
      out.write("        <hr />\n");
      out.write("        <h3>Dashboard</h3>\n");
      out.write("        <ul>    \n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=sema\"><img src=\"images/sema.jpeg\"></a></li>\n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=informatika\"><img src=\"images/it.jpg\"></a></li>\n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=arsitek\"><img src=\"images/arsi.jpeg\"></a></li>\n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=sipil\"><img src=\"images/sipil.jpg\"></a></li><br />\n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=elektro\"><img src=\"images/elektro.jpg\"></a></li>\n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=d3\"><img src=\"images/d3.jpg\"></a></li>\n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=industri\"><img src=\"images/imti.jpg\"></a></li>\n");
      out.write("            <li><a href=\"data-mahasiswa.jsp?jur=mesin\"><img src=\"images/\"></a>HMM</li><br />\n");
      out.write("            <li><a href=\"agenda.jsp\"><img src=\"images/agenda.jpg\"></a></li>\n");
      out.write("        </ul>\n");
      out.write("        <button><a href='logout.jsp'>Logout</a></button><br />\n");
      out.write("        ");

        }
        
      out.write("\n");
      out.write("        </article>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
