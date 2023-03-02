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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ryans
 */
@Entity
@Table(name = "WORK_MAP_TASK", schema = "ATLIS_OWNER", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"WORK_MAP_ID", "WORK_MAP_TASK_AREA_ID"})})
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "WorkMapTask.findAll", query = "SELECT w FROM WorkMapTask w"),
    @NamedQuery(name = "WorkMapTask.findByWorkMapTaskId", query = "SELECT w FROM WorkMapTask w WHERE w.workMapTaskId = :workMapTaskId"),
    @NamedQuery(name = "WorkMapTask.findByWorkMapIdEager", query = "SELECT w FROM WorkMapTask w LEFT JOIN FETCH w.workMapTaskTypeId JOIN FETCH w.workMapTaskAreaId WHERE w.workMapId.workMapId = :workMapId"), 
    @NamedQuery(name = "WorkMapTask.deleteByWorkMapId", query = "DELETE FROM WorkMapTask w WHERE w.workMapId.workMapId = :workMapId"),
    @NamedQuery(name = "WorkMapTask.findByMessage", query = "SELECT w FROM WorkMapTask w WHERE w.message = :message")})
public class WorkMapTask implements Serializable {
    private static final long serialVersionUID = 1L;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Id
    @SequenceGenerator(name = "WorkMapTaskId", sequenceName = "WORK_MAP_TASK_ID", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "WorkMapTaskId")    
    @Basic(optional = false)
    @NotNull
    @Column(name = "WORK_MAP_TASK_ID", nullable = false, precision = 32, scale = 0)
    private BigDecimal workMapTaskId;
    @Size(max = 32)
    @Column(name = "MESSAGE", length = 32)
    private String message;
    @Column(name = "UPSTAIRS_YN", length = 1)
    @NotNull
    @Size(min = 1, max = 1)
    private String upstairsYn;    
    @JoinColumn(name = "WORK_MAP_ID", referencedColumnName = "WORK_MAP_ID", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private WorkMap workMapId;        
    @JoinColumn(name = "WORK_MAP_TASK_TYPE_ID", referencedColumnName = "WORK_MAP_TASK_TYPE_ID")
    @ManyToOne(fetch = FetchType.LAZY)
    private WorkMapTaskType workMapTaskTypeId;
    @JoinColumn(name = "WORK_MAP_TASK_AREA_ID", referencedColumnName = "WORK_MAP_TASK_AREA_ID", nullable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private WorkMapTaskArea workMapTaskAreaId;

    public WorkMapTask() {
    }

    public WorkMapTask(BigDecimal workMapTaskId) {
        this.workMapTaskId = workMapTaskId;
    }

    public boolean isUpstairs() {
        return "Y".equals(upstairsYn); 
    }
    
    public void setUpstairs(boolean upstairs) {
        this.upstairsYn = upstairs ? "Y" : "N";
    }    
    
    public BigDecimal getWorkMapTaskId() {
        return workMapTaskId;
    }

    public void setWorkMapTaskId(BigDecimal workMapTaskId) {
        this.workMapTaskId = workMapTaskId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (workMapTaskId != null ? workMapTaskId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof WorkMapTask other)) {
            return false;
        }
        return (this.workMapTaskId != null || other.workMapTaskId == null) && (this.workMapTaskId == null || this.workMapTaskId.equals(other.workMapTaskId));
    }

    public WorkMapTaskType getWorkMapTaskTypeId() {
        return workMapTaskTypeId;
    }

    public void setWorkMapTaskTypeId(WorkMapTaskType workMapTaskTypeId) {
        this.workMapTaskTypeId = workMapTaskTypeId;
    }

    public WorkMapTaskArea getWorkMapTaskAreaId() {
        return workMapTaskAreaId;
    }

    public void setWorkMapTaskAreaId(WorkMapTaskArea workMapTaskAreaId) {
        this.workMapTaskAreaId = workMapTaskAreaId;
    }

    public WorkMap getWorkMapId() {
        return workMapId;
    }

    public void setWorkMapId(WorkMap workMapId) {
        this.workMapId = workMapId;
    }

    @Override
    public String toString() {
        return "WorkMapTask{" + "workMapTaskId=" + workMapTaskId + ", message=" + message + ", workMapId=" + workMapId + ", workMapTaskTypeId=" + workMapTaskTypeId + ", workMapTaskAreaId=" + workMapTaskAreaId + '}';
    }

    public WorkMapTask copy(WorkMap map) {
        WorkMapTask task = new WorkMapTask();
        task.setUpstairs(isUpstairs());
        task.setMessage(message);
        task.setWorkMapTaskAreaId(workMapTaskAreaId);
        task.setWorkMapTaskTypeId(workMapTaskTypeId);
        task.setWorkMapId(map);
        return task;
    }
}
