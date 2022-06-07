/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mvc.Modelo;

/**
 *
 * @author Jaret
 */
public class DReporte {
    
    private int reporte_id, etiqueta_id, personareporte_id, prioridad_id,
            estadoreporte_id, cantidadreportes_id, asignaturareporte_id;
    private String etiqueta_nombre, personareporte_user, prioridad_tipo,
            estadoreporte_tipo, asignatura_nombre, fechareporte, horareporte;

    public DReporte() {
    }

    public int getReporte_id() {
        return reporte_id;
    }

    public void setReporte_id(int reporte_id) {
        this.reporte_id = reporte_id;
    }

    public int getEtiqueta_id() {
        return etiqueta_id;
    }

    public void setEtiqueta_id(int etiqueta_id) {
        this.etiqueta_id = etiqueta_id;
    }

    public int getPersonareporte_id() {
        return personareporte_id;
    }

    public void setPersonareporte_id(int personareporte_id) {
        this.personareporte_id = personareporte_id;
    }

    public int getPrioridad_id() {
        return prioridad_id;
    }

    public void setPrioridad_id(int prioridad_id) {
        this.prioridad_id = prioridad_id;
    }

    public int getEstadoreporte_id() {
        return estadoreporte_id;
    }

    public void setEstadoreporte_id(int estadoreporte_id) {
        this.estadoreporte_id = estadoreporte_id;
    }

    public int getCantidadreportes_id() {
        return cantidadreportes_id;
    }

    public void setCantidadreportes_id(int cantidadreportes_id) {
        this.cantidadreportes_id = cantidadreportes_id;
    }

    public int getAsignaturareporte_id() {
        return asignaturareporte_id;
    }

    public void setAsignaturareporte_id(int asignaturareporte_id) {
        this.asignaturareporte_id = asignaturareporte_id;
    }

    public String getEtiqueta_nombre() {
        return etiqueta_nombre;
    }

    public void setEtiqueta_nombre(String etiqueta_nombre) {
        this.etiqueta_nombre = etiqueta_nombre;
    }

    public String getPersonareporte_user() {
        return personareporte_user;
    }

    public void setPersonareporte_user(String personareporte_user) {
        this.personareporte_user = personareporte_user;
    }

    public String getPrioridad_tipo() {
        return prioridad_tipo;
    }

    public void setPrioridad_tipo(String prioridad_tipo) {
        this.prioridad_tipo = prioridad_tipo;
    }

    public String getEstadoreporte_tipo() {
        return estadoreporte_tipo;
    }

    public void setEstadoreporte_tipo(String estadoreporte_tipo) {
        this.estadoreporte_tipo = estadoreporte_tipo;
    }

    public String getAsignatura_nombre() {
        return asignatura_nombre;
    }

    public void setAsignatura_nombre(String asignatura_nombre) {
        this.asignatura_nombre = asignatura_nombre;
    }

    public String getFechareporte() {
        return fechareporte;
    }

    public void setFechareporte(String fechareporte) {
        this.fechareporte = fechareporte;
    }

    public String getHorareporte() {
        return horareporte;
    }

    public void setHorareporte(String horareporte) {
        this.horareporte = horareporte;
    }
    
    
}
