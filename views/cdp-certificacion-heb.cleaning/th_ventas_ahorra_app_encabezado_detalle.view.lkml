# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: th_ventas_ahorra_app_encabezado_detalle {
  hidden: yes
    join: th_ventas_ahorra_app_encabezado_detalle__detalle {
      view_label: "Th Ventas Ahorra App Encabezado Detalle: Detalle"
      sql: LEFT JOIN UNNEST(${th_ventas_ahorra_app_encabezado_detalle.detalle}) as th_ventas_ahorra_app_encabezado_detalle__detalle ;;
      relationship: one_to_many
    }
}
view: th_ventas_ahorra_app_encabezado_detalle {
  sql_table_name: `cdp-certificacion-heb.cleaning.TH_Ventas_AhorraApp_Encabezado_Detalle` ;;

  dimension: detalle {
    hidden: yes
    sql: ${TABLE}.detalle ;;
  }
  dimension: tdt_fecha_proceso {
    type: number
    sql: ${TABLE}.TDT_FechaProceso ;;
  }
  dimension: tdt_tpo_canio {
    type: number
    sql: ${TABLE}.TDT_TPO_CAnio ;;
  }
  dimension: tdt_tpo_canio_fiscal {
    type: number
    sql: ${TABLE}.TDT_TPO_CAnioFiscal ;;
  }
  dimension: tdt_tpo_cfecha {
    type: number
    sql: ${TABLE}.TDT_TPO_CFecha ;;
  }
  dimension: tdt_tpo_cfestivo {
    type: number
    sql: ${TABLE}.TDT_TPO_CFestivo ;;
  }
  dimension: tdt_tpo_cmes {
    type: number
    sql: ${TABLE}.TDT_TPO_CMes ;;
  }
  dimension: tdt_tpo_cperiodo {
    type: number
    sql: ${TABLE}.TDT_TPO_CPeriodo ;;
  }
  dimension: tdt_tpo_cquarter {
    type: number
    sql: ${TABLE}.TDT_TPO_CQuarter ;;
  }
  dimension: tdt_tpo_csem_fiscal {
    type: number
    sql: ${TABLE}.TDT_TPO_CSemFiscal ;;
  }
  dimension: tdt_tpo_csem_periodo {
    type: number
    sql: ${TABLE}.TDT_TPO_CSemPeriodo ;;
  }
  dimension: tdt_tpo_ddia_semana {
    type: string
    sql: ${TABLE}.TDT_TPO_DDiaSemana ;;
  }
  dimension: tdt_tpo_dfestivo {
    type: string
    sql: ${TABLE}.TDT_TPO_DFestivo ;;
  }
  dimension: tdt_tpo_dfin_semana {
    type: string
    sql: ${TABLE}.TDT_TPO_DFinSemana ;;
  }
  dimension: tdt_tpo_dquincena {
    type: string
    sql: ${TABLE}.TDT_TPO_DQuincena ;;
  }
  dimension_group: tdun_fecha_proceso {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.TDUN_FechaProceso ;;
  }
  dimension: tdun_ung_cbanner {
    type: number
    sql: ${TABLE}.TDUN_UNG_CBanner ;;
  }
  dimension: tdun_ung_cciudad {
    type: number
    sql: ${TABLE}.TDUN_UNG_CCiudad ;;
  }
  dimension: tdun_ung_ccluster {
    type: number
    sql: ${TABLE}.TDUN_UNG_CCluster ;;
  }
  dimension: tdun_ung_ccluster_eu {
    type: number
    sql: ${TABLE}.TDUN_UNG_CCluster_EU ;;
  }
  dimension: tdun_ung_ccodigo_postal {
    type: number
    sql: ${TABLE}.TDUN_UNG_CCodigoPostal ;;
  }
  dimension: tdun_ung_cestatus {
    type: number
    sql: ${TABLE}.TDUN_UNG_CEstatus ;;
  }
  dimension: tdun_ung_cfecha_apertura {
    type: number
    sql: ${TABLE}.TDUN_UNG_CFECHA_Apertura ;;
  }
  dimension: tdun_ung_cfecha_apertura_ventas_dom {
    type: number
    sql: ${TABLE}.TDUN_UNG_CFecha_Apertura_VentasDom ;;
  }
  dimension: tdun_ung_cfecha_cambio {
    type: number
    sql: ${TABLE}.TDUN_UNG_CFECHA_Cambio ;;
  }
  dimension: tdun_ung_cfecha_remodelacion {
    type: number
    sql: ${TABLE}.TDUN_UNG_CFecha_Remodelacion ;;
  }
  dimension: tdun_ung_cgte_regional {
    type: number
    sql: ${TABLE}.TDUN_UNG_CGteRegional ;;
  }
  dimension: tdun_ung_clatitud {
    type: number
    sql: ${TABLE}.TDUN_UNG_CLatitud ;;
  }
  dimension: tdun_ung_clongitud {
    type: number
    sql: ${TABLE}.TDUN_UNG_CLongitud ;;
  }
  dimension: tdun_ung_ctamano_tienda {
    type: number
    sql: ${TABLE}.TDUN_UNG_CTamanoTienda ;;
  }
  dimension: tdun_ung_czona_geo {
    type: number
    sql: ${TABLE}.TDUN_UNG_CZonaGeo ;;
  }
  dimension: tdun_ung_czona_precios {
    type: number
    sql: ${TABLE}.TDUN_UNG_CZonaPrecios ;;
  }
  dimension: tdun_ung_dbanner {
    type: string
    sql: ${TABLE}.TDUN_UNG_DBanner ;;
  }
  dimension: tdun_ung_dciudad {
    type: string
    sql: ${TABLE}.TDUN_UNG_DCiudad ;;
  }
  dimension: tdun_ung_dclasificacion1 {
    type: string
    sql: ${TABLE}.TDUN_UNG_DClasificacion1 ;;
  }
  dimension: tdun_ung_dcluster {
    type: string
    sql: ${TABLE}.TDUN_UNG_DCluster ;;
  }
  dimension: tdun_ung_dcluster_eu {
    type: string
    sql: ${TABLE}.TDUN_UNG_DCluster_EU ;;
  }
  dimension: tdun_ung_destatus {
    type: string
    sql: ${TABLE}.TDUN_UNG_DEstatus ;;
  }
  dimension: tdun_ung_dgte_regional {
    type: string
    sql: ${TABLE}.TDUN_UNG_DGteRegional ;;
  }
  dimension: tdun_ung_dnivel_socio_eco {
    type: string
    sql: ${TABLE}.TDUN_UNG_DNivelSocioEco ;;
  }
  dimension: tdun_ung_dtamanio {
    type: string
    sql: ${TABLE}.TDUN_UNG_DTamanio ;;
  }
  dimension: tdun_ung_dtipo_unidades_neg {
    type: string
    sql: ${TABLE}.TDUN_UNG_DTipoUnidadesNeg ;;
  }
  dimension: tdun_ung_dunidad_negocio {
    type: string
    sql: ${TABLE}.TDUN_UNG_DUnidadNegocio ;;
  }
  dimension: tdun_ung_dzona_geo {
    type: string
    sql: ${TABLE}.TDUN_UNG_DZonaGeo ;;
  }
  dimension: tdun_ung_dzona_precios {
    type: string
    sql: ${TABLE}.TDUN_UNG_DZonaPrecios ;;
  }
  dimension: tdun_ung_kunidad_negocio {
    type: number
    sql: ${TABLE}.TDUN_UNG_KUnidadNegocio ;;
  }
  dimension: thvaae_autocobro {
    type: number
    sql: ${TABLE}.THVAAE_Autocobro ;;
  }
  dimension: thvaae_cajero {
    type: number
    sql: ${TABLE}.THVAAE_Cajero ;;
  }
  dimension: thvaae_hora {
    type: string
    sql: ${TABLE}.THVAAE_Hora ;;
  }
  dimension: thvaae_ticket_id {
    type: number
    sql: ${TABLE}.THVAAE_Ticket_ID ;;
  }
  dimension: thvaae_tpo_cfecha {
    type: number
    sql: ${TABLE}.THVAAE_TPO_CFecha ;;
  }
  dimension: thvaae_ung_kunidad_negocio {
    type: number
    sql: ${TABLE}.THVAAE_UNG_KUnidadNegocio ;;
  }
  dimension: thvaae_vca_cliente {
    type: string
    sql: ${TABLE}.THVAAE_VCA_Cliente ;;
  }
  dimension: thvaae_vca_monto_descuento {
    type: number
    sql: ${TABLE}.THVAAE_VCA_MontoDescuento ;;
  }
  dimension: thvaae_vca_monto_pagado {
    type: number
    sql: ${TABLE}.THVAAE_VCA_MontoPagado ;;
  }
  measure: count {
    type: count
  }
}

