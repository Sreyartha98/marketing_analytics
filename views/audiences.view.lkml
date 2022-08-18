# The name of this view in Looker is "Audiences"
view: audiences {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.audiences`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Audience" in Explore.

  dimension: audience {
    type: string
    sql: ${TABLE}.audience ;;
  }

  dimension: cohort {
    type: number
    sql: ${TABLE}.cohort ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cohort {
    type: sum
    sql: ${cohort} ;;
  }

  measure: average_cohort {
    type: average
    sql: ${cohort} ;;
  }

  dimension: cohort_size {
    type: number
    sql: ${TABLE}.cohort_size ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: score_max {
    type: number
    sql: ${TABLE}.score_max ;;
  }

  dimension: score_metric {
    type: string
    sql: ${TABLE}.score_metric ;;
  }

  dimension: score_min {
    type: number
    sql: ${TABLE}.score_min ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
