# The name of this view in Looker is "Page Mapping Mod"
view: page_mapping_mod {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.page_mapping_mod`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Mapping" in Explore.

  dimension: mapping {
    type: string
    sql: ${TABLE}.mapping ;;
  }

  dimension: page_location {
    type: string
    sql: ${TABLE}.page_location ;;
  }

  dimension: page_location_new {
    type: string
    sql: ${TABLE}.page_location_new ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.page_title ;;
  }

  dimension: page_title_new {
    type: string
    sql: ${TABLE}.page_title_new ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
