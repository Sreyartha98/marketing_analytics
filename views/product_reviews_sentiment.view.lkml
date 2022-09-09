# The name of this view in Looker is "Product Reviews Sentiment"
view: product_reviews_sentiment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.ProductReviewsSentiment`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Int64 Field 0" in Explore.

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_int64_field_0 {
    type: sum
    sql: ${int64_field_0} ;;
  }

  measure: average_int64_field_0 {
    type: average
    sql: ${int64_field_0} ;;
  }

  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
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
  dimension: sentiment {
    type: string
    sql: CASE
    WHEN (${TABLE}.polarity>=0.2 AND ${TABLE}magnitude > 0.1 )THEN "Positive"
    WHEN (${TABLE}.polarity< -0.1 AND ${TABLE}magnitude > 0.1 ) THEN "Negative"
    ELSE "Neutral"
END ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
