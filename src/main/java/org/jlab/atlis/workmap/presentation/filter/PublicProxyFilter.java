package org.jlab.atlis.workmap.presentation.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

/**
 * @author ryans
 */
@WebFilter(
    filterName = "PublicProxyFilter",
    urlPatterns = {"/*"},
    dispatcherTypes = {DispatcherType.REQUEST, DispatcherType.FORWARD})
public class PublicProxyFilter implements Filter {

  private static final Logger LOGGER = Logger.getLogger(PublicProxyFilter.class.getName());

  @Override
  public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
      throws IOException, ServletException {
    HttpServletRequest request = (HttpServletRequest) req;
    HttpServletResponse response = (HttpServletResponse) resp;

    boolean publicProxy =
        request.getHeader("X-Public-Proxy") != null || request.getParameter("public-proxy") != null;

    // You don't have a choice if proxy server sets this

    request.setAttribute("publicProxy", publicProxy);

    if (publicProxy) {
      request.setAttribute("cdnContextPath", "");
    } else {
      ServletContext context = request.getServletContext();
      request.setAttribute("cdnContextPath", "//" + System.getenv("CDN_SERVER"));
    }

    chain.doFilter(request, response);
  }

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {}

  @Override
  public void destroy() {}
}