view: th_ventas_ahorra_app_encabezado_detalle__detalle {

  dimension: tda_art_canio {
    type: number
    sql: TDA_ART_CAnio ;;
  }
  dimension: tda_art_ccat_extendido {
    type: number
    sql: TDA_ART_CCatExtendido ;;
  }
  dimension: tda_art_ccod_pro {
    type: string
    sql: TDA_ART_CCodPro ;;
  }
  dimension: tda_art_ccodigo_barras {
    type: string
    sql: TDA_ART_CCodigoBarras ;;
  }
  dimension: tda_art_ccolor {
    type: number
    sql: TDA_ART_CColor ;;
  }
  dimension: tda_art_ccomposicion {
    type: number
    sql: TDA_ART_CComposicion ;;
  }
  dimension: tda_art_ccomprador {
    type: number
    sql: TDA_ART_CComprador ;;
  }
  dimension: tda_art_ccuadro_basico {
    type: number
    sql: TDA_ART_CCuadroBasico ;;
  }
  dimension: tda_art_cdepto {
    type: number
    sql: TDA_ART_CDepto ;;
  }
  dimension: tda_art_cdepto_virtual {
    type: number
    sql: TDA_ART_CDeptoVirtual ;;
  }
  dimension: tda_art_cdireccion {
    type: number
    sql: TDA_ART_CDireccion ;;
  }
  dimension: tda_art_cdivision {
    type: number
    sql: TDA_ART_CDivision ;;
  }
  dimension: tda_art_cestatus {
    type: string
    sql: TDA_ART_CEstatus ;;
  }
  dimension: tda_art_cevento_comercial {
    type: number
    sql: TDA_ART_CEventoComercial ;;
  }
  dimension: tda_art_cfact_conv {
    type: number
    sql: TDA_ART_CFactConv ;;
  }
  dimension: tda_art_cfamilia {
    type: number
    sql: TDA_ART_CFamilia ;;
  }
  dimension: tda_art_cfamilia_dms {
    type: number
    sql: TDA_ART_CFamilia_DMS ;;
  }
  dimension: tda_art_cpropiedad {
    type: number
    sql: TDA_ART_CPropiedad ;;
  }
  dimension: tda_art_cproyecto {
    type: number
    sql: TDA_ART_CProyecto ;;
  }
  dimension: tda_art_cseco_perecedero {
    type: string
    sql: TDA_ART_CSecoPerecedero ;;
  }
  dimension: tda_art_csub_familia {
    type: number
    sql: TDA_ART_CSubFamilia ;;
  }
  dimension: tda_art_csub_familia_dms {
    type: number
    sql: TDA_ART_CSubFamilia_DMS ;;
  }
  dimension: tda_art_csub_familia_virtual {
    type: number
    sql: TDA_ART_CSubFamiliaVirtual ;;
  }
  dimension: tda_art_ctalla {
    type: string
    sql: TDA_ART_CTalla ;;
  }
  dimension: tda_art_ctiene_aplicaciones {
    type: string
    sql: TDA_ART_CTieneAplicaciones ;;
  }
  dimension: tda_art_ctiene_bordado {
    type: string
    sql: TDA_ART_CTieneBordado ;;
  }
  dimension: tda_art_ctiene_estampado {
    type: string
    sql: TDA_ART_CTieneEstampado ;;
  }
  dimension: tda_art_ctiene_licencia {
    type: string
    sql: TDA_ART_CTieneLicencia ;;
  }
  dimension: tda_art_ctipo_articulo {
    type: string
    sql: TDA_ART_CTipoArticulo ;;
  }
  dimension: tda_art_ctipo_codigo_barras {
    type: string
    sql: TDA_ART_CTipoCodigoBarras ;;
  }
  dimension: tda_art_ctipo_color {
    type: number
    sql: TDA_ART_CTipoColor ;;
  }
  dimension: tda_art_ctipo_cuello {
    type: number
    sql: TDA_ART_CTipoCuello ;;
  }
  dimension: tda_art_ctipo_manga {
    type: number
    sql: TDA_ART_CTipoManga ;;
  }
  dimension: tda_art_ctipo_marca {
    type: number
    sql: TDA_ART_CTipoMarca ;;
  }
  dimension: tda_art_ctipo_talla {
    type: number
    sql: TDA_ART_CTipoTalla ;;
  }
  dimension: tda_art_cuom {
    type: number
    sql: TDA_ART_CUOM ;;
  }
  dimension: tda_art_dabasto_via {
    type: string
    sql: TDA_ART_DAbastoVia ;;
  }
  dimension: tda_art_darticulo {
    type: string
    sql: TDA_ART_DArticulo ;;
  }
  dimension: tda_art_darticulo_estilo {
    type: string
    sql: TDA_ART_DArticuloEstilo ;;
  }
  dimension: tda_art_darticulo_pos {
    type: string
    sql: TDA_ART_DArticuloPos ;;
  }
  dimension: tda_art_dcapacidad {
    type: string
    sql: TDA_ART_DCapacidad ;;
  }
  dimension: tda_art_dcat_extendido {
    type: string
    sql: TDA_ART_DCatExtendido ;;
  }
  dimension: tda_art_dclasificacion_marca {
    type: string
    sql: TDA_ART_DClasificacionMarca ;;
  }
  dimension: tda_art_dcolor {
    type: string
    sql: TDA_ART_DColor ;;
  }
  dimension: tda_art_dcomposicion {
    type: string
    sql: TDA_ART_DComposicion ;;
  }
  dimension: tda_art_dcomprador {
    type: string
    sql: TDA_ART_DComprador ;;
  }
  dimension: tda_art_dcuadro_basico {
    type: string
    sql: TDA_ART_DCuadroBasico ;;
  }
  dimension: tda_art_ddepto {
    type: string
    sql: TDA_ART_DDepto ;;
  }
  dimension: tda_art_ddepto_dms {
    type: string
    sql: TDA_ART_DDepto_DMS ;;
  }
  dimension: tda_art_ddepto_virtual {
    type: string
    sql: TDA_ART_DDeptoVirtual ;;
  }
  dimension: tda_art_ddireccion {
    type: string
    sql: TDA_ART_DDireccion ;;
  }
  dimension: tda_art_ddivision {
    type: string
    sql: TDA_ART_DDivision ;;
  }
  dimension: tda_art_destatus {
    type: string
    sql: TDA_ART_DEstatus ;;
  }
  dimension: tda_art_devento_comercial {
    type: string
    sql: TDA_ART_DEventoComercial ;;
  }
  dimension: tda_art_dfamilia {
    type: string
    sql: TDA_ART_DFamilia ;;
  }
  dimension: tda_art_dfamilia_dms {
    type: string
    sql: TDA_ART_DFamilia_DMS ;;
  }
  dimension: tda_art_dfamilia_virtual {
    type: string
    sql: TDA_ART_DFamiliaVirtual ;;
  }
  dimension: tda_art_dimportado {
    type: string
    sql: TDA_ART_DImportado ;;
  }
  dimension: tda_art_dliga {
    type: string
    sql: TDA_ART_DLiga ;;
  }
  dimension: tda_art_dmarca {
    type: string
    sql: TDA_ART_DMarca ;;
  }
  dimension: tda_art_dmodelo {
    type: string
    sql: TDA_ART_DModelo ;;
  }
  dimension: tda_art_dpropiedad {
    type: string
    sql: TDA_ART_DPropiedad ;;
  }
  dimension: tda_art_dproyecto {
    type: string
    sql: TDA_ART_DProyecto ;;
  }
  dimension: tda_art_dseco_perecedero {
    type: string
    sql: TDA_ART_DSecoPerecedero ;;
  }
  dimension: tda_art_dsub_familia {
    type: string
    sql: TDA_ART_DSubFamilia ;;
  }
  dimension: tda_art_dsub_familia_dms {
    type: string
    sql: TDA_ART_DSubFamilia_DMS ;;
  }
  dimension: tda_art_dsub_familia_virtual {
    type: string
    sql: TDA_ART_DSubFamiliaVirtual ;;
  }
  dimension: tda_art_dtalla {
    type: string
    sql: TDA_ART_DTalla ;;
  }
  dimension: tda_art_dtipo_articulo {
    type: string
    sql: TDA_ART_DTipoArticulo ;;
  }
  dimension: tda_art_dtipo_articulo_estilo {
    type: string
    sql: TDA_ART_DTipoArticuloEstilo ;;
  }
  dimension: tda_art_dtipo_codigo_barras {
    type: string
    sql: TDA_ART_DTipoCodigoBarras ;;
  }
  dimension: tda_art_dtipo_color {
    type: string
    sql: TDA_ART_DTipoColor ;;
  }
  dimension: tda_art_dtipo_cuello {
    type: string
    sql: TDA_ART_DTipoCuello ;;
  }
  dimension: tda_art_dtipo_manga {
    type: string
    sql: TDA_ART_DTipoManga ;;
  }
  dimension: tda_art_dtipo_marca {
    type: string
    sql: TDA_ART_DTipoMarca ;;
  }
  dimension: tda_art_dtipo_marca_propia {
    type: string
    sql: TDA_ART_DTipoMarcaPropia ;;
  }
  dimension: tda_art_dtipo_proc_hebusa {
    type: string
    sql: TDA_ART_DtipoProcHebusa ;;
  }
  dimension: tda_art_dtipo_talla {
    type: string
    sql: TDA_ART_DTipoTalla ;;
  }
  dimension: tda_art_dtipo_venta {
    type: string
    sql: TDA_ART_DTipoVenta ;;
  }
  dimension: tda_art_duom {
    type: string
    sql: TDA_ART_DUOM ;;
  }
  dimension: tda_art_fecha_ingreso {
    type: number
    sql: TDA_ART_FechaIngreso ;;
  }
  dimension: tda_art_karticulo {
    type: number
    sql: TDA_ART_KArticulo ;;
  }
  dimension: tda_art_karticulo_estilo {
    type: number
    sql: TDA_ART_KArticuloEstilo ;;
  }
  dimension: tda_art_kclasificacion_marca {
    type: number
    sql: TDA_ART_KClasificacionMarca ;;
  }
  dimension: tda_art_kcolor {
    type: number
    sql: TDA_ART_KColor ;;
  }
  dimension: tda_art_ktalla {
    type: number
    sql: TDA_ART_KTalla ;;
  }
  dimension: tda_art_ktipo_articulo {
    type: number
    sql: TDA_ART_KTipoArticulo ;;
  }
  dimension: tda_art_ktipo_marca_propia {
    type: number
    sql: TDA_ART_KTipoMarcaPropia ;;
  }
  dimension: tda_art_ktipo_proc_hebusa {
    type: number
    sql: TDA_ART_KtipoProcHEBusa ;;
  }
  dimension: tda_art_ktipo_venta {
    type: number
    sql: TDA_ART_KTipoVenta ;;
  }
  dimension: tda_fecha_ult_mod {
    type: number
    sql: TDA_FechaUltMod ;;
  }
  dimension: tda_prv_kproveedor {
    type: number
    sql: TDA_PRV_KProveedor ;;
  }
  dimension: tdoaa_descripcion_incentivo {
    type: string
    sql: TDOAA_DescripcionIncentivo ;;
  }
  dimension: tdoaa_fecha_fin {
    type: number
    sql: TDOAA_FechaFin ;;
  }
  dimension: tdoaa_fecha_inicio {
    type: number
    sql: TDOAA_FechaInicio ;;
  }
  dimension: tdoaa_id_discount {
    type: number
    value_format_name: id
    sql: TDOAA_ID_Discount ;;
  }
  dimension: tdoaa_id_incentivo {
    type: number
    value_format_name: id
    sql: TDOAA_ID_Incentivo ;;
  }
  dimension: tdoaa_id_reward {
    type: number
    value_format_name: id
    sql: TDOAA_ID_Reward ;;
  }
  dimension: tdoaa_tipo_oferta {
    type: number
    sql: TDOAA_TipoOferta ;;
  }
  dimension: tdoaa_tipo_oferta_copient {
    type: number
    sql: TDOAA_TipoOfertaCopient ;;
  }
  dimension: th_ventas_ahorra_app_encabezado_detalle__detalle {
    type: string
    hidden: yes
    sql: th_ventas_ahorra_app_encabezado_detalle__detalle ;;
  }
  dimension: thdaad_art_karticulo {
    type: number
    sql: THDAAD_ART_KArticulo ;;
  }
  dimension: thdaad_dca_descuento {
    type: number
    sql: THDAAD_DCA_Descuento ;;
  }
  dimension: thdaad_dca_unidades {
    type: number
    sql: THDAAD_DCA_Unidades ;;
  }
  dimension: thdaad_id_incentivo_item {
    type: number
    value_format_name: id
    sql: THDAAD_ID_Incentivo_Item ;;
  }
  dimension: thdaad_ticket_id {
    type: number
    sql: THDAAD_Ticket_ID ;;
  }
  dimension: thdaad_tpo_cfecha {
    type: number
    sql: THDAAD_TPO_CFecha ;;
  }
  dimension: thdaad_ung_kunidad_negocio {
    type: number
    sql: THDAAD_UNG_KUnidadNegocio ;;
  }
  dimension: thvaad_art_karticulo {
    type: number
    sql: THVAAD_ART_KArticulo ;;
  }
  dimension: thvaad_ticket_id {
    type: number
    sql: THVAAD_Ticket_ID ;;
  }
  dimension: thvaad_tpo_cfecha {
    type: number
    sql: THVAAD_TPO_CFecha ;;
  }
  dimension: thvaad_ung_kunidad_negocio {
    type: number
    sql: THVAAD_UNG_KUnidadNegocio ;;
  }
  dimension: thvaad_vca_unidades {
    type: number
    sql: THVAAD_VCA_Unidades ;;
  }
  dimension: thvaad_vca_venta_normal {
    type: number
    sql: THVAAD_VCA_VentaNormal ;;
  }
  dimension: thvaad_vca_ventas {
    type: number
    sql: THVAAD_VCA_Ventas ;;
  }
  dimension: thvaad_vca_ventascon_impuestos {
    type: number
    sql: THVAAD_VCA_VentasconImpuestos ;;
  }
}
