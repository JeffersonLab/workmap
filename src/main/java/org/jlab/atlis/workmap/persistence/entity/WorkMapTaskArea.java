package org.jlab.atlis.workmap.persistence.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
 *
 * @author ryans
 */
@Entity
@Table(name = "WORK_MAP_TASK_AREA", schema = "ATLIS_OWNER", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"AREA_NAME"})})
@NamedQueries({
    @NamedQuery(name = "WorkMapTaskArea.findAll", query = "SELECT w FROM WorkMapTaskArea w"),
    @NamedQuery(name = "WorkMapTaskArea.findByWorkMapTaskAreaId", query = "SELECT w FROM WorkMapTaskArea w WHERE w.workMapTaskAreaId = :workMapTaskAreaId"),
    @NamedQuery(name = "WorkMapTaskArea.findByAreaName", query = "SELECT w FROM WorkMapTaskArea w WHERE w.areaName = :areaName")})
public class WorkMapTaskArea implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Id
    @SequenceGenerator(name = "WorkMapTaskAreaId", sequenceName = "WORK_MAP_TASK_AREA_ID", allocationSize = 1)
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

    public WorkMapTaskArea() {
    }

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
        if (!(object instanceof WorkMapTaskArea other)) {
            return false;
        }
        return (this.workMapTaskAreaId != null || other.workMapTaskAreaId == null) && (this.workMapTaskAreaId == null || this.workMapTaskAreaId.equals(other.workMapTaskAreaId));
    }

    @Override
    public String toString() {
        return "org.jlab.atlis.workmap.persistence.entity.WorkMapTaskArea[ workMapTaskAreaId=" + workMapTaskAreaId + " ]";
    }
    
}
