# The name of this view in Looker is "Wordcountyt"
view: wordcountyt {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.wordcountyt`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Common" in Explore.

  dimension: common {
    type: string
    sql: ${TABLE}.Common ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.Count ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_count {
    type: sum
    sql: ${count} ;;
  }

  measure: average_count {
    type: average
    sql: ${count} ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.Video_ID ;;
  }

  dimension: words {
    type: string
    sql: ${TABLE}.Words ;;
  }

  measure: count_all {
    type: count
    drill_fields: []
  }
}
