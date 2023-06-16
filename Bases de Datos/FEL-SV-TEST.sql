-- ***************************************************************************************************************************
-- *          CONSULTA DE TABLAS CAT�LOGO FEL-SV.                                                                            *
-- ***************************************************************************************************************************
SELECT C.* FROM CAT_000 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_001 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_002 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_003 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_004 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_005 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_006 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_007 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_008 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_009 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_010 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_011 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_012 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_013 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_014 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_015 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_016 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_017 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_018 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_019 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_020 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_021 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_022 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_023 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_024 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_025 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_026 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_027 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_028 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_029 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_030 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_031 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_032 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_033 C ORDER BY C.ID_CAT;
-- ***************************************************************************************************************************
-- *          CONSULTA DE TABLAS EMISOR, SHAN, COMPA�IA Y ESTABLECIMIENTO FEL-SV.                                            *
-- ***************************************************************************************************************************
SELECT F.* FROM EMISOR_V3 F;
SELECT F.* FROM EMISOR_KCOO_V3 F;
SELECT F.* FROM EMISOR_ESTABLECIMIENTO_V3 F;
-- INSERT INTO EMISOR_ESTABLECIMIENTO_V3 (ID_EMISOR_ESTABLECIMIENTO,ID_EMISOR,ID_CAT_009,ID_CAT_012,ID_CAT_013,DIRECCION_COMPLEMENTO,TELEFONO,CODESTABLEMH,CODESTABLE,CODPUNTOVENTAMH,CODPUNTOVENTA,CORREO,NOMBENTREGA,DOCUENTREGA,NOMBRECIBE,DOCURECIBE,CORRELATIVO_CCF,CORRELATIVO_NC,CORRELATIVO_ND,CORRELATIVO_NR) 
-- VALUES (7,1,1,5,76,'Av. Albert Einstein y bulevar Los Pr�ceres, Urb. Lomas de San Francisco, # 1, Torre Cuscatl�n, nivel 15, Antiguo Cuscatl�n, La Libertad.','25288000',null,'07',null,'733501','replegal-unosv@uno-terra.com','UNO EL SALVADOR','06140404600015','UNO EL SALVADOR','06140404600015',0,0,0,0);
-- COMMIT;
SELECT F.* FROM NOTIFIACION_CORREO_V3 F ORDER BY ID_NOTIFICACION;
SELECT F.* FROM NOTIFIACION_CORREO_V3 F WHERE F.ACTIVO=1 ORDER BY ID_NOTIFICACION;
UPDATE NOTIFIACION_CORREO_V3 SET ACTIVO=1 WHERE ID_NOTIFICACION IN (1,3,4,7,8,9,10,11,12,13,14,15); -- NOTIFIACI�N EN FASE DE PRUEBAS INTEGRALES.
UPDATE NOTIFIACION_CORREO_V3 SET ACTIVO=1 WHERE ID_NOTIFICACION IN (1,3,4,13,14);
UPDATE NOTIFIACION_CORREO_V3 SET ACTIVO=0 WHERE ID_NOTIFICACION>0;
UPDATE NOTIFIACION_CORREO_V3 SET ACTIVO=1 WHERE ID_NOTIFICACION IN (1,3,4,13);
UPDATE NOTIFIACION_CORREO_V3 SET ACTIVO=1 WHERE ID_NOTIFICACION IN (3);
-- ***************************************************************************************************************************
-- *          COMPROBANTE DE CR�DITO FISCAL.                                                                                 *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM OTROS_DOCU_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_CCF_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_CCF_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM IDENTIFICACION_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM DOCU_RELA_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM RECEPTOR_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM SHIPTO_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM OTROS_DOCU_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM VENTA_TERCERO_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM CUERPO_DOCU_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM CUERPO_TRIBUTO_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM RESUMEN_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM RESUMEN_TRIBUTO_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM EXTENSION_CCF_V3 F WHERE F.ID_DTE IN (399);
SELECT F.* FROM APENDICE_CCF_V3 F WHERE F.ID_DTE IN (399);
-- ***************************************************************************************************************************
-- *          NOTA DE CR�DITO.                                                                                               *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_NC_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_NC_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM IDENTIFICACION_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM DOCU_RELA_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM RECEPTOR_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM SHIPTO_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM VENTA_TERCERO_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM CUERPO_DOCU_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM CUERPO_TRIBUTO_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM RESUMEN_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM RESUMEN_TRIBUTO_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM EXTENSION_NC_V3 F WHERE F.ID_DTE IN (25);
SELECT F.* FROM APENDICE_NC_V3 F WHERE F.ID_DTE IN (25);
-- ***************************************************************************************************************************
-- *          NOTA DE D�BITO.                                                                                                *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_ND_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_ND_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_ND_V3 F WHERE F.ID_DTE IN (63);
SELECT F.* FROM IDENTIFICACION_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM DOCU_RELA_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM RECEPTOR_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM SHIPTO_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM VENTA_TERCERO_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM CUERPO_DOCU_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM CUERPO_TRIBUTO_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM RESUMEN_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM RESUMEN_TRIBUTO_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM EXTENSION_ND_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM APENDICE_ND_V3 F WHERE F.ID_DTE IN (85);
-- ***************************************************************************************************************************
-- *          FACTURA ELECTR�NICA.                                                                                           *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM OTROS_DOCU_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_F_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_F_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM IDENTIFICACION_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM DOCU_RELA_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM RECEPTOR_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM SHIPTO_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM OTROS_DOCU_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM VENTA_TERCERO_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM CUERPO_DOCU_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM CUERPO_TRIBUTO_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM RESUMEN_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM RESUMEN_TRIBUTO_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM EXTENSION_F_V3 F WHERE F.ID_DTE IN (177);
SELECT F.* FROM APENDICE_F_V3 F WHERE F.ID_DTE IN (177);
-- ***************************************************************************************************************************
-- *          FACTURA DE EXPORTACI�N.                                                                                        *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM OTROS_DOCU_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_FEX_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_FEX_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM IDENTIFICACION_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM RECEPTOR_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM SHIPTO_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM OTROS_DOCU_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM VENTA_TERCERO_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM CUERPO_DOCU_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM CUERPO_TRIBUTO_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM RESUMEN_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM RESUMEN_TRIBUTO_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM EXTENSION_FEX_V3 F WHERE F.ID_DTE IN (122);
SELECT F.* FROM APENDICE_FEX_V3 F WHERE F.ID_DTE IN (128);
-- ***************************************************************************************************************************
-- *          NOTA DE REMISION.                                                                                              *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM OTROS_DOCU_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_NR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_NR_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM IDENTIFICACION_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM DOCU_RELA_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM RECEPTOR_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM SHIPTO_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM OTROS_DOCU_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM VENTA_TERCERO_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM CUERPO_DOCU_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM CUERPO_TRIBUTO_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM RESUMEN_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM RESUMEN_TRIBUTO_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM EXTENSION_NR_V3 F WHERE F.ID_DTE IN (121);
SELECT F.* FROM APENDICE_NR_V3 F WHERE F.ID_DTE IN (121);
-- ***************************************************************************************************************************
-- *          COMPROBANTE DE RETENCI�N.                                                                                      *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCU_RELA_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RECEPTOR_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM SHIPTO_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM OTROS_DOCU_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM VENTA_TERCERO_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_DOCU_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM CUERPO_TRIBUTO_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM RESUMEN_TRIBUTO_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM EXTENSION_CR_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM APENDICE_CR_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM IDENTIFICACION_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM DOCU_RELA_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM RECEPTOR_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM SHIPTO_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM OTROS_DOCU_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM VENTA_TERCERO_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM CUERPO_DOCU_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM CUERPO_TRIBUTO_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM RESUMEN_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM RESUMEN_TRIBUTO_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM EXTENSION_CR_V3 F WHERE F.ID_DTE IN (71);
SELECT F.* FROM APENDICE_CR_V3 F WHERE F.ID_DTE IN (71);
-- ***************************************************************************************************************************
-- *          EVENTO DE INVALIDACI�N.                                                                                        *
-- ***************************************************************************************************************************
SELECT F.* FROM DTE_INVALIDACION_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM IDENTIFICACION_INVALIDACION_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM DOCUMENTO_INVALIDACION_V3 F ORDER BY F.ID_DTE DESC;
SELECT F.* FROM MOTIVO_INVALIDACION_V3 F ORDER BY F.ID_DTE DESC;

