# The name of this view in Looker is "Page Referrer Mod"
view: page_referrer_mod {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.page_referrer_mod`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Page Referrer" in Explore.

  dimension: page_referrer {
    type: string
    sql: ${TABLE}.page_referrer ;;
  }

  dimension: page_referrer_new {
    type: string
    sql: ${TABLE}.page_referrer_new ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
