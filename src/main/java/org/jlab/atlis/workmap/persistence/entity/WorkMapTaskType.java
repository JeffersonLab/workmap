package org.jlab.atlis.workmap.persistence.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @author ryans
 */
@Entity
@Table(
    name = "WORK_MAP_TASK_TYPE",
    schema = "WORKMAP_OWNER",
    uniqueConstraints = {@UniqueConstraint(columnNames = {"TYPE_NAME"})})
@NamedQueries({
  @NamedQuery(name = "WorkMapTaskType.findAll", query = "SELECT w FROM WorkMapTaskType w"),
  @NamedQuery(
      name = "WorkMapTaskType.findAllOrdered",
      query = "SELECT w FROM WorkMapTaskType w order by w.orderId asc"),
  @NamedQuery(
      name = "WorkMapTaskType.findByWorkMapTaskTypeId",
      query = "SELECT w FROM WorkMapTaskType w WHERE w.workMapTaskTypeId = :workMapTaskTypeId"),
  @NamedQuery(
      name = "WorkMapTaskType.findByTypeName",
      query = "SELECT w FROM WorkMapTaskType w WHERE w.typeName = :typeName"),
  @NamedQuery(
      name = "WorkMapTaskType.findByCssClassName",
      query = "SELECT w FROM WorkMapTaskType w WHERE w.cssClassName = :cssClassName")
})
public class WorkMapTaskType implements Serializable {
  private static final long serialVersionUID = 1L;

  // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these
  // annotations to enforce field validation
  @Id
  @SequenceGenerator(
      name = "WorkMapTaskTypeId",
      sequenceName = "WORK_MAP_TASK_TYPE_ID",
      allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WorkMapTaskTypeId")
  @Basic(optional = false)
  @NotNull
  @Column(name = "WORK_MAP_TASK_TYPE_ID", nullable = false, precision = 32, scale = 0)
  private BigDecimal workMapTaskTypeId;

  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 32)
  @Column(name = "TYPE_NAME", nullable = false, length = 32)
  private String typeName;

  @NotNull
  @Basic(optional = false)
  @Column(name = "ORDER_ID", nullable = false, precision = 32, scale = 0)
  private BigDecimal orderId;

  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 32)
  @Column(name = "CSS_CLASS_NAME", nullable = false, length = 32)
  private String cssClassName;

  @OneToMany(mappedBy = "workMapTaskTypeId")
  private List<WorkMapTask> workMapTaskList;

  public WorkMapTaskType() {}

  public WorkMapTaskType(BigDecimal workMapTaskTypeId) {
    this.workMapTaskTypeId = workMapTaskTypeId;
  }

  public WorkMapTaskType(BigDecimal workMapTaskTypeId, String typeName, String cssClassName) {
    this.workMapTaskTypeId = workMapTaskTypeId;
    this.typeName = typeName;
    this.cssClassName = cssClassName;
  }

  public BigDecimal getOrderId() {
    return orderId;
  }

  public void setOrderId(BigDecimal orderId) {
    this.orderId = orderId;
  }

  public BigDecimal getWorkMapTaskTypeId() {
    return workMapTaskTypeId;
  }

  public void setWorkMapTaskTypeId(BigDecimal workMapTaskTypeId) {
    this.workMapTaskTypeId = workMapTaskTypeId;
  }

  public String getTypeName() {
    return typeName;
  }

  public void setTypeName(String typeName) {
    this.typeName = typeName;
  }

  public String getCssClassName() {
    return cssClassName;
  }

  public void setCssClassName(String cssClassName) {
    this.cssClassName = cssClassName;
  }

  public List<WorkMapTask> getWorkMapTaskList() {
    return workMapTaskList;
  }

  public void setWorkMapTaskList(List<WorkMapTask> workMapTaskList) {
    this.workMapTaskList = workMapTaskList;
  }

  @Override
  public int hashCode() {
    int hash = 0;
    hash += (workMapTaskTypeId != null ? workMapTaskTypeId.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof WorkMapTaskType)) {
      return false;
    }
    WorkMapTaskType other = (WorkMapTaskType) object;
    return (this.workMapTaskTypeId != null || other.workMapTaskTypeId == null)
        && (this.workMapTaskTypeId == null
            || this.workMapTaskTypeId.equals(other.workMapTaskTypeId));
  }

  @Override
  public String toString() {
    return "org.jlab.atlis.workmap.persistence.entity.WorkMapTaskType[ workMapTaskTypeId="
        + workMapTaskTypeId
        + " ]";
  }
}
