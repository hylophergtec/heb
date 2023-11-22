view: customer_address_ods {
  sql_table_name: `cdp-certificacion-heb.cleaning.Customer_Address_ODS` ;;

  dimension: caods_channel_id {
    type: number
    sql: ${TABLE}.CAODS_Channel_ID ;;
  }
  dimension: caods_city {
    type: string
    sql: ${TABLE}.CAODS_City ;;
  }
  dimension: caods_customer_detail_id {
    full_suggestions: yes
    label: "Customer detail ID"
    type: string
    sql: CAST(${TABLE}.CAODS_Customer_Detail_ID AS string);;
  }
  dimension: customer_detail_id_link {
    label: "Customer ID"
    type: string
    sql: ${caods_customer_detail_id} ;;
    link: {
      label: "Vista 360 cliente unico"
      url: "https://hebmx.cloud.looker.com/dashboards/3?Customer%20detail%20ID=&Fecha%20Proceso%20Year=&Order%20ID="
    }
  }
  dimension: caods_external_number_nbr {
    type: string
    sql: ${TABLE}.CAODS_External_Number_NBR ;;
  }
  dimension: caods_internal_number_nbr {
    type: string
    sql: ${TABLE}.CAODS_Internal_Number_NBR ;;
  }
  dimension: caods_is_active_sw {
    type: yesno
    sql: ${TABLE}.CAODS_IsActive_SW ;;
  }
  dimension: caods_neighborhood {
    type: string
    sql: ${TABLE}.CAODS_Neighborhood ;;
  }
  dimension_group: caods_operator_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CAODS_Operator_DT ;;
  }
  dimension: caods_operator_dv {
    type: string
    sql: ${TABLE}.CAODS_Operator_DV ;;
  }
  dimension: caods_operator_uid {
    type: string
    sql: ${TABLE}.CAODS_Operator_UID ;;
  }
  dimension: caods_state {
    type: string
    sql: ${TABLE}.CAODS_State ;;
  }
  dimension: caods_street_des {
    type: string
    sql: ${TABLE}.CAODS_Street_DES ;;
  }
  dimension: caods_zip_code_nbr {
    type: string
    sql: ${TABLE}.CAODS_ZipCode_NBR ;;
  }
  dimension_group: cods_birthdate_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CODS_Birthdate_DT ;;
  }
  dimension: cods_channel_id {
    type: number
    sql: ${TABLE}.CODS_Channel_ID ;;
  }
  dimension: cods_client_id {
    type: number
    sql: ${TABLE}.CODS_Client_ID ;;
  }
  dimension_group: cods_creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CODS_CREATION_DATE ;;
  }
  dimension: cods_customer_detail_id {
    type: number
    sql: ${TABLE}.CODS_Customer_Detail_ID ;;
  }
  dimension: cods_customer_source_id {
    type: string
    sql: ${TABLE}.CODS_Customer_Source_ID ;;
  }
  dimension: cods_customer_type_id {
    type: number
    sql: ${TABLE}.CODS_Customer_Type_ID ;;
  }
  dimension: cods_email {
    label: "Email"
    type: string
    sql: ${TABLE}.CODS_Email ;;
  }
  dimension: cods_fullname_nm {
    type: string
    sql: ${TABLE}.CODS_FULLNAME_NM ;;
  }
  dimension: cods_gender {
    type: string
    sql: ${TABLE}.CODS_Gender ;;
 }
dimension:looker_image{
  label: "Icon"
  type: string
    sql:${cods_gender} ;;
    html:<img src="https://storage.googleapis.com/df-exp-public-resources/vector-person.jpg" /> ;;
  }
  dimension: cods_is_active_sw {
    type: string
    sql: ${TABLE}.CODS_Is_Active_SW ;;
  }
  dimension: cods_is_newsletter {
    type: string
    sql: ${TABLE}.CODS_Is_Newsletter ;;
  }
  dimension: cods_is_newsletter_mktc {
    type: string
    sql: ${TABLE}.CODS_Is_Newsletter_MKTC ;;
  }
  dimension: cods_is_prime {
    type: number
    sql: ${TABLE}.CODS_is_prime ;;
  }
  dimension: cods_last_name_nm {
    label: "Apellido"
    type: string
    sql: ${TABLE}.CODS_LastName_NM ;;
  }
  dimension: cods_marital_status {
    type: string
    sql: ${TABLE}.CODS_Marital_Status ;;
  }
  dimension: cods_name_nm {
    label: "Nombre"
    type: string
    sql: ${TABLE}.CODS_Name_NM ;;
  }
  dimension_group: cods_operator_dt {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CODS_Operator_DT ;;
  }
  dimension: cods_operator_dv {
    type: string
    sql: ${TABLE}.CODS_Operator_DV ;;
  }
  dimension: cods_operator_uid {
    type: string
    sql: ${TABLE}.CODS_Operator_UID ;;
  }
  dimension: cods_phone_nbr {
    type: string
    sql: ${TABLE}.CODS_Phone_NBR ;;
  }
  dimension_group: cods_prime_date_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CODS_prime_date_from ;;
  }
  dimension_group: cods_prime_date_to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.CODS_prime_date_to ;;
  }
  dimension: cods_rfc {
    type: string
    sql: ${TABLE}.CODS_RFC ;;
  }
  dimension: cods_second_last_name_nm {
    type: string
    sql: ${TABLE}.CODS_SecondLastName_NM ;;
  }
  dimension: cods_second_phone {
    type: string
    sql: ${TABLE}.CODS_Second_Phone ;;
  }
  dimension: thcp_business_unit_id {
    type: number
    sql: ${TABLE}.THCP_Business_Unit_ID ;;
  }
  dimension: thcp_customer_detail_id {
    type: number
    sql: ${TABLE}.THCP_Customer_Detail_ID ;;
  }
  dimension: thcp_item_id {
    type: string
    sql: ${TABLE}.THCP_Item_ID ;;
  }
  dimension: thcp_prm_activaciones_previas {
    type: number
    sql: ${TABLE}.THCP_PRM_Activaciones_Previas ;;
  }
  dimension: thcp_prm_fecha_fin {
    type: number
    sql: ${TABLE}.THCP_PRM_Fecha_Fin ;;
  }
  dimension: thcp_prm_fecha_inicio {
    type: number
    sql: ${TABLE}.THCP_PRM_Fecha_Inicio ;;
  }
  dimension: thcp_prm_tipo_membresia {
    type: string
    sql: ${TABLE}.THCP_PRM_Tipo_Membresia ;;
  }
  measure: count {
    type: count
  }
}
