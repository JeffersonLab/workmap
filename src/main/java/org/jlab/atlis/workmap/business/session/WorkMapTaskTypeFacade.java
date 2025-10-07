package org.jlab.atlis.workmap.business.session;

import jakarta.annotation.security.PermitAll;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTaskType;

/**
 * @author ryans
 */
@Stateless
public class WorkMapTaskTypeFacade extends AbstractFacade<WorkMapTaskType> {
  @PersistenceContext(unitName = "workmapPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public WorkMapTaskTypeFacade() {
    super(WorkMapTaskType.class);
  }

  @PermitAll
  public Map<String, WorkMapTaskType> createMap(List<WorkMapTaskType> types) {
    Map<String, WorkMapTaskType> map = new HashMap<String, WorkMapTaskType>();

    for (WorkMapTaskType type : types) {
      map.put(type.getTypeName(), type);
    }

    return map;
  }

  @PermitAll
  public List<WorkMapTaskType> findAllOrdered() {
    TypedQuery<WorkMapTaskType> q =
        em.createNamedQuery("WorkMapTaskType.findAllOrdered", WorkMapTaskType.class);

    return q.getResultList();
  }
}
