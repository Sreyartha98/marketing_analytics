# The name of this view in Looker is "Audience Cohorts Kmeans Prediction"
view: audience_cohorts_kmeans_prediction {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.audience_cohorts_kmeans_prediction`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Item Quantity" in Explore.

  dimension: avg_item_quantity {
    type: number
    sql: ${TABLE}.avg_item_quantity ;;
  }

  dimension: centroid_id {
    type: number
    sql: ${TABLE}.CENTROID_ID ;;
  }

  dimension: engagement_rate {
    type: number
    sql: ${TABLE}.engagement_rate ;;
  }

  dimension: engagement_time_seconds {
    type: number
    sql: ${TABLE}.engagement_time_seconds ;;
  }

  dimension: entrances {
    type: number
    sql: ${TABLE}.entrances ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
  }

  dimension: had_purchased_before {
    type: number
    sql: ${TABLE}.had_purchased_before ;;
  }

  dimension: item_brand {
    type: string
    sql: ${TABLE}.item_brand ;;
  }

  dimension: item_category {
    type: string
    sql: ${TABLE}.item_category ;;
  }

  dimension: item_category2 {
    type: string
    sql: ${TABLE}.item_category2 ;;
  }

  dimension: item_category3 {
    type: string
    sql: ${TABLE}.item_category3 ;;
  }

  dimension: item_category4 {
    type: string
    sql: ${TABLE}.item_category4 ;;
  }

  dimension: item_id {
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: item_variant {
    type: string
    sql: ${TABLE}.item_variant ;;
  }

  dimension: predicted_user_ltv_revenue {
    type: number
    sql: ${TABLE}.predicted_user_ltv_revenue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_predicted_user_ltv_revenue {
    type: sum
    sql: ${predicted_user_ltv_revenue} ;;
  }

  measure: average_predicted_user_ltv_revenue {
    type: average
    sql: ${predicted_user_ltv_revenue} ;;
  }

  dimension: product_current_price {
    type: number
    sql: ${TABLE}.product_current_price ;;
  }

  dimension: purchase_likelihood {
    type: number
    sql: ${TABLE}.purchase_likelihood ;;
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [item_name]
  }
}
