connection: "vmpay"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: vmpay_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}

persist_with: vmpay_default_datagroup

explore: items_total_smartbreak {}

explore: vendas_total_smartbreak {}
