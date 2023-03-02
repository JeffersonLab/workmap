package org.jlab.atlis.workmap.business.session;

import java.util.Date;
import java.util.List;
import javax.annotation.security.DeclareRoles;
import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.jlab.atlis.workmap.persistence.entity.WorkMap;

/**
 *
 * @author ryans
 */
@Stateless
@DeclareRoles({"oability", "pd"})
public class WorkMapFacade extends AbstractFacade<WorkMap> {

    @PersistenceContext(unitName = "workmapPU")
    private EntityManager em;
    @EJB
    private WorkMapTaskFacade taskFacade;
    @EJB
    private WorkMapPssFacade pssFacade;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public WorkMapFacade() {
        super(WorkMap.class);
    }

    @PermitAll    
    public WorkMap findByYearMonthDay(Date yearMonthDay) {
        TypedQuery<WorkMap> q = em.createNamedQuery("WorkMap.findByYearMonthDay", WorkMap.class);

        q.setParameter("yearMonthDay", yearMonthDay);

        List<WorkMap> results = q.getResultList();

        WorkMap map = (results == null || results.isEmpty()) ? null : results.get(0);

        return map;
    }

    @PermitAll      
    public WorkMap findByYearMonthDayEager(Date yearMonthDay) {
        WorkMap map = findByYearMonthDay(yearMonthDay);

        if (map != null) {
            //map.getWorkMapTaskList().size();
            //map.getWorkMapPssList().size();
            em.detach(map);
            map.setWorkMapTaskList(taskFacade.findByWorkMapIdEager(map.getWorkMapId()));
            map.setWorkMapPssList(pssFacade.findByWorkMapIdEager(map.getWorkMapId()));
        }

        return map;
    }

    private void clearLists(WorkMap map) {
        if (map.getWorkMapId() != null) {
            taskFacade.deleteByWorkMapId(map.getWorkMapId());
            pssFacade.deleteByWorkMapId(map.getWorkMapId());
            em.flush();
        }
    }

    @RolesAllowed({"oability", "pd"})
    public void save(WorkMap map) {
        clearLists(map);
        edit(map);
    }

    @RolesAllowed({"oability", "pd"})
    public void copy(Date from, Date to) {
        WorkMap fromMap = findByYearMonthDayEager(from);
        WorkMap toMap = findByYearMonthDay(to);

        if (fromMap == null) {
            if (toMap == null) {
                toMap = new WorkMap();
                toMap.setYearMonthDay(to);
                toMap.setLastModified(new Date());
                em.persist(toMap);
            } else {
                toMap.setLastModified(new Date());
                toMap.setNote(null);
                clearLists(toMap);
            }
        } else {
            if (toMap == null) {
                toMap = new WorkMap();
                toMap.setYearMonthDay(to);
                toMap.setLastModified(new Date());
                toMap.setNote(fromMap.getNote());
                em.persist(toMap); // Make it managed and persistent
            } else {
                toMap.setLastModified(new Date());
                toMap.setNote(fromMap.getNote());
                clearLists(toMap);
            }

            toMap.setWorkMapTaskList(fromMap.copyWorkMapTaskList(toMap));
            toMap.setWorkMapPssList(fromMap.copyWorkMapPssList(toMap));
        }
    }
}
