# The name of this view in Looker is "Wordcountreviews"
view: wordcountreviews {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.wordcountreviews`
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
    primary_key: yes
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
  }

  dimension: new_review {
    type: string
    sql: ${TABLE}.NewReview ;;
  }

  dimension: polarity {
    type: number
    sql: ${TABLE}.polarity ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.Product ;;
  }

  dimension: review {
    type: string
    sql: ${TABLE}.Review ;;
  }

  dimension: star_rating {
    type: number
    sql: ${TABLE}.Star_Rating ;;
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
