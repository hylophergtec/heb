view: th_ventas_clientes_customer_sales_articulo {
  sql_table_name: `cdp-certificacion-heb.cleaning.TH_VentasClientes_CustomerSales_Articulo` ;;

  dimension: csods_business_unit_id {
    type: number
    sql: ${TABLE}.CSODS_Business_Unit_ID ;;
  }
  dimension: csods_cantidad_por_la_que_fue_reemplazado {
    type: number
    sql: ${TABLE}.CSODS_cantidad_por_la_que_fue_reemplazado ;;
  }
  dimension: csods_cantidad_que_reemplazo {
    type: number
    sql: ${TABLE}.CSODS_cantidad_que_reemplazo ;;
  }
  dimension: csods_cantidad_surtida {
    type: number
    sql: ${TABLE}.CSODS_cantidad_surtida ;;
  }
  dimension: csods_channel_id {
    type: number
    sql: ${TABLE}.CSODS_Channel_ID ;;
  }
  dimension: csods_coupon_code {
    type: string
    sql: ${TABLE}.CSODS_COUPON_CODE ;;
  }
  dimension_group: csods_created_date_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CSODS_Created_DATE_DT ;;
  }
  dimension: csods_customer_detail_id {
    primary_key: yes
    type: string
    sql: CAST(${TABLE}.CSODS_Customer_Detail_ID AS STRING) ;;
  }
  dimension: csods_descuento {
    type: number
    sql: ${TABLE}.CSODS_descuento ;;
  }
  dimension: csods_item_id {
    type: string
    sql: ${TABLE}.CSODS_Item_ID ;;
  }
  dimension: csods_item_nm {
    type: string
    sql: ${TABLE}.CSODS_Item_NM ;;
  }
  dimension: csods_item_status_nm {
    type: string
    sql: ${TABLE}.CSODS_Item_Status_NM ;;
  }
  dimension: csods_nombre_picker {
    type: string
    sql: ${TABLE}.CSODS_nombre_picker ;;
  }
  dimension_group: csods_operator_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CSODS_Operator_DT ;;
  }
  dimension: csods_operator_dv {
    type: string
    sql: ${TABLE}.CSODS_Operator_DV ;;
  }
  dimension: csods_operator_uid {
    type: string
    sql: ${TABLE}.CSODS_Operator_UID ;;
  }
  dimension: csods_order_id {
    type: string
    sql: ${TABLE}.CSODS_Order_ID ;;
  }
  dimension: csods_order_status_nm {
    type: string
    sql: ${TABLE}.CSODS_Order_Status_NM ;;
  }
  dimension: csods_payment_method_id {
    type: number
    sql: ${TABLE}.CSODS_Payment_Method_ID ;;
  }
  dimension: csods_platform {
    type: string
    sql: ${TABLE}.CSODS_Platform ;;
  }
  dimension: csods_precio_original {
    type: number
    sql: ${TABLE}.CSODS_precio_original ;;
  }
  dimension: csods_promotion_amt {
    type: number
    sql: ${TABLE}.CSODS_Promotion_AMT ;;
  }
  dimension: csods_quantity_picked_qty {
    type: number
    sql: ${TABLE}.CSODS_Quantity_Picked_QTY ;;
  }
  dimension: csods_quantity_qty {
    type: number
    sql: ${TABLE}.CSODS_Quantity_QTY ;;
  }
  dimension: csods_sale_amount_amt {
    type: number
    sql: ${TABLE}.CSODS_Sale_Amount_AMT ;;
  }
  dimension_group: csods_sale_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CSODS_Sale_DT ;;
  }
  dimension: csods_shipping_amt {
    type: number
    sql: ${TABLE}.CSODS_Shipping_AMT ;;
  }
  dimension: csods_shipping_schedule {
    type: string
    sql: ${TABLE}.CSODS_Shipping_schedule ;;
  }
  dimension: csods_shipping_type_nm {
    type: string
    sql: ${TABLE}.CSODS_Shipping_Type_NM ;;
  }
  dimension: csods_sku_remplazo {
    type: string
    sql: ${TABLE}.CSODS_sku_remplazo ;;
  }
  dimension: csods_ticket_id {
    type: string
    sql: ${TABLE}.CSODS_Ticket_ID ;;
  }
  dimension: csods_token {
    type: string
    sql: ${TABLE}.CSODS_Token ;;
  }
  dimension: csods_total {
    type: number
    sql: ${TABLE}.CSODS_Total ;;
  }
  dimension: csods_transaction_type_id {
    type: number
    sql: ${TABLE}.CSODS_Transaction_Type_ID ;;
  }
  dimension: csods_unit_measure_id {
    type: string
    sql: ${TABLE}.CSODS_Unit_Measure_ID ;;
  }
  dimension: csods_vendor_nm {
    type: string
    sql: ${TABLE}.CSODS_Vendor_NM ;;
  }
  dimension: gen_art_karticulo {
    type: number
    sql: ${TABLE}.GEN_ART_KArticulo ;;
  }
  dimension: gen_order_id {
    type: string
    sql: ${TABLE}.GEN_Order_ID ;;
  }
  dimension: gen_part_id {
    type: number
    sql: ${TABLE}.GEN_Part_ID ;;
  }
  dimension: otl_amount_amt {
    type: number
    sql: ${TABLE}.OTL_AMOUNT_AMT ;;
  }
  dimension: otl_amount_tax_amt {
    type: number
    sql: ${TABLE}.OTL_AMOUNT_TAX_AMT ;;
  }
  dimension: otl_business_unit_id {
    type: number
    sql: ${TABLE}.OTL_Business_Unit_ID ;;
  }
  dimension: otl_item_id {
    type: string
    sql: ${TABLE}.OTL_ITEM_ID ;;
  }
  dimension: otl_order_id {
    type: string
    sql: ${TABLE}.OTL_Order_ID ;;
  }
  dimension: otl_quantity_qty {
    type: number
    sql: ${TABLE}.OTL_QUANTITY_QTY ;;
  }
  dimension_group: otl_sales_date_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.OTL_Sales_Date_DT ;;
  }
  dimension: otl_ticket_id {
    type: number
    sql: ${TABLE}.OTL_Ticket_ID ;;
  }
  dimension: tda_art_canio {
    type: number
    sql: ${TABLE}.TDA_ART_CAnio ;;
  }
  dimension: tda_art_ccat_extendido {
    type: number
    sql: ${TABLE}.TDA_ART_CCatExtendido ;;
  }
  dimension: tda_art_ccod_pro {
    type: string
    sql: ${TABLE}.TDA_ART_CCodPro ;;
  }
  dimension: tda_art_ccodigo_barras {
    type: string
    sql: ${TABLE}.TDA_ART_CCodigoBarras ;;
  }
  dimension: tda_art_ccolor {
    type: number
    sql: ${TABLE}.TDA_ART_CColor ;;
  }
  dimension: tda_art_ccomposicion {
    type: number
    sql: ${TABLE}.TDA_ART_CComposicion ;;
  }
  dimension: tda_art_ccomprador {
    type: number
    sql: ${TABLE}.TDA_ART_CComprador ;;
  }
  dimension: tda_art_ccuadro_basico {
    type: number
    sql: ${TABLE}.TDA_ART_CCuadroBasico ;;
  }
  dimension: tda_art_cdepto {
    type: number
    sql: ${TABLE}.TDA_ART_CDepto ;;
  }
  dimension: tda_art_cdepto_virtual {
    type: number
    sql: ${TABLE}.TDA_ART_CDeptoVirtual ;;
  }
  dimension: tda_art_cdireccion {
    type: number
    sql: ${TABLE}.TDA_ART_CDireccion ;;
  }
  dimension: tda_art_cdivision {
    type: number
    sql: ${TABLE}.TDA_ART_CDivision ;;
  }
  dimension: tda_art_cestatus {
    type: string
    sql: ${TABLE}.TDA_ART_CEstatus ;;
  }
  dimension: tda_art_cevento_comercial {
    type: number
    sql: ${TABLE}.TDA_ART_CEventoComercial ;;
  }
  dimension: tda_art_cfact_conv {
    type: number
    sql: ${TABLE}.TDA_ART_CFactConv ;;
  }
  dimension: tda_art_cfamilia {
    type: number
    sql: ${TABLE}.TDA_ART_CFamilia ;;
  }
  dimension: tda_art_cfamilia_dms {
    type: number
    sql: ${TABLE}.TDA_ART_CFamilia_DMS ;;
  }
  dimension: tda_art_cpropiedad {
    type: number
    sql: ${TABLE}.TDA_ART_CPropiedad ;;
  }
  dimension: tda_art_cproyecto {
    type: number
    sql: ${TABLE}.TDA_ART_CProyecto ;;
  }
  dimension: tda_art_cseco_perecedero {
    type: string
    sql: ${TABLE}.TDA_ART_CSecoPerecedero ;;
  }
  dimension: tda_art_csub_familia {
    type: number
    sql: ${TABLE}.TDA_ART_CSubFamilia ;;
  }
  dimension: tda_art_csub_familia_dms {
    type: number
    sql: ${TABLE}.TDA_ART_CSubFamilia_DMS ;;
  }
  dimension: tda_art_csub_familia_virtual {
    type: number
    sql: ${TABLE}.TDA_ART_CSubFamiliaVirtual ;;
  }
  dimension: tda_art_ctalla {
    type: string
    sql: ${TABLE}.TDA_ART_CTalla ;;
  }
  dimension: tda_art_ctiene_aplicaciones {
    type: string
    sql: ${TABLE}.TDA_ART_CTieneAplicaciones ;;
  }
  dimension: tda_art_ctiene_bordado {
    type: string
    sql: ${TABLE}.TDA_ART_CTieneBordado ;;
  }
  dimension: tda_art_ctiene_estampado {
    type: string
    sql: ${TABLE}.TDA_ART_CTieneEstampado ;;
  }
  dimension: tda_art_ctiene_licencia {
    type: string
    sql: ${TABLE}.TDA_ART_CTieneLicencia ;;
  }
  dimension: tda_art_ctipo_articulo {
    type: string
    sql: ${TABLE}.TDA_ART_CTipoArticulo ;;
  }
  dimension: tda_art_ctipo_codigo_barras {
    type: string
    sql: ${TABLE}.TDA_ART_CTipoCodigoBarras ;;
  }
  dimension: tda_art_ctipo_color {
    type: number
    sql: ${TABLE}.TDA_ART_CTipoColor ;;
  }
  dimension: tda_art_ctipo_cuello {
    type: number
    sql: ${TABLE}.TDA_ART_CTipoCuello ;;
  }
  dimension: tda_art_ctipo_manga {
    type: number
    sql: ${TABLE}.TDA_ART_CTipoManga ;;
  }
  dimension: tda_art_ctipo_marca {
    type: number
    sql: ${TABLE}.TDA_ART_CTipoMarca ;;
  }
  dimension: tda_art_ctipo_talla {
    type: number
    sql: ${TABLE}.TDA_ART_CTipoTalla ;;
  }
  dimension: tda_art_cuom {
    type: number
    sql: ${TABLE}.TDA_ART_CUOM ;;
  }
  dimension: tda_art_dabasto_via {
    type: string
    sql: ${TABLE}.TDA_ART_DAbastoVia ;;
  }
  dimension: tda_art_darticulo {
    type: string
    sql: ${TABLE}.TDA_ART_DArticulo ;;
  }
  dimension: tda_art_darticulo_estilo {
    type: string
    sql: ${TABLE}.TDA_ART_DArticuloEstilo ;;
  }
  dimension: tda_art_darticulo_pos {
    type: string
    sql: ${TABLE}.TDA_ART_DArticuloPos ;;
  }
  dimension: tda_art_dcapacidad {
    type: string
    sql: ${TABLE}.TDA_ART_DCapacidad ;;
  }
  dimension: tda_art_dcat_extendido {
    type: string
    sql: ${TABLE}.TDA_ART_DCatExtendido ;;
  }
  dimension: tda_art_dclasificacion_marca {
    type: string
    sql: ${TABLE}.TDA_ART_DClasificacionMarca ;;
  }
  dimension: tda_art_dcolor {
    type: string
    sql: ${TABLE}.TDA_ART_DColor ;;
  }
  dimension: tda_art_dcomposicion {
    type: string
    sql: ${TABLE}.TDA_ART_DComposicion ;;
  }
  dimension: tda_art_dcomprador {
    type: string
    sql: ${TABLE}.TDA_ART_DComprador ;;
  }
  dimension: tda_art_dcuadro_basico {
    type: string
    sql: ${TABLE}.TDA_ART_DCuadroBasico ;;
  }
  dimension: tda_art_ddepto {
    type: string
    sql: ${TABLE}.TDA_ART_DDepto ;;
  }
  dimension: tda_art_ddepto_dms {
    type: string
    sql: ${TABLE}.TDA_ART_DDepto_DMS ;;
  }
  dimension: tda_art_ddepto_virtual {
    type: string
    sql: ${TABLE}.TDA_ART_DDeptoVirtual ;;
  }
  dimension: tda_art_ddireccion {
    type: string
    sql: ${TABLE}.TDA_ART_DDireccion ;;
  }
  dimension: tda_art_ddivision {
    type: string
    sql: ${TABLE}.TDA_ART_DDivision ;;
  }
  dimension: tda_art_destatus {
    type: string
    sql: ${TABLE}.TDA_ART_DEstatus ;;
  }
  dimension: tda_art_devento_comercial {
    type: string
    sql: ${TABLE}.TDA_ART_DEventoComercial ;;
  }
  dimension: tda_art_dfamilia {
    type: string
    sql: ${TABLE}.TDA_ART_DFamilia ;;
  }
  dimension: tda_art_dfamilia_dms {
    type: string
    sql: ${TABLE}.TDA_ART_DFamilia_DMS ;;
  }
  dimension: tda_art_dfamilia_virtual {
    type: string
    sql: ${TABLE}.TDA_ART_DFamiliaVirtual ;;
  }
  dimension: tda_art_dimportado {
    type: string
    sql: ${TABLE}.TDA_ART_DImportado ;;
  }
  dimension: tda_art_dliga {
    type: string
    sql: ${TABLE}.TDA_ART_DLiga ;;
  }
  dimension: tda_art_dmarca {
    type: string
    sql: ${TABLE}.TDA_ART_DMarca ;;
  }
  dimension: tda_art_dmodelo {
    type: string
    sql: ${TABLE}.TDA_ART_DModelo ;;
  }
  dimension: tda_art_dpropiedad {
    type: string
    sql: ${TABLE}.TDA_ART_DPropiedad ;;
  }
  dimension: tda_art_dproyecto {
    type: string
    sql: ${TABLE}.TDA_ART_DProyecto ;;
  }
  dimension: tda_art_dseco_perecedero {
    type: string
    sql: ${TABLE}.TDA_ART_DSecoPerecedero ;;
  }
  dimension: tda_art_dsub_familia {
    type: string
    sql: ${TABLE}.TDA_ART_DSubFamilia ;;
  }
  dimension: tda_art_dsub_familia_dms {
    type: string
    sql: ${TABLE}.TDA_ART_DSubFamilia_DMS ;;
  }
  dimension: tda_art_dsub_familia_virtual {
    type: string
    sql: ${TABLE}.TDA_ART_DSubFamiliaVirtual ;;
  }
  dimension: tda_art_dtalla {
    type: string
    sql: ${TABLE}.TDA_ART_DTalla ;;
  }
  dimension: tda_art_dtipo_articulo {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoArticulo ;;
  }
  dimension: tda_art_dtipo_articulo_estilo {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoArticuloEstilo ;;
  }
  dimension: tda_art_dtipo_codigo_barras {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoCodigoBarras ;;
  }
  dimension: tda_art_dtipo_color {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoColor ;;
  }
  dimension: tda_art_dtipo_cuello {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoCuello ;;
  }
  dimension: tda_art_dtipo_manga {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoManga ;;
  }
  dimension: tda_art_dtipo_marca {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoMarca ;;
  }
  dimension: tda_art_dtipo_marca_propia {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoMarcaPropia ;;
  }
  dimension: tda_art_dtipo_proc_hebusa {
    type: string
    sql: ${TABLE}.TDA_ART_DtipoProcHebusa ;;
  }
  dimension: tda_art_dtipo_talla {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoTalla ;;
  }
  dimension: tda_art_dtipo_venta {
    type: string
    sql: ${TABLE}.TDA_ART_DTipoVenta ;;
  }
  dimension: tda_art_duom {
    type: string
    sql: ${TABLE}.TDA_ART_DUOM ;;
  }
  dimension: tda_art_fecha_ingreso {
    type: number
    sql: ${TABLE}.TDA_ART_FechaIngreso ;;
  }
  dimension: tda_art_karticulo {
    type: number
    sql: ${TABLE}.TDA_ART_KArticulo ;;
  }
  dimension: tda_art_karticulo_estilo {
    type: number
    sql: ${TABLE}.TDA_ART_KArticuloEstilo ;;
  }
  dimension: tda_art_kclasificacion_marca {
    type: number
    sql: ${TABLE}.TDA_ART_KClasificacionMarca ;;
  }
  dimension: tda_art_kcolor {
    type: number
    sql: ${TABLE}.TDA_ART_KColor ;;
  }
  dimension: tda_art_ktalla {
    type: number
    sql: ${TABLE}.TDA_ART_KTalla ;;
  }
  dimension: tda_art_ktipo_articulo {
    type: number
    sql: ${TABLE}.TDA_ART_KTipoArticulo ;;
  }
  dimension: tda_art_ktipo_marca_propia {
    type: number
    sql: ${TABLE}.TDA_ART_KTipoMarcaPropia ;;
  }
  dimension: tda_art_ktipo_proc_hebusa {
    type: number
    sql: ${TABLE}.TDA_ART_KtipoProcHEBusa ;;
  }
  dimension: tda_art_ktipo_venta {
    type: number
    sql: ${TABLE}.TDA_ART_KTipoVenta ;;
  }
  dimension: tda_fecha_ult_mod {
    type: number
    sql: ${TABLE}.TDA_FechaUltMod ;;
  }
  dimension: tda_prv_kproveedor {
    type: number
    sql: ${TABLE}.TDA_PRV_KProveedor ;;
  }
  dimension: thvc_art_karticulo {
    type: number
    sql: ${TABLE}.THVC_ART_KArticulo ;;
  }
  dimension: thvc_channel_id {
    type: number
    sql: ${TABLE}.THVC_Channel_ID ;;
  }
  dimension: thvc_customer_detail_id {
    type: string
    sql: CAST(${TABLE}.THVC_Customer_Detail_ID AS STRING) ;;
  }
  dimension_group: thvc_fecha_proceso {
    label: "Fecha Proceso"
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.THVC_FechaProceso ;;
  }
  dimension: thvc_order_id {
    type: string
    sql: ${TABLE}.THVC_Order_ID ;;
  }
  dimension: thvc_payment_method_id {
    type: number
    sql: ${TABLE}.THVC_Payment_Method_ID ;;
  }
  dimension: thvc_tpo_cfecha_creacion {
    type: number
    sql: ${TABLE}.THVC_TPO_CFechaCreacion ;;
  }
  dimension: thvc_tpo_cfecha_entregada {
    type: number
    sql: ${TABLE}.THVC_TPO_CFechaEntregada ;;
  }
  dimension: thvc_tpo_cfecha_ordenada {
    type: number
    sql: ${TABLE}.THVC_TPO_CFechaOrdenada ;;
  }
  dimension: thvc_ung_kunidad_negocio {
    type: number
    sql: ${TABLE}.THVC_UNG_KUnidadNegocio ;;
  }
  dimension: thvc_vta_unidades_entregadas {
    type: number
    sql: ${TABLE}.THVC_VTA_UnidadesEntregadas ;;
  }
  dimension: thvc_vta_unidades_ordenadas {
    type: number
    sql: ${TABLE}.THVC_VTA_UnidadesOrdenadas ;;
  }
  dimension: thvc_vta_venta_entregada {
    type: number
    sql: ${TABLE}.THVC_VTA_VentaEntregada ;;
  }
  dimension: thvc_vta_venta_entregada_con_impuestos {
    type: number
    sql: ${TABLE}.THVC_VTA_VentaEntregada_ConImpuestos ;;
  }
  dimension: thvc_vta_venta_ordenada {
    type: number
    sql: ${TABLE}.THVC_VTA_VentaOrdenada ;;
  }
  measure: count {
    type: count
  }
}
