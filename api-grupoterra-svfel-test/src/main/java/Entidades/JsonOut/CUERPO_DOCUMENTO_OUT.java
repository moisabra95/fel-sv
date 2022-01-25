package Entidades.JsonOut;

import java.io.Serializable;
import java.util.List;

public class CUERPO_DOCUMENTO_OUT implements Serializable {

    private static final long serialVersionUID = 1L;
    
    Integer numItem;
    Integer tipoItem;
    Number cantidad;
    String codigo;
    Integer uniMedida;
    String descripcion;
    Number precioUni;
    Number montoDescu;
    Number ventaNoSuj;
    Number ventaExenta;
    Number ventaGravada;
    List<Integer> tributos;
    Number psv;
    Number diferencial;
    Number noGravado;

    public CUERPO_DOCUMENTO_OUT(Integer numItem, Integer tipoItem, Number cantidad, String codigo, Integer uniMedida, String descripcion, Number precioUni, Number montoDescu, Number ventaNoSuj, Number ventaExenta, Number ventaGravada, List<Integer> tributos, Number psv, Number diferencial, Number noGravado) {
        this.numItem = numItem;
        this.tipoItem = tipoItem;
        this.cantidad = cantidad;
        this.codigo = codigo;
        this.uniMedida = uniMedida;
        this.descripcion = descripcion;
        this.precioUni = precioUni;
        this.montoDescu = montoDescu;
        this.ventaNoSuj = ventaNoSuj;
        this.ventaExenta = ventaExenta;
        this.ventaGravada = ventaGravada;
        this.tributos = tributos;
        this.psv = psv;
        this.diferencial = diferencial;
        this.noGravado = noGravado;
    }

    public CUERPO_DOCUMENTO_OUT() {
    }

    public Integer getNumItem() {
        return numItem;
    }

    public void setNumItem(Integer numItem) {
        this.numItem = numItem;
    }

    public Integer getTipoItem() {
        return tipoItem;
    }

    public void setTipoItem(Integer tipoItem) {
        this.tipoItem = tipoItem;
    }

    public Number getCantidad() {
        return cantidad;
    }

    public void setCantidad(Number cantidad) {
        this.cantidad = cantidad;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public Integer getUniMedida() {
        return uniMedida;
    }

    public void setUniMedida(Integer uniMedida) {
        this.uniMedida = uniMedida;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Number getPrecioUni() {
        return precioUni;
    }

    public void setPrecioUni(Number precioUni) {
        this.precioUni = precioUni;
    }

    public Number getMontoDescu() {
        return montoDescu;
    }

    public void setMontoDescu(Number montoDescu) {
        this.montoDescu = montoDescu;
    }

    public Number getVentaNoSuj() {
        return ventaNoSuj;
    }

    public void setVentaNoSuj(Number ventaNoSuj) {
        this.ventaNoSuj = ventaNoSuj;
    }

    public Number getVentaExenta() {
        return ventaExenta;
    }

    public void setVentaExenta(Number ventaExenta) {
        this.ventaExenta = ventaExenta;
    }

    public Number getVentaGravada() {
        return ventaGravada;
    }

    public void setVentaGravada(Number ventaGravada) {
        this.ventaGravada = ventaGravada;
    }

    public List<Integer> getTributos() {
        return tributos;
    }

    public void setTributos(List<Integer> tributos) {
        this.tributos = tributos;
    }

    public Number getPsv() {
        return psv;
    }

    public void setPsv(Number psv) {
        this.psv = psv;
    }

    public Number getDiferencial() {
        return diferencial;
    }

    public void setDiferencial(Number diferencial) {
        this.diferencial = diferencial;
    }

    public Number getNoGravado() {
        return noGravado;
    }

    public void setNoGravado(Number noGravado) {
        this.noGravado = noGravado;
    }

    @Override
    public String toString() {
        return "Cuerpo_Documento{" + "numItem=" + numItem + ", tipoItem=" + tipoItem + ", cantidad=" + cantidad + ", codigo=" + codigo + ", uniMedida=" + uniMedida + ", descripcion=" + descripcion + ", precioUni=" + precioUni + ", montoDescu=" + montoDescu + ", ventaNoSuj=" + ventaNoSuj + ", ventaExenta=" + ventaExenta + ", ventaGravada=" + ventaGravada + ", tributos=" + tributos + ", psv=" + psv + ", diferencial=" + diferencial + ", noGravado=" + noGravado + '}';
    }
    
}
