connection: "bq-cdp-certification-heb"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: vista360_draft_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vista360_draft_default_datagroup

explore:customer_address_ods  {
  join: kpiml_churn {
    sql_on: ${customer_address_ods.caods_customer_detail_id}=${kpiml_churn.customer_detail_id} ;;
    relationship: one_to_many
  }
  join: kpiml_ltv {
    sql_on: ${customer_address_ods.caods_customer_detail_id}=${kpiml_ltv.customer_detail_id} ;;
    relationship: one_to_many
  }
  join: kpiml_rfm {
    sql_on: ${customer_address_ods.caods_customer_detail_id}=${kpiml_rfm.customer_detail_id} ;;
    relationship: one_to_many
  }
  join: td_orden_encabezado_detalle {
    sql_on: ${customer_address_ods.caods_customer_detail_id}= ${td_orden_encabezado_detalle.customer_detail_id};;
    relationship: one_to_many
  }
  join: th_ventas_clientes_customer_sales_articulo {
    sql_on: ${customer_address_ods.caods_customer_detail_id}=${th_ventas_clientes_customer_sales_articulo.csods_customer_detail_id} ;;
    relationship: one_to_many
  }
}
