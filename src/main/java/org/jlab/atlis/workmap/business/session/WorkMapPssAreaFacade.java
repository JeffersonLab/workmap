package org.jlab.atlis.workmap.business.session;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import org.jlab.atlis.workmap.persistence.entity.WorkMapPssArea;

/**
 * @author ryans
 */
@Stateless
public class WorkMapPssAreaFacade extends AbstractFacade<WorkMapPssArea> {
  @PersistenceContext(unitName = "workmapPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public WorkMapPssAreaFacade() {
    super(WorkMapPssArea.class);
  }
}
