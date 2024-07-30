package org.jlab.atlis.workmap.presentation.controller;

import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jlab.atlis.workmap.presentation.util.WorkmapUtil;

@WebServlet(
    name = "ViewWorkMap",
    urlPatterns = {"/view-work-map"})
public class ViewWorkMap extends HttpServlet {

  @Inject private WorkmapUtil workmapUtil;

  /**
   * Handles the HTTP <code>GET</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    workmapUtil.doGet(getServletContext(), request, response, false);
  }
}
