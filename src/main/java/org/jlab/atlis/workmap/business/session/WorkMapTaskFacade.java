package org.jlab.atlis.workmap.business.session;

import jakarta.annotation.security.DeclareRoles;
import jakarta.annotation.security.PermitAll;
import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTask;

/**
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
  public List<WorkMapTask> findByWorkMapIdEager(BigDecimal workMapId) {
    TypedQuery<WorkMapTask> q =
        em.createNamedQuery("WorkMapTask.findByWorkMapIdEager", WorkMapTask.class);

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

  @RolesAllowed({"workmap-admin"})
  public int deleteByWorkMapId(BigDecimal workMapId) {
    Query q = em.createNamedQuery("WorkMapTask.deleteByWorkMapId");

    q.setParameter("workMapId", workMapId);

    return q.executeUpdate();
  }
}