SELECT F.* FROM DTE_INVALIDACION_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM IDENTIFICACION_INVALIDACION_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM DOCUMENTO_INVALIDACION_V3 F WHERE F.ID_DTE IN (1);
SELECT F.* FROM MOTIVO_INVALIDACION_V3 F WHERE F.ID_DTE IN (1);
-- ***************************************************************************************************************************
-- *          TABLAS FEL-GUATEMALA.                                                                                          *
-- ***************************************************************************************************************************
SELECT F.* FROM CRPDTA.F59421CA@JDEPY F;
SELECT F.* FROM CRPDTA.F59421DE@JDEPY F; -- ESTA TABLA NO SE PUEDE CONSULTAR A TRAVES DE DBLINK.
SELECT F.* FROM CRPDTA.F5942PAR@JDEPY F;
-- ***************************************************************************************************************************
-- *          QUERY PARA FECHAS JULIANAS Y GREGORIANAS.                                                                      *
-- ***************************************************************************************************************************
SELECT TO_NUMBER(SUBSTR(TO_CHAR(TO_DATE('26/04/2023','dd/MM/yyyy'),'ccYYddd'),2,6)) FECHA_JULIANA FROM DUAL;
SELECT TO_CHAR(TO_DATE(TO_CHAR(A.SDIVD + 1900000,'9999999'),'YYYYDDD'),'dd/MM/yyyy') FECHA_GREGORIANA FROM DUAL;

