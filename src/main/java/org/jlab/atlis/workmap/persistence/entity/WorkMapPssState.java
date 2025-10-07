package org.jlab.atlis.workmap.persistence.entity;

import jakarta.persistence.Basic;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQueries;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * @author ryans
 */
@Entity
@Table(
    name = "WORK_MAP_PSS_STATE",
    schema = "WORKMAP_OWNER",
    uniqueConstraints = {@UniqueConstraint(columnNames = {"STATE_NAME"})})
@NamedQueries({
  @NamedQuery(name = "WorkMapPssState.findAll", query = "SELECT w FROM WorkMapPssState w"),
  @NamedQuery(
      name = "WorkMapPssState.findAllOrdered",
      query = "SELECT w FROM WorkMapPssState w order by w.weight asc"),
  @NamedQuery(
      name = "WorkMapPssState.findByWorkMapPssStateId",
      query = "SELECT w FROM WorkMapPssState w WHERE w.workMapPssStateId = :workMapPssStateId"),
  @NamedQuery(
      name = "WorkMapPssState.findByStateName",
      query = "SELECT w FROM WorkMapPssState w WHERE w.stateName = :stateName"),
  @NamedQuery(
      name = "WorkMapPssState.findByCssClassName",
      query = "SELECT w FROM WorkMapPssState w WHERE w.cssClassName = :cssClassName")
})
public class WorkMapPssState implements Serializable {
  private static final long serialVersionUID = 1L;

  // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these
  // annotations to enforce field validation
  @Id
  @SequenceGenerator(
      name = "WorkMapPssStateId",
      sequenceName = "WORK_MAP_PSS_STATE_ID",
      allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WorkMapPssStateId")
  @Basic(optional = false)
  @NotNull
  @Column(name = "WORK_MAP_PSS_STATE_ID", nullable = false, precision = 32, scale = 0)
  private BigDecimal workMapPssStateId;

  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 32)
  @Column(name = "STATE_NAME", nullable = false, length = 32)
  private String stateName;

  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 32)
  @Column(name = "CSS_CLASS_NAME", nullable = false, length = 32)
  private String cssClassName;

  @Column(name = "WEIGHT", nullable = true)
  private Integer weight;

  @OneToMany(mappedBy = "workMapPssStateId", fetch = FetchType.LAZY)
  private List<WorkMapPss> workMapPssList;

  public WorkMapPssState() {}

  public WorkMapPssState(BigDecimal workMapPssStateId) {
    this.workMapPssStateId = workMapPssStateId;
  }

  public WorkMapPssState(BigDecimal workMapPssStateId, String stateName, String cssClassName) {
    this.workMapPssStateId = workMapPssStateId;
    this.stateName = stateName;
    this.cssClassName = cssClassName;
  }

  public BigDecimal getWorkMapPssStateId() {
    return workMapPssStateId;
  }

  public void setWorkMapPssStateId(BigDecimal workMapPssStateId) {
    this.workMapPssStateId = workMapPssStateId;
  }

  public String getStateName() {
    return stateName;
  }

  public void setStateName(String stateName) {
    this.stateName = stateName;
  }

  public String getCssClassName() {
    return cssClassName;
  }

  public void setCssClassName(String cssClassName) {
    this.cssClassName = cssClassName;
  }

  public List<WorkMapPss> getWorkMapPssList() {
    return workMapPssList;
  }

  public void setWorkMapPssList(List<WorkMapPss> workMapPssList) {
    this.workMapPssList = workMapPssList;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (workMapPssStateId != null ? workMapPssStateId.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof WorkMapPssState)) {
      return false;
    }
    WorkMapPssState other = (WorkMapPssState) object;
    return (this.workMapPssStateId != null || other.workMapPssStateId == null)
        && (this.workMapPssStateId == null
            || this.workMapPssStateId.equals(other.workMapPssStateId));
  }

  @Override
  public String toString() {
    return "org.jlab.atlis.workmap.persistence.entity.WorkMapPssState[ workMapPssStateId="
        + workMapPssStateId
        + " ]";
  }
}
