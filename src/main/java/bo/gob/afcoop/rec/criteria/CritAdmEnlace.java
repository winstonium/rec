package bo.afcoop.rec.criteria;
// Generated 19-10-2016 06:28:50 PM by Hibernate Tools 4.3.1

/**
 * AdmEnlace generated by hbm2java
 */
public class CritAdmEnlace implements java.io.Serializable {

    private Integer idAdmEnlace;
    private Integer admModuloId;
    private String descripcion;
    private Integer estado;

    public CritAdmEnlace() {
    }

    public Integer getIdAdmEnlace() {
        return this.idAdmEnlace;
    }

    public Integer getAdmModuloId() {
        return admModuloId;
    }

    public void setAdmModuloId(Integer admModuloId) {
        this.admModuloId = admModuloId;
    }

    public void setIdAdmEnlace(Integer idAdmEnlace) {
        this.idAdmEnlace = idAdmEnlace;
    }

    public String getDescripcion() {
        return this.descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getEstado() {
        return estado;
    }

    public void setEstado(Integer estado) {
        this.estado = estado;
    }

}
