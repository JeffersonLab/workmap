package org.jlab.atlis.workmap.presentation.controller;

import jakarta.ejb.EJB;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.jlab.atlis.workmap.business.session.WorkMapFacade;
import org.jlab.atlis.workmap.presentation.util.WorkmapUtil;

@WebServlet(
    name = "CopyWorkMap",
    urlPatterns = {"/copy-work-map"})
public class CopyWorkMap extends HttpServlet {

  @EJB private WorkMapFacade mapFacade;
  @Inject private WorkmapUtil workmapUtil;

  /**
   * Handles the HTTP <code>POST</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    Date from = workmapUtil.convertValidateYearMonthDay(request, "from");
    Date to = workmapUtil.convertValidateYearMonthDay(request, "to");

    mapFacade.copy(from, to);

    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

    response.sendRedirect(
        response.encodeRedirectURL(
            request.getContextPath() + "/view-work-map?yearMonthDay=" + format.format(to)));
  }
}
