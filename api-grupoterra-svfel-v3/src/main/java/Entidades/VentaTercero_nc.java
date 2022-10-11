package Entidades;

import java.io.Serializable;

public class VentaTercero_nc implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private String nit;
    private String nombre;

    public VentaTercero_nc(String nit, String nombre) {
        this.nit = nit;
        this.nombre = nombre;
    }

    public VentaTercero_nc() {
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "VentaTercero_ccf{" + "nit=" + nit + ", nombre=" + nombre + '}';
    }
    
}
