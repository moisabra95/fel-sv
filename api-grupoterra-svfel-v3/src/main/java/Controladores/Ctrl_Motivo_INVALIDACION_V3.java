package Controladores;

import Entidades.Motivo_invalidacion;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.Statement;

public class Ctrl_Motivo_INVALIDACION_V3 implements Serializable {

    private static final long serialVersionUID = 1L;

    public Ctrl_Motivo_INVALIDACION_V3() {
    }

    public Motivo_invalidacion obtener_motivo_invalidacion_v3(Long id_dte, Connection conn) {
        Motivo_invalidacion resultado = new Motivo_invalidacion();

        try {
            Ctrl_Base_Datos ctrl_base_datos = new Ctrl_Base_Datos();

            resultado.setTipoAnulacion(ctrl_base_datos.ObtenerEntero("SELECT C.CODIGO FROM CAT_024 C WHERE C.ID_CAT IN (SELECT F.ID_CAT_024 FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte + ")", conn));
            resultado.setMotivoAnulacion(ctrl_base_datos.ObtenerString("SELECT F.MOTIVOANULACION FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte, conn));
            resultado.setNombreResponsable(ctrl_base_datos.ObtenerString("SELECT F.NOMBRERESPONSABLE FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte, conn));
            resultado.setTipDocResponsable(ctrl_base_datos.ObtenerString("SELECT C.CODIGO FROM CAT_022 C WHERE C.ID_CAT IN (SELECT F.ID_CAT_022_RESPON FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte + ")", conn));
            resultado.setNumDocResponsable(ctrl_base_datos.ObtenerString("SELECT F.NUMDOCRESPONSABLE FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte, conn));
            resultado.setNombreSolicita(ctrl_base_datos.ObtenerString("SELECT F.NOMBRESOLICITA FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte, conn));
            resultado.setTipDocSolicita(ctrl_base_datos.ObtenerString("SELECT C.CODIGO FROM CAT_022 C WHERE C.ID_CAT IN (SELECT F.ID_CAT_022_SOLIC FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte + ")", conn));
            resultado.setNumDocSolicita(ctrl_base_datos.ObtenerString("SELECT F.NUMDOCSOLICITA FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE=" + id_dte, conn));
        } catch (Exception ex) {
            System.out.println("PROYECTO:api-grupoterra-svfel-v3|CLASE:" + this.getClass().getName() + "|METODO:obtener_motivo_invalidacion_v3()|ERROR:" + ex.toString());
        }

        return resultado;
    }

    public String extraer_motivo_jde_invalidacion_v3(Long id_dte, String ambiente, Connection conn) {
        String resultado = "";

        try {
            Ctrl_Base_Datos ctrl_base_datos = new Ctrl_Base_Datos();

            Long ID_DTE = id_dte;
            Long ID_MOTIVO = Long.valueOf("1");
            Long ID_CAT_024 = Long.valueOf("1");
            String MOTIVOANULACION = "Error en la Información del Documento Tributario Electrónico a Invalidar.";
            String NOMBRERESPONSABLE = "UNO EL SALVADOR";
            Long ID_CAT_022_RESPON = Long.valueOf("1");
            String NUMDOCRESPONSABLE = "06140404600015";
            String NOMBRESOLICITA = "UNO EL SALVADOR";
            Long ID_CAT_022_SOLIC = Long.valueOf("1");
            String NUMDOCSOLICITA = "06140404600015";

            String cadenasql = "INSERT INTO MOTIVO_INVALIDACION_V3 ("
                    + "ID_DTE,"
                    + "ID_MOTIVO, "
                    + "ID_CAT_024, "
                    + "MOTIVOANULACION, "
                    + "NOMBRERESPONSABLE, "
                    + "ID_CAT_022_RESPON,"
                    + "NUMDOCRESPONSABLE,"
                    + "NOMBRESOLICITA,"
                    + "ID_CAT_022_SOLIC,"
                    + "NUMDOCSOLICITA) VALUES ("
                    + ID_DTE + ","
                    + ID_MOTIVO + ","
                    + ID_CAT_024 + ",'"
                    + MOTIVOANULACION + "','"
                    + NOMBRERESPONSABLE + "',"
                    + ID_CAT_022_RESPON + ",'"
                    + NUMDOCRESPONSABLE + "','"
                    + NOMBRESOLICITA + "',"
                    + ID_CAT_022_SOLIC + ",'"
                    + NUMDOCSOLICITA + "')";
            Statement stmt = conn.createStatement();
            // System.out.println(cadenasql);
            stmt.executeUpdate(cadenasql);
            stmt.close();

            resultado = "0,TRANSACCION PROCESADA.";
        } catch (Exception ex) {
            resultado = "1," + ex.toString();
            System.out.println("PROYECTO:api-grupoterra-svfel-v3|CLASE:" + this.getClass().getName() + "|METODO:extraer_motivo_jde_invalidacion_v3()|ERROR:" + ex.toString());
        }

        return resultado;
    }

}