SELECT DISTINCT F.SDKCOO, F.SDDOCO, F.SDDCTO, F.SDDOC, F.SDDCT, F.SDMCU, F.SDAN8, F.SDSHAN, F.SDCRCD, F.SDIVD, '000' STCD, '-' CRSREF01, '-' CRSREF02, '-' CRSREF03, '-' CRSREF04, '-' CRSREF05, 'F4211' TABLA, TRIM(F.SDTXA1) SDTXA1, NVL(TRIM(G.ABAC30),'-') ABAC30
FROM CRPDTA.F4211@JDEPY F LEFT JOIN CRPDTA.F0101@JDEPY G ON (F.SDAN8=G.ABAN8)
WHERE (TRIM(F.SDKCO) IN (SELECT C.KCOO_JDE FROM EMISOR_KCOO_V3 C)) AND (F.SDDOC > 0) AND (TRIM(F.SDLTTR) NOT IN ('904','902','900','980')) AND (TRIM(F.SDDCTO) IN ('S3','C3','SD')) AND (TRIM(F.SDCRMD) IS NULL) AND (F.SDIVD = 123147);

SELECT DISTINCT F.NRKCOO, F.NRDOCO, F.NRDCTO, F.NRN001, F.NRURCD, F.NRMCU, F.NRAN8, F.NRSHAN, F.NRCRCD, F.NRURDT, '000' STCD, '-' CRSREF01, '-' CRSREF02, '-' CRSREF03, '-' CRSREF04, '-' CRSREF05, 'F554211N' TABLA, TRIM(F.NRTXA1) NRTXA1, NVL(TRIM(G.ABAC30),'-') ABAC30
FROM CRPDTA.F554211N@JDEPY F LEFT JOIN CRPDTA.F0101@JDEPY G ON (F.NRAN8=G.ABAN8)
WHERE (TRIM(F.NRKCOO) IN (SELECT C.KCOO_JDE FROM EMISOR_KCOO_V3 C)) AND (F.NRN001 > 0) AND (TRIM(F.NRLTTR) NOT IN ('904','902','900','980')) AND (TRIM(F.NRDCTO) IN ('S3')) AND (TRIM(F.NREV01) IN ('N')) AND (F.NRURDT = 123147)
ORDER BY F.NRKCOO, F.NRDOCO, F.NRDCTO, F.NRN001;

SELECT DISTINCT F.CRKCO, F.CRN001, F.CRURCD, F.CRN001, F.CRURCD, F.CRMCU, F.CRAN8, F.CRSHAN, 'USD' CRCRCD, F.CRDIVJ, '000' STCD, '-' CRSREF01, '-' CRSREF02, '-' CRSREF03, '-' CRSREF04, '-' CRSREF05, 'F5504001' TABLA, TRIM(F.CRGL01) NRTXA1, NVL(TRIM(G.ABAC30),'-') ABAC30
FROM CRPDTA.F5504001@JDEPY F LEFT JOIN CRPDTA.F0101@JDEPY G ON (F.CRAN8=G.ABAN8)
WHERE (TRIM(F.CRKCO) IN (SELECT C.KCOO_JDE FROM EMISOR_KCOO_V3 C)) AND (F.CRN001 > 0) AND (TRIM(F.CREV01) IN ('N')) AND (F.CRDIVJ >= 123148);


SELECT F.SDTXA1, F.* FROM CRPDTA.F4211@JDEPY F WHERE F.SDDOCO IN (49);
SELECT F.* FROM CRPDTA.F5542FEL@JDEPY F WHERE FESTCD IN ('000','999');
SELECT F.* FROM CRPDTA.F5542FEL@JDEPY F WHERE F.FEDOCO IN (72960144);

-- UPDATE CRPDTA.F5542FEL@JDEPY SET FESTCD='000', FEJEVER='F42119    ' WHERE FEDOCO IN (72960056);
UPDATE CRPDTA.F5542FEL@JDEPY SET FESTCD='000' WHERE FEDOCO IN (72960144);
COMMIT;
