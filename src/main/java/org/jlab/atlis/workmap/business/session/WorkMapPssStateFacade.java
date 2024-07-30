package org.jlab.atlis.workmap.business.session;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.security.PermitAll;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.jlab.atlis.workmap.persistence.entity.WorkMapPssState;

/**
 * @author ryans
 */
@Stateless
public class WorkMapPssStateFacade extends AbstractFacade<WorkMapPssState> {
  @PersistenceContext(unitName = "workmapPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public WorkMapPssStateFacade() {
    super(WorkMapPssState.class);
  }

  @PermitAll
  public Map<String, WorkMapPssState> createMap(List<WorkMapPssState> pssStates) {
    Map<String, WorkMapPssState> map = new HashMap<String, WorkMapPssState>();

    for (WorkMapPssState state : pssStates) {
      map.put(state.getStateName(), state);
    }

    return map;
  }

  @PermitAll
  public List<WorkMapPssState> findAllOrdered() {
    TypedQuery<WorkMapPssState> q =
        em.createNamedQuery("WorkMapPssState.findAllOrdered", WorkMapPssState.class);

    return q.getResultList();
  }
}
