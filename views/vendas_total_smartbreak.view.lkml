view: vendas_total_smartbreak {
  sql_table_name: vmpay.vendas_total_smartbreak ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: client_id {
    type: number
    sql: ${TABLE}.`client.id` ;;
  }
  dimension: client_name {
    type: string
    sql: ${TABLE}.`client.name` ;;
  }
  dimension: customer_document {
    type: string
    sql: ${TABLE}.customer_document ;;
  }
  dimension: customer_email {
    type: string
    sql: ${TABLE}.customer_email ;;
  }
  dimension: customer_id {
    type: number
    sql: ${TABLE}.`customer.id` ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.`customer.name` ;;
  }
  dimension: danfe_url {
    type: string
    sql: ${TABLE}.danfe_url ;;
  }
  dimension: installation_id {
    type: number
    sql: ${TABLE}.installation_id ;;
  }
  dimension: issued_at {
    type: string
    sql: ${TABLE}.issued_at ;;
  }
  dimension: location_id {
    type: number
    sql: ${TABLE}.`location.id` ;;
  }
  dimension: location_name_housi {
    type: string
    sql: ${TABLE}.`location.name` ;;
  }
  dimension: location_name_HTML {
    type: string
    sql:  ${location_name};;
    html:
    {% if value == 'BELA CINTRA' or  value == 'PAULISTA'%}
      <b>Lugarzinho {{vendas_total_smartbreak.location_name.value}}</b>
    {% else %}
      <h2>Tem varios</h2>
    {% endif%}
    ;;
  }

  dimension: location_name {
    type: string
    sql: replace(${TABLE}.`location.name`,"HOUSI ","") ;;
  }
  parameter: predio {

  }

  dimension: machine_asset_number {
    type: string
    sql: ${TABLE}.`machine.asset_number` ;;
  }
  dimension: machine_id {
    type: number
    sql: ${TABLE}.`machine.id` ;;
  }
  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }
  dimension_group: occurred_at {
    type: time
    sql: ${TABLE}.occurred_at ;;
  }
  dimension: payment_eft_authorizer_id {
    type: number
    sql: ${TABLE}.`payment.eft_authorizer_id` ;;
  }
  dimension: payment_eft_card_brand_id {
    type: number
    sql: ${TABLE}.`payment.eft_card_brand_id` ;;
  }
  dimension: payment_eft_card_type_id {
    type: number
    sql: ${TABLE}.`payment.eft_card_type_id` ;;
  }
  dimension: payment_eft_provider_id {
    type: number
    sql: ${TABLE}.`payment.eft_provider_id` ;;
  }
  dimension: payment_kind {
    type: string
    sql: ${TABLE}.`payment.kind` ;;
  }
  dimension: payment_number_of_payments {
    type: number
    sql: ${TABLE}.`payment.number_of_payments` ;;
  }
  dimension: payment_payment_authorizer_id {
    type: number
    sql: ${TABLE}.`payment.payment_authorizer.id` ;;
  }
  dimension: payment_payment_authorizer_name {
    type: string
    sql: ${TABLE}.`payment.payment_authorizer.name` ;;
  }
  dimension: payment_request_number {
    type: string
    sql: ${TABLE}.`payment.request_number` ;;
  }
  dimension: series {
    type: string
    sql: ${TABLE}.series ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }
  measure: total_amount_sum {
    type: sum
    sql: ${TABLE}.total_amount ;;
    value_format: "[>=1000000]\R\$ 0.00,,\"M\";[>=1000]\R\$ 0.00,\"K\";\R\$ 0.00"
  }
  dimension: total_quantity {
    type: number
    sql: ${TABLE}.total_quantity ;;
  }
  measure: total_quantity_sum {
    type: sum
    sql: ${TABLE}.total_quantity ;;
    value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0.00"
  }
  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }
  dimension: xml_url {
    type: string
    sql: ${TABLE}.xml_url ;;
  }
  measure: count {
    type: count
    drill_fields: [id, client_name, customer_name, location_name, payment_payment_authorizer_name]
  }
}
