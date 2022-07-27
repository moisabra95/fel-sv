-- ***************************************************************************************************************************
-- *          CONSULTA DE TABLAS FEL-SV.                                                                                     *
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
SELECT C.* FROM CAT_027 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_028 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_029 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_030 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_031 C ORDER BY C.ID_CAT;
SELECT C.* FROM CAT_032 C ORDER BY C.ID_CAT;

SELECT F.* FROM EMISOR_V3 F;
SELECT F.* FROM EMISOR_KCOO_V3 F;
SELECT F.* FROM EMISOR_ESTABLECIMIENTO_V3 F;

SELECT F.FEKCOO, F.FEDOCO, F.FEDCTO, F.FEDOC, F.FEDCT, F.FEMCU, F.FEAN8, F.FESHAN, F.FECRCD, F.FESTCD, F.FEIVD, F.FECRSREF01, F.FECRSREF02, F.FECRSREF03, F.FECRSREF04, F.FECRSREF05 
FROM CRPDTA.F5542FEL@JDEPY F
WHERE F.FESTCD='000' AND F.FEDCTO='S3';

SELECT F.* FROM DTE_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM IDENTIFICACION_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM DOCU_RELA_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM RECEPTOR_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM OTROS_DOCU_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM VENTA_TERCERO_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM CUERPO_DOCU_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM CUERPO_TRIBUTO_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM RESUMEN_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM RESUMEN_TRIBUTO_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM EXTENSION_CCF_V3 F ORDER BY F.ID_DTE;
SELECT F.* FROM APENDICE_CCF_V3 F ORDER BY F.ID_DTE;

UPDATE CRPDTA.F5542FEL@JDEPY SET FESTCD='000' WHERE FEKCOO='00728' AND FEDOCO IN (72940351) AND FEDCTO='S3';
COMMIT;
-- DELETE FROM APENDICE_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM EXTENSION_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM RESUMEN_TRIBUTO_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM RESUMEN_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM CUERPO_TRIBUTO_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM CUERPO_DOCU_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM RECEPTOR_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM IDENTIFICACION_CCF_V3 WHERE ID_DTE > 0;
-- DELETE FROM DTE_CCF_V3 WHERE ID_DTE > 0;

-- TABLAS FEL-GUATEMALA.
SELECT F.* FROM CRPDTA.F59421CA@JDEPY F;
SELECT F.* FROM CRPDTA.F59421DE@JDEPY F;
SELECT F.* FROM CRPDTA.F5942PAR@JDEPY F;

