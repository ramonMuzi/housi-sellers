view: items_total_smartbreak {
  sql_table_name: vmpay.items_total_smartbreak ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  measure: sum_amount {
    type: sum
    sql: ${TABLE}.amount ;;
    value_format: "[>=1000000]\R\$ 0.00,,\"M\";[>=1000]\R\$ 0.00,\"K\";\R\$ 0.00"
  }
  dimension_group: data_da_venda {
    type: time
    sql: ${TABLE}.data_da_venda ;;
  }
  dimension: good_id {
    type: number
    sql: ${TABLE}.`good.id` ;;
  }
  dimension: good_name {
    type: string
    sql: ${TABLE}.`good.name` ;;
  }
  dimension: good_upc_code {
    type: string
    sql: ${TABLE}.`good.upc_code` ;;
  }
  dimension: number {
    type: number
    sql: ${TABLE}.number ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  measure: sum_quantity {
    type: sum
    sql: ${TABLE}.quantity ;;
    value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0"
  }
  dimension: id_venda {
    type: string
    sql: ${TABLE}.`id_venda` ;;
  }
  dimension: local_venda_housi {
    type: string
    sql: ${TABLE}.`local_venda` ;;
  }
  dimension: local_venda {
    type: string
    sql: replace(${TABLE}.`local_venda`,"HOUSI ","") ;;
  }
  dimension: local_venda_HTML {
    type: string
    sql: replace(${TABLE}.`local_venda`,"HOUSI ","") ;;
    html: <div>
          {% if value == 'Paulista' or value == 'Faria Lima'%}
            <b> Lugarzinho {{value}}</b>
            {%else%}
            <h1> Não tem</h1>
            {%endif%}
            </div>;;
  }
  measure: count {
    type: count
    drill_fields: [good_name]
  }

}
