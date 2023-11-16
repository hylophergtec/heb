view: kpiml_churn {
  sql_table_name: `cdp-certificacion-heb.kpi_dev.kpiml_churn` ;;

  dimension: customer_detail_id {
    primary_key: yes
    type: string
    sql: CAST(${TABLE}.Customer_Detail_ID AS STRING);;
  }
  dimension: keep_12_prob {
    value_format: "0.00\%"
    type: number
    sql: ${TABLE}.keep_12_prob ;;
  }
  dimension: keep_24_prob {
    value_format: "0.00\%"
    type: number
    sql: ${TABLE}.keep_24_prob ;;
  }
  measure: count {
    type: count
  }
}
