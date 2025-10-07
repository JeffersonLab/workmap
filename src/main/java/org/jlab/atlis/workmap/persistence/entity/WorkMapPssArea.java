package org.jlab.atlis.workmap.persistence.entity;

import jakarta.persistence.Basic;
import jakarta.persistence.CascadeType;
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
    name = "WORK_MAP_PSS_AREA",
    schema = "WORKMAP_OWNER",
    uniqueConstraints = {@UniqueConstraint(columnNames = {"AREA_NAME"})})
@NamedQueries({
  @NamedQuery(name = "WorkMapPssArea.findAll", query = "SELECT w FROM WorkMapPssArea w"),
  @NamedQuery(
      name = "WorkMapPssArea.findByWorkMapPssAreaId",
      query = "SELECT w FROM WorkMapPssArea w WHERE w.workMapPssAreaId = :workMapPssAreaId"),
  @NamedQuery(
      name = "WorkMapPssArea.findByAreaName",
      query = "SELECT w FROM WorkMapPssArea w WHERE w.areaName = :areaName")
})
public class WorkMapPssArea implements Serializable {
  private static final long serialVersionUID = 1L;

  // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these
  // annotations to enforce field validation
  @Id
  @SequenceGenerator(
      name = "WorkMapPssAreaId",
      sequenceName = "WORK_MAP_PSS_AREA_ID",
      allocationSize = 1)
  @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WorkMapPssAreaId")
  @Basic(optional = false)
  @NotNull
  @Column(name = "WORK_MAP_PSS_AREA_ID", nullable = false, precision = 32, scale = 0)
  private BigDecimal workMapPssAreaId;

  @Basic(optional = false)
  @NotNull
  @Size(min = 1, max = 32)
  @Column(name = "AREA_NAME", nullable = false, length = 32)
  private String areaName;

  @OneToMany(cascade = CascadeType.ALL, mappedBy = "workMapPssAreaId", fetch = FetchType.LAZY)
  private List<WorkMapPss> workMapPssList;

  public WorkMapPssArea() {}

  public WorkMapPssArea(BigDecimal workMapPssAreaId) {
    this.workMapPssAreaId = workMapPssAreaId;
  }

  public WorkMapPssArea(BigDecimal workMapPssAreaId, String areaName) {
    this.workMapPssAreaId = workMapPssAreaId;
    this.areaName = areaName;
  }

  public BigDecimal getWorkMapPssAreaId() {
    return workMapPssAreaId;
  }

  public void setWorkMapPssAreaId(BigDecimal workMapPssAreaId) {
    this.workMapPssAreaId = workMapPssAreaId;
  }

  public String getAreaName() {
    return areaName;
  }

  public void setAreaName(String areaName) {
    this.areaName = areaName;
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
    hash += (workMapPssAreaId != null ? workMapPssAreaId.hashCode() : 0);
    return hash;
  }

  @Override
  public boolean equals(Object object) {
    // TODO: Warning - this method won't work in the case the id fields are not set
    if (!(object instanceof WorkMapPssArea)) {
      return false;
    }
    WorkMapPssArea other = (WorkMapPssArea) object;
    return (this.workMapPssAreaId != null || other.workMapPssAreaId == null)
        && (this.workMapPssAreaId == null || this.workMapPssAreaId.equals(other.workMapPssAreaId));
  }

  @Override
  public String toString() {
    return "org.jlab.atlis.workmap.persistence.entity.WorkMapPssArea[ workMapPssAreaId="
        + workMapPssAreaId
        + " ]";
  }
}
