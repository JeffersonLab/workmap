package org.jlab.atlis.workmap.business.session;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.jlab.atlis.workmap.persistence.entity.WorkMapTaskArea;

/**
 * @author ryans
 */
@Stateless
public class WorkMapTaskAreaFacade extends AbstractFacade<WorkMapTaskArea> {
  @PersistenceContext(unitName = "workmapPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public WorkMapTaskAreaFacade() {
    super(WorkMapTaskArea.class);
  }
}
