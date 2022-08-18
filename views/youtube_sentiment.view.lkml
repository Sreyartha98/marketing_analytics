# The name of this view in Looker is "Youtube Sentiment"
view: youtube_sentiment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.YoutubeSentiment`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Author" in Explore.

  dimension: author {
    type: string
    sql: ${TABLE}.Author ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.Comment ;;
  }

  dimension: comment_id {
    type: string
    sql: ${TABLE}.Comment_ID ;;
  }

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

  dimension: like_count {
    type: number
    sql: ${TABLE}.Like_Count ;;
  }

  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
  }

  dimension: polarity {
    type: number
    sql: ${TABLE}.polarity ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.Video_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
