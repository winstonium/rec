package bo.afcoop.rec.dto;
// Generated 19-10-2016 06:28:50 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * AdmUsuario generated by hbm2java
 */
public class AdmUsuario implements java.io.Serializable {

    private Long idAdmUsuario;
    //private AdmPersona admPersona;
    private String usuario;
    private String contrasenia;
    private String observacion;
    private Long insertBy;
    private Long updateBy;
    private Date insertTime;
    private Date updateTime;
    private Integer estado;
    private Set admUsuarioRols = new HashSet(0);

    public AdmUsuario() {
    }

    public Long getIdAdmUsuario() {
        return this.idAdmUsuario;
    }

    public void setIdAdmUsuario(Long idAdmUsuario) {
        this.idAdmUsuario = idAdmUsuario;
    }

    public String getUsuario() {
        return this.usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasenia() {
        return this.contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getObservacion() {
        return this.observacion;
    }

    public void setObservacion(String observacion) {
        this.observacion = observacion;
    }

    public Long getInsertBy() {
        return this.insertBy;
    }

    public void setInsertBy(Long insertBy) {
        this.insertBy = insertBy;
    }

    public Long getUpdateBy() {
        return this.updateBy;
    }

    public void setUpdateBy(Long updateBy) {
        this.updateBy = updateBy;
    }

    public Date getInsertTime() {
        return this.insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }

    public Date getUpdateTime() {
        return this.updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getEstado() {
        return this.estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

    public Set getAdmUsuarioRols() {
        return this.admUsuarioRols;
    }

    public void setAdmUsuarioRols(Set admUsuarioRols) {
        this.admUsuarioRols = admUsuarioRols;
    }

}
