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
import java.util.List;
import org.jlab.atlis.workmap.business.session.WorkMapFacade;
import org.jlab.atlis.workmap.persistence.entity.WorkMap;
import org.jlab.atlis.workmap.persistence.entity.WorkMapPss;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTask;
import org.jlab.atlis.workmap.presentation.util.WorkmapUtil;

@WebServlet(
    name = "EditWorkMap",
    urlPatterns = {"/edit-work-map"})
public class EditWorkMap extends HttpServlet {

  @EJB private WorkMapFacade mapFacade;
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
    workmapUtil.doGet(getServletContext(), request, response, true);
  }

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
    Date yearMonthDay = workmapUtil.convertValidateYearMonthDay(request);
    WorkMap map = workmapUtil.convertAndValidateWorkMap(request, yearMonthDay);
    List<WorkMapTask> tasks = workmapUtil.convertAndValidateTasks(request, map);
    List<WorkMapPss> pss = workmapUtil.convertAndValidatePss(request, map);

    /*System.out.println("Submitted: ");

    for(WorkMapTask task: tasks) {
        System.out.println(task);
    }*/

    map.setWorkMapTaskList(tasks);
    map.setWorkMapPssList(pss);

    mapFacade.save(map);

    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");

    response.sendRedirect(
        response.encodeRedirectURL(
            request.getContextPath()
                + "/view-work-map?yearMonthDay="
                + format.format(yearMonthDay)));
  }
}
