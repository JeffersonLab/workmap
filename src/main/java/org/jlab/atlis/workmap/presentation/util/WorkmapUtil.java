package org.jlab.atlis.workmap.presentation.util;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jlab.atlis.workmap.business.session.WorkMapFacade;
import org.jlab.atlis.workmap.business.session.WorkMapPssAreaFacade;
import org.jlab.atlis.workmap.business.session.WorkMapPssFacade;
import org.jlab.atlis.workmap.business.session.WorkMapPssStateFacade;
import org.jlab.atlis.workmap.business.session.WorkMapTaskAreaFacade;
import org.jlab.atlis.workmap.business.session.WorkMapTaskFacade;
import org.jlab.atlis.workmap.business.session.WorkMapTaskTypeFacade;
import org.jlab.atlis.workmap.business.utility.TimeHelper;
import org.jlab.atlis.workmap.persistence.entity.WorkMap;
import org.jlab.atlis.workmap.persistence.entity.WorkMapPss;
import org.jlab.atlis.workmap.persistence.entity.WorkMapPssArea;
import org.jlab.atlis.workmap.persistence.entity.WorkMapPssState;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTask;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTaskArea;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTaskType;
import org.jlab.atlis.workmap.presentation.exception.WorkMapException;

/**
 *
 * @author ryans
 */
@Named
@RequestScoped
public class WorkmapUtil {

    @Inject
    private WorkMapFacade mapFacade;
    @Inject
    private WorkMapTaskAreaFacade taskAreaFacade;
    @Inject
    private WorkMapTaskTypeFacade taskTypeFacade;
    @Inject
    private WorkMapPssAreaFacade pssAreaFacade;
    @Inject
    private WorkMapPssStateFacade pssStateFacade;
    @Inject
    private WorkMapTaskFacade taskFacade;
    @Inject
    private WorkMapPssFacade pssFacade;

    public Date convertValidateYearMonthDay(HttpServletRequest request) throws WorkMapException {
        return convertValidateYearMonthDay(request, "yearMonthDay");
    }

    public Date convertValidateYearMonthDay(HttpServletRequest request, String name) throws WorkMapException {
        String yearMonthDayParam = request.getParameter(name);

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        format.setLenient(false);

        Date yearMonthDay = null;

        if (yearMonthDayParam == null || yearMonthDayParam.isEmpty()) {
            // Default is current day month and year (with zero hour/minute/sec)
            yearMonthDay = TimeHelper.getCurrentYearMonthDay();
        } else {
            try {
                yearMonthDay = format.parse(yearMonthDayParam);
            } catch (ParseException e) {
                throw new WorkMapException("Day must be in the format yyyy-mm-dd");
            }
        }

        return yearMonthDay;
    }

    public List<WorkMapTask> convertAndValidateTasks(HttpServletRequest request, WorkMap map) {

        List<WorkMapTask> tasks = new ArrayList<WorkMapTask>();

        List<WorkMapTaskArea> taskAreas = taskAreaFacade.findAll();
        List<WorkMapTaskType> taskTypes = taskTypeFacade.findAll();
        Map<String, WorkMapTaskType> typeMap = taskTypeFacade.createMap(taskTypes);

        for (WorkMapTaskArea area : taskAreas) {
            String symbol = request.getParameter(area.getAreaName() + "-symbol");
            String text = request.getParameter(area.getAreaName() + "-text");
            String upstairs = request.getParameter(area.getAreaName() + "-upstairs");

            boolean upstairsBoolean = "Y".equals(upstairs);

            //System.out.println("symbol: " + symbol);
            //System.out.println("text: " + text);
            if ((symbol != null && !symbol.isEmpty()) || (text != null && !text.isEmpty())) {
                WorkMapTask task = new WorkMapTask();
                task.setWorkMapTaskAreaId(area);
                task.setWorkMapId(map);
                task.setWorkMapTaskTypeId(typeMap.get(symbol));
                task.setMessage(text);
                task.setUpstairs(upstairsBoolean);
                tasks.add(task);
            }
        }

        return tasks;
    }

    public WorkMap convertAndValidateWorkMap(HttpServletRequest request, Date yearMonthDay) {
        WorkMap map = null;
        String note = request.getParameter("note");

        map = mapFacade.findByYearMonthDayEager(yearMonthDay);

        if (map == null) {
            map = new WorkMap();
        }

        map.setYearMonthDay(yearMonthDay);
        map.setNote(note);
        map.setLastModified(new Date());

        return map;
    }

