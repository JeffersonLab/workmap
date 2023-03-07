package org.jlab.atlis.workmap.business.session;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.security.DeclareRoles;
import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTask;

/**
 *
 * @author ryans
 */
@Stateless
@DeclareRoles("workmap-admin")
public class WorkMapTaskFacade extends AbstractFacade<WorkMapTask> {

    @PersistenceContext(unitName = "workmapPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public WorkMapTaskFacade() {
        super(WorkMapTask.class);
    }

    @PermitAll     
    public Collection<WorkMapTask> findByDate(Date yearMonthDay) {
        TypedQuery<WorkMapTask> q = em.createNamedQuery("WorkMapTask.findByDate", WorkMapTask.class);

        q.setParameter("yearMonthDay", yearMonthDay);

        return q.getResultList();
    }

    @PermitAll     
    public List<WorkMapTask> findByWorkMapIdEager(BigDecimal workMapId) {
        TypedQuery<WorkMapTask> q = em.createNamedQuery("WorkMapTask.findByWorkMapIdEager", WorkMapTask.class);

        q.setParameter("workMapId", workMapId);

        return q.getResultList();
    }

    @PermitAll     
    public Map<String, WorkMapTask> createMap(List<WorkMapTask> tasks) {
        Map<String, WorkMapTask> map = new HashMap<String, WorkMapTask>();


        if (tasks != null) {
            for (WorkMapTask task : tasks) {
                map.put(task.getWorkMapTaskAreaId().getAreaName(), task);
            }
        }

        return map;
    }

    @RolesAllowed({"oability", "pd"})
    public int deleteByWorkMapId(BigDecimal workMapId) {
        Query q = em.createNamedQuery("WorkMapTask.deleteByWorkMapId");
         
        q.setParameter("workMapId", workMapId);
        
        return q.executeUpdate();
    }
}
