package org.jlab.atlis.workmap.persistence.entity;

import jakarta.persistence.Basic;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
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
    name = "WORK_MAP_TASK_AREA",
    schema = "WORKMAP_OWNER",
    uniqueConstraints = {@UniqueConstraint(columnNames = {"AREA_NAME"})})
@NamedQueries({
  @NamedQuery(name = "WorkMapTaskArea.findAll", query = "SELECT w FROM WorkMapTaskArea w"),
  @NamedQuery(
      name = "WorkMapTaskArea.findByWorkMapTaskAreaId",
      query = "SELECT w FROM WorkMapTaskArea w WHERE w.workMapTaskAreaId = :workMapTaskAreaId"),
  @NamedQuery(
      name = "WorkMapTaskArea.findByAreaName",
      query = "SELECT w FROM WorkMapTaskArea w WHERE w.areaName = :areaName")
})
public class WorkMapTaskArea implements Serializable {
  private static final long serialVersionUID = 1L;

  // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these
  // annotations to enforce field validation
  @Id
  @SequenceGenerator(
      name = "WorkMapTaskAreaId",
      sequenceName = "WORK_MAP_TASK_AREA_ID",
      allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WorkMapTaskAreaId")
  @Basic(optional = false)
  @NotNull
  @Column(name = "WORK_MAP_TASK_AREA_ID", nullable = false, precision = 32, scale = 0)
  private BigDecimal workMapTaskAreaId;

  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 32)
  @Column(name = "AREA_NAME", nullable = false, length = 32)
  private String areaName;

  @Column(name = "ICON_ONLY_YN", length = 1)
  @NotNull
  @Size(min = 1, max = 1)
  private String iconOnlyYn;

  @OneToMany(cascade = CascadeType.ALL, mappedBy = "workMapTaskAreaId")
  private List<WorkMapTask> workMapTaskList;

  public WorkMapTaskArea() {}

  public WorkMapTaskArea(BigDecimal workMapTaskAreaId) {
    this.workMapTaskAreaId = workMapTaskAreaId;
  }

  public WorkMapTaskArea(BigDecimal workMapTaskAreaId, String areaName) {
    this.workMapTaskAreaId = workMapTaskAreaId;
    this.areaName = areaName;
  }

  public BigDecimal getWorkMapTaskAreaId() {
    return workMapTaskAreaId;
  }

  public void setWorkMapTaskAreaId(BigDecimal workMapTaskAreaId) {
    this.workMapTaskAreaId = workMapTaskAreaId;
  }

  public String getAreaName() {
    return areaName;
  }

  public void setAreaName(String areaName) {
    this.areaName = areaName;
  }

  public boolean isIconOnly() {
    return "Y".equals(iconOnlyYn);
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
    hash += (workMapTaskAreaId != null ? workMapTaskAreaId.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof WorkMapTaskArea)) {
      return false;
    }
    WorkMapTaskArea other = (WorkMapTaskArea) object;
    return (this.workMapTaskAreaId != null || other.workMapTaskAreaId == null)
        && (this.workMapTaskAreaId == null
            || this.workMapTaskAreaId.equals(other.workMapTaskAreaId));
  }

  @Override
  public String toString() {
    return "org.jlab.atlis.workmap.persistence.entity.WorkMapTaskArea[ workMapTaskAreaId="
        + workMapTaskAreaId
        + " ]";
  }
}
