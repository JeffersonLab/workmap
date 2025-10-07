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
import org.jlab.atlis.workmap.persistence.entity.WorkMapPss;

/**
 * @author ryans
 */
@Stateless
@DeclareRoles("workmap-admin")
public class WorkMapPssFacade extends AbstractFacade<WorkMapPss> {
  @PersistenceContext(unitName = "workmapPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public WorkMapPssFacade() {
    super(WorkMapPss.class);
  }

  @PermitAll
  public Map<String, WorkMapPss> createMap(List<WorkMapPss> pss) {
    Map<String, WorkMapPss> map = new HashMap<String, WorkMapPss>();

    if (pss != null) {
      for (WorkMapPss p : pss) {
        map.put(p.getWorkMapPssAreaId().getAreaName(), p);
      }
    }

    return map;
  }

  @RolesAllowed("workmap-admin")
  public int deleteByWorkMapId(BigDecimal workMapId) {
    Query q = em.createNamedQuery("WorkMapPss.deleteByWorkMapId");

    q.setParameter("workMapId", workMapId);

    return q.executeUpdate();
  }

  @PermitAll
  public List<WorkMapPss> findByWorkMapIdEager(BigDecimal workMapId) {
    TypedQuery<WorkMapPss> q =
        em.createNamedQuery("WorkMapPss.findByWorkMapIdEager", WorkMapPss.class);

    q.setParameter("workMapId", workMapId);

    return q.getResultList();
  }
}
