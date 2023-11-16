view: kpiml_ltv {
  sql_table_name: `cdp-certificacion-heb.kpi_dev.kpiml_ltv` ;;

  dimension: cluster {
    type: number
    sql: ${TABLE}.cluster ;;
  }
  dimension: customer_detail_id {
    primary_key: yes
    type: string
    sql: CAST(${TABLE}.Customer_Detail_ID AS STRING) ;;
  }
  dimension: ltv {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.ltv ;;
  }
  measure: count {
    type: count
  }
}
