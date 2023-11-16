view: kpiml_rfm {
  sql_table_name: `cdp-certificacion-heb.kpi_dev.kpiml_rfm` ;;

  dimension: cluster {
    type: number
    sql: ${TABLE}.cluster ;;
  }
  dimension: customer_detail_id {
    primary_key: yes
    type: string
    sql: CAST(${TABLE}.Customer_Detail_ID AS STRING) ;;
  }
  measure: count {
    type: count
  }
}
