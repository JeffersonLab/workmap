package org.jlab.atlis.workmap.persistence.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;

/**
 *
 * @author ryans
 */
@Entity
@Table(name = "WORK_MAP_PSS", schema = "WORKMAP_OWNER", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"WORK_MAP_ID", "WORK_MAP_PSS_AREA_ID"})})
@NamedQueries({
    @NamedQuery(name = "WorkMapPss.findAll", query = "SELECT w FROM WorkMapPss w"),
    @NamedQuery(name = "WorkMapPss.deleteByWorkMapId", query = "DELETE FROM WorkMapPss w WHERE w.workMapId.workMapId = :workMapId"), 
    @NamedQuery(name = "WorkMapPss.findByWorkMapIdEager", query = "SELECT w FROM WorkMapPss w LEFT JOIN FETCH w.workMapPssStateId JOIN FETCH w.workMapPssAreaId WHERE w.workMapId.workMapId = :workMapId"),    
    @NamedQuery(name = "WorkMapPss.findByWorkMapPssId", query = "SELECT w FROM WorkMapPss w WHERE w.workMapPssId = :workMapPssId")})
public class WorkMapPss implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Id
    @SequenceGenerator(name = "WorkMapPssId", sequenceName = "WORK_MAP_PSS_ID", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WorkMapPssId")       
    @Basic(optional = false)
    @NotNull
    @Column(name = "WORK_MAP_PSS_ID", nullable = false, precision = 32, scale = 0)
    private BigDecimal workMapPssId;
    @JoinColumn(name = "WORK_MAP_PSS_STATE_ID", referencedColumnName = "WORK_MAP_PSS_STATE_ID")
    @ManyToOne(fetch = FetchType.LAZY)
    private WorkMapPssState workMapPssStateId;
    @JoinColumn(name = "WORK_MAP_PSS_AREA_ID", referencedColumnName = "WORK_MAP_PSS_AREA_ID", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private WorkMapPssArea workMapPssAreaId;
    @JoinColumn(name = "WORK_MAP_ID", referencedColumnName = "WORK_MAP_ID", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private WorkMap workMapId;

    public WorkMapPss() {
    }

    public WorkMapPss(BigDecimal workMapPssId) {
        this.workMapPssId = workMapPssId;
    }

    public BigDecimal getWorkMapPssId() {
        return workMapPssId;
    }

    public void setWorkMapPssId(BigDecimal workMapPssId) {
        this.workMapPssId = workMapPssId;
    }

    public WorkMapPssState getWorkMapPssStateId() {
        return workMapPssStateId;
    }

    public void setWorkMapPssStateId(WorkMapPssState workMapPssStateId) {
        this.workMapPssStateId = workMapPssStateId;
    }

    public WorkMapPssArea getWorkMapPssAreaId() {
        return workMapPssAreaId;
    }

    public void setWorkMapPssAreaId(WorkMapPssArea workMapPssAreaId) {
        this.workMapPssAreaId = workMapPssAreaId;
    }

    public WorkMap getWorkMapId() {
        return workMapId;
    }

    public void setWorkMapId(WorkMap workMapId) {
        this.workMapId = workMapId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (workMapPssId != null ? workMapPssId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof WorkMapPss)) {
            return false;
        }
        WorkMapPss other = (WorkMapPss)object;
        return (this.workMapPssId != null || other.workMapPssId == null) && (this.workMapPssId == null || this.workMapPssId.equals(other.workMapPssId));
    }

    @Override
    public String toString() {
        return "org.jlab.atlis.workmap.persistence.entity.WorkMapPss[ workMapPssId=" + workMapPssId + " ]";
    }

    public WorkMapPss copy(WorkMap map) {
        WorkMapPss p = new WorkMapPss();
        p.setWorkMapPssAreaId(workMapPssAreaId);
        p.setWorkMapPssStateId(workMapPssStateId);
        p.setWorkMapId(map);
        return p;
    }
    
}