    public List<WorkMapPss> convertAndValidatePss(HttpServletRequest request, WorkMap map) {
        List<WorkMapPss> pss = new ArrayList<WorkMapPss>();

        List<WorkMapPssArea> pssAreas = pssAreaFacade.findAll();
        List<WorkMapPssState> pssStates = pssStateFacade.findAll();
        Map<String, WorkMapPssState> stateMap = pssStateFacade.createMap(pssStates);

        for (WorkMapPssArea area : pssAreas) {
            String line = request.getParameter(area.getAreaName() + "-line");

            //System.out.println("line: " + line);
            if (line != null && !line.isEmpty()) {
                WorkMapPss p = new WorkMapPss();
                p.setWorkMapPssAreaId(area);
                p.setWorkMapId(map);
                p.setWorkMapPssStateId(stateMap.get(line));
                pss.add(p);
            }
        }

        return pss;
    }

    public void doGet(ServletContext context, HttpServletRequest request, HttpServletResponse response, boolean editable)
            throws ServletException, IOException {

        Date yearMonthDay = convertValidateYearMonthDay(request);

        WorkMap map = mapFacade.findByYearMonthDayEager(yearMonthDay);

        if (map == null) {
            map = new WorkMap();
            map.setYearMonthDay(yearMonthDay);
        }

        List<WorkMapTask> tasks = map.getWorkMapTaskList();
        Map<String, WorkMapTask> taskMap = taskFacade.createMap(tasks);
        List<WorkMapTaskArea> taskAreas = taskAreaFacade.findAll();
        List<WorkMapTaskType> taskTypes = taskTypeFacade.findAllOrdered();

        List<WorkMapPss> pss = map.getWorkMapPssList();
        Map<String, WorkMapPss> pssMap = pssFacade.createMap(pss);
        List<WorkMapPssArea> pssAreas = pssAreaFacade.findAll();
        List<WorkMapPssState> pssStates = pssStateFacade.findAllOrdered();

        Date previous = TimeHelper.getPreviousYearMonthDay(yearMonthDay);
        Date next = TimeHelper.getNextYearMonthDay(yearMonthDay);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String previousYearMonthDayURL = "view-work-map?yearMonthDay=" + format.format(previous);
        String nextYearMonthDayURL = "view-work-map?yearMonthDay=" + format.format(next);

        String absContextURL = getBaseURL(request);

        request.setAttribute("absContextURL", absContextURL);
        request.setAttribute("editable", editable);
        request.setAttribute("yearMonthDay", yearMonthDay);
        request.setAttribute("previousURL", previousYearMonthDayURL);
        request.setAttribute("nextURL", nextYearMonthDayURL);
        request.setAttribute("taskMap", taskMap);
        request.setAttribute("taskAreas", taskAreas);
        request.setAttribute("taskTypes", taskTypes);
        request.setAttribute("pssMap", pssMap);
        request.setAttribute("pssAreas", pssAreas);
        request.setAttribute("pssStates", pssStates);
        request.setAttribute("note", map.getNote());
        request.setAttribute("lastModified", map.getLastModified());

        context.getRequestDispatcher("/WEB-INF/views/work-map.jsp").forward(request, response);
    }

    public String getBaseURL(HttpServletRequest request) {
        String scheme = request.getScheme();

        String host = System.getenv("javaProxyHost");

        if (host == null || host.isEmpty()) {
            host = request.getServerName();
        }

        String portWithColon = null;

        if (scheme.equals("http")) {
            String port = System.getenv("javaProxyPort");

            if (port == null || port.isEmpty()) {
                port = String.valueOf(request.getServerPort());
            }

            if (port.equals("80")) {
                portWithColon = "";
            } else {
                portWithColon = ":" + port;
            }
        } else { // https
            String port = System.getenv("javaProxySecurePort");

            if (port == null || port.isEmpty()) {
                port = String.valueOf(request.getServerPort());
            }

            if (port.equals("443")) {
                portWithColon = "";
            } else {
                portWithColon = ":" + port;
            }
        }

        return scheme + "://" + host + portWithColon + request.getContextPath();
    }
}