-- *****************************************************************************************************************************
-- *   TABLAS JD EDWARDS FEL-SV.                                                                                               *
-- *****************************************************************************************************************************
SELECT 
    TRIM(F.SDKCOO) COMPA�IA, 
    TRIM(F.SDMCU) UNIDAD_NEGOCIO, 
    TRIM(F.SDDCTO) TIPO_ORDEN, 
    F.SDDOCO NO_ORDEN, 
    TRIM(F.SDDCT) TIPO_DOCUMENTO,
    F.SDSHAN COD_CLIENTE,
    F.SDDOC NO_DOCUMENTO,
    F.SDLNID NO_LINEA,
    TRIM(F.SDCRCD) MONEDA_ORDEN, 
    F.SDUORG CANTIDAD,
    DECODE(TRIM(F.SDLNTY), 'S', 'BIEN', 'SERVICIO') TIPO_PRODUCTO,
    TRIM(SDUOM) UNIDAD_MEDIDA,
    F.SDITM ID_PRODUCTO, 
    TRIM(F.SDLITM) CODIGO_PRODUCTO, 
    TRIM(F.SDDSC1) || ' ' || TRIM(F.SDDSC2) DESCRIPCION_PRODUCTO,
    F.SDUPRC/10000 PRECIO_UNITARIO,
    F.SDFUP/10000 PRECIO_UNITARIO_EXPO,
    F.SDAEXP/100 PRECIO_BRUTO,
    F.SDFEA/100 PRECIO_BRUTO_EXPO,
    F.SDTAX1 APLICA_IMPUESTO,
    F.SDTXA1 TIPO_IMPUESTO,
    DECODE(F.SDTAX1, 'Y', NVL((SELECT I.TATXR1/1000.00/100 FROM CRPDTA.F4008@JDEPY I WHERE I.TATXA1=F.SDTXA1 AND I.TAITM=F.SDITM), (SELECT I.TATXR1/1000.00/100 FROM CRPDTA.F4008@JDEPY I WHERE I.TATXA1=F.SDTXA1 AND I.TAITM=0)), 0.00) TASA_IMPUESTO_1,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVC'), 'N') OVERRIDE_BASE_COST,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVC'), 'N') MANUAL_ADD_BASE_COST,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVC'), 0.00) BASE_COST,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVC'), 0.00) BASE_COST_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT1'), 'N') OVERRIDE_FEFE,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT1'), 'N') MANUAL_ADD_FEFE,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT1'), 0.00) FEFE,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT1'), 0.00) FEFE_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVM'), 'N') OVERRIDE_SESSA,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVM'), 'N') MANUAL_ADD_SESSA,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVM'), 0.00) SESSA,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVM'), 0.00) SESSA_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVFCG2'), 'N') OVERRIDE_FLETE,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVFCG2'), 'N') MANUAL_ADD_FLETE,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVFCG2'), 0.00) FLETE,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVFCG2'), 0.00) FLETE_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVP'), 'N') OVERRIDE_PROMO_VERANO,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVP'), 'N') MANUAL_ADD_PROMO_VERANO,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVP'), 0.00) PROMO_VERANO,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVP'), 0.00) PROMO_VERANO_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVPSCG'), 'N') OVERRIDE_AJUSTE_COMPETITIVO,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVPSCG'), 'N') MANUAL_ADD_AJUSTE_COMPETITIVO,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVPSCG'), 0.00) AJUSTE_COMPETITIVO,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVPSCG'), 0.00) AJUSTE_COMPETITIVO_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVLRCG'), 'N') OVERRIDE_PAGO_DEUDA,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVLRCG'), 'N') MANUAL_ADD_PAGO_DEUDA,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVLRCG'), 0.00) PAGO_DEUDA,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVLRCG'), 0.00) PAGO_DEUDA_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT2'), 'N') OVERRIDE_FOVIAL,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT2'), 'N') MANUAL_ADD_FOVIAL,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT2'), 0.00) FOVIAL,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT2'), 0.00) FOVIAL_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVSUBTRA'), 'N') OVERRIDE_CONTRANS,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVSUBTRA'), 'N') MANUAL_ADD_CONTRANS,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVSUBTRA'), 0.00) CONTRANS,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVSUBTRA'), 0.00) CONTRANS_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT3'), 'N') OVERRIDE_IMPUESTO_ESPECIAL,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT3'), 'N') MANUAL_ADD_IMPUESTO_ESPECIAL,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT3'), 0.00) IMPUESTO_ESPECIAL,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT3'), 0.00) IMPUESTO_ESPECIAL_EXPO,
    NVL((SELECT G.ALABAS FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT4'), 'N') OVERRIDE_IEC,
    NVL((SELECT G.ALMDED FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT4'), 'N') MANUAL_ADD_IEC,
    NVL((SELECT F.SDUORG * (G.ALUPRC/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT4'), 0.00) IEC,
    NVL((SELECT F.SDUORG * (G.ALFUP/10000) FROM CRPDTA.F4074@JDEPY G WHERE TRIM(F.SDKCOO)=TRIM(G.ALKCOO) AND F.SDDCTO=G.ALDCTO AND F.SDDOCO=G.ALDOCO AND F.SDLNID=G.ALLNID AND TRIM(G.ALAST)='SVT4'), 0.00) IEC_EXPO
FROM CRPDTA.F4211@JDEPY F 
WHERE F.SDDOC >0 AND TRIM(F.SDKCOO)='00728' AND TRIM(F.SDMCU)='728016' AND F.SDDCTO='S3' AND F.SDDOCO=72929122 -- 72928953  -- 72929064
ORDER BY TRIM(F.SDKCOO), TRIM(F.SDMCU), TRIM(F.SDDCTO), F.SDDOCO, TRIM(F.SDDCT), F.SDDOC, F.SDLNID;

COMMIT;
