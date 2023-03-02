package org.jlab.atlis.workmap.persistence.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author ryans
 */
@Entity
@Table(name = "WORK_MAP", schema = "ATLIS_OWNER", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"YEAR_MONTH_DAY"})})
@NamedQueries({
    @NamedQuery(name = "WorkMap.findAll", query = "SELECT w FROM WorkMap w"),
    @NamedQuery(name = "WorkMap.findByWorkMapId", query = "SELECT w FROM WorkMap w WHERE w.workMapId = :workMapId"),
    @NamedQuery(name = "WorkMap.findByYearMonthDay", query = "SELECT w FROM WorkMap w WHERE w.yearMonthDay = :yearMonthDay"),
    @NamedQuery(name = "WorkMap.findByNote", query = "SELECT w FROM WorkMap w WHERE w.note = :note"),
    @NamedQuery(name = "WorkMap.findByLastModified", query = "SELECT w FROM WorkMap w WHERE w.lastModified = :lastModified")})
public class WorkMap implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Id
    @SequenceGenerator(name = "WorkMapId", sequenceName = "WORK_MAP_ID", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WorkMapId")    
    @Basic(optional = false)
    @NotNull
    @Column(name = "WORK_MAP_ID", nullable = false, precision = 32, scale = 0)
    private BigDecimal workMapId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "YEAR_MONTH_DAY", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date yearMonthDay;
    @Size(max = 256)
    @Column(name = "NOTE", length = 256)
    private String note;
    @Basic(optional = false)
    @NotNull
    @Column(name = "LAST_MODIFIED", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModified;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "workMapId", fetch = FetchType.LAZY)
    private List<WorkMapTask> workMapTaskList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "workMapId", fetch = FetchType.LAZY)
    private List<WorkMapPss> workMapPssList;
    
    public WorkMap() {
    }

    public WorkMap(BigDecimal workMapId) {
        this.workMapId = workMapId;
    }

    public WorkMap(BigDecimal workMapId, Date yearMonthDay, Date lastModified) {
        this.workMapId = workMapId;
        this.yearMonthDay = yearMonthDay;
        this.lastModified = lastModified;
    }

    public BigDecimal getWorkMapId() {
        return workMapId;
    }

    public void setWorkMapId(BigDecimal workMapId) {
        this.workMapId = workMapId;
    }

    public Date getYearMonthDay() {
        return yearMonthDay;
    }

    public void setYearMonthDay(Date yearMonthDay) {
        this.yearMonthDay = yearMonthDay;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getLastModified() {
        return lastModified;
    }

    public void setLastModified(Date lastModified) {
        this.lastModified = lastModified;
    }

    public List<WorkMapTask> getWorkMapTaskList() {
        return workMapTaskList;
    }

    public void setWorkMapTaskList(List<WorkMapTask> workMapTaskList) {
        this.workMapTaskList = workMapTaskList;
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
        hash += (workMapId != null ? workMapId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof WorkMap)) {
            return false;
        }
        WorkMap other = (WorkMap) object;
        if ((this.workMapId == null && other.workMapId != null) || (this.workMapId != null && !this.workMapId.equals(other.workMapId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "org.jlab.atlis.workmap.persistence.entity.WorkMap[ workMapId=" + workMapId + " ]";
    }

    public List<WorkMapTask> copyWorkMapTaskList(WorkMap map) {
        List<WorkMapTask> tasks = new ArrayList<WorkMapTask>();
        
        if(workMapTaskList != null) {
            for(WorkMapTask task: workMapTaskList) {
                tasks.add(task.copy(map));
            }
        }
        
        return tasks;
    }

    public List<WorkMapPss> copyWorkMapPssList(WorkMap map) {
        List<WorkMapPss> pss = new ArrayList<WorkMapPss>();
        
        if(workMapPssList != null) {
            for(WorkMapPss p: workMapPssList) {
                pss.add(p.copy(map));
            }
        }
        
        return pss;
    }
    
}
