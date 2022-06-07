/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mvc.Modelo;

/**
 *
 * @author Jaret
 */
public class DEquipo {
    
    private String equipo_etiqueta, cpu_serial, monitor_id, config_id, problema;
    private int lab_id, marca_id, accesorio_id, estadoequipo_id;
    private String lab_nom, marca_nom, estadoequipo_tipo, config_mouse, config_teclado,
            monitor_descripcion, config_descripcion;

    public DEquipo() {
    }

    public String getEquipo_etiqueta() {
        return equipo_etiqueta;
    }

    public void setEquipo_etiqueta(String equipo_etiqueta) {
        this.equipo_etiqueta = equipo_etiqueta;
    }

    public String getCpu_serial() {
        return cpu_serial;
    }

    public void setCpu_serial(String cpu_serial) {
        this.cpu_serial = cpu_serial;
    }

    public String getMonitor_id() {
        return monitor_id;
    }

    public void setMonitor_id(String monitor_id) {
        this.monitor_id = monitor_id;
    }

    public String getConfig_id() {
        return config_id;
    }

    public void setConfig_id(String config_id) {
        this.config_id = config_id;
    }

    public String getProblema() {
        return problema;
    }

    public void setProblema(String problema) {
        this.problema = problema;
    }

    public int getLab_id() {
        return lab_id;
    }

    public void setLab_id(int lab_id) {
        this.lab_id = lab_id;
    }

    public int getMarca_id() {
        return marca_id;
    }

    public void setMarca_id(int marca_id) {
        this.marca_id = marca_id;
    }

    public int getAccesorio_id() {
        return accesorio_id;
    }

    public void setAccesorio_id(int accesorio_id) {
        this.accesorio_id = accesorio_id;
    }

    public String getLab_nom() {
        return lab_nom;
    }

    public void setLab_nom(String lab_nom) {
        this.lab_nom = lab_nom;
    }

    public String getMarca_nom() {
        return marca_nom;
    }

    public void setMarca_nom(String marca_nom) {
        this.marca_nom = marca_nom;
    }

    public String getConfig_mouse() {
        return config_mouse;
    }

    public void setConfig_mouse(String config_mouse) {
        this.config_mouse = config_mouse;
    }

    public String getConfig_teclado() {
        return config_teclado;
    }

    public void setConfig_teclado(String config_teclado) {
        this.config_teclado = config_teclado;
    }

    public String getMonitor_descripcion() {
        return monitor_descripcion;
    }

    public void setMonitor_descripcion(String monitor_descripcion) {
        this.monitor_descripcion = monitor_descripcion;
    }

    public String getConfig_descripcion() {
        return config_descripcion;
    }

    public void setConfig_descripcion(String config_descripcion) {
        this.config_descripcion = config_descripcion;
    }

    public int getEstadoequipo_id() {
        return estadoequipo_id;
    }

    public void setEstadoequipo_id(int estadoequipo_id) {
        this.estadoequipo_id = estadoequipo_id;
    }

    public String getEstadoequipo_tipo() {
        return estadoequipo_tipo;
    }

    public void setEstadoequipo_tipo(String estadoequipo_tipo) {
        this.estadoequipo_tipo = estadoequipo_tipo;
    }
    
    
}
