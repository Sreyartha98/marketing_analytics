# The name of this view in Looker is "Demand Forecasting Predict Input"
view: demand_forecasting_predict_input {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.demand_forecasting_predict_input`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Count New Visitors" in Explore.

  dimension: count_new_visitors {
    type: number
    sql: ${TABLE}.count_new_visitors ;;
  }

  dimension: count_returning_visitors {
    type: number
    sql: ${TABLE}.count_returning_visitors ;;
  }

  dimension: day_of_the_month {
    type: number
    sql: ${TABLE}.day_of_the_month ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
  }

  dimension: google_product_category_id {
    type: number
    sql: ${TABLE}.google_product_category_id ;;
  }

  dimension: has_any_coupon {
    type: number
    sql: ${TABLE}.has_any_coupon ;;
  }

  dimension: has_any_promotion {
    type: number
    sql: ${TABLE}.has_any_promotion ;;
  }

  dimension: inventory_availability {
    type: string
    sql: ${TABLE}.inventory_availability ;;
  }

  dimension: inventory_item_position_at_store {
    type: number
    sql: ${TABLE}.inventory_item_position_at_store ;;
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

  dimension: month_of_the_year {
    type: number
    sql: ${TABLE}.month_of_the_year ;;
  }

  dimension: number_of_unique_users_interactions {
    type: number
    sql: ${TABLE}.number_of_unique_users_interactions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_number_of_unique_users_interactions {
    type: sum
    sql: ${number_of_unique_users_interactions} ;;
  }

  measure: average_number_of_unique_users_interactions {
    type: average
    sql: ${number_of_unique_users_interactions} ;;
  }

  dimension: product_current_price {
    type: number
    sql: ${TABLE}.product_current_price ;;
  }

  dimension: product_offer_id {
    type: string
    sql: ${TABLE}.product_offer_id ;;
  }

  dimension: store_code {
    type: number
    sql: ${TABLE}.store_code ;;
  }

  dimension: store_latitude {
    type: number
    sql: ${TABLE}.store_latitude ;;
  }

  dimension: store_longitude {
    type: number
    sql: ${TABLE}.store_longitude ;;
  }

  dimension: sum_add_to_cart_item {
    type: number
    sql: ${TABLE}.sum_add_to_cart_item ;;
  }

  dimension: sum_begin_checkout_item {
    type: number
    sql: ${TABLE}.sum_begin_checkout_item ;;
  }

  dimension: sum_item_purchases {
    type: number
    sql: ${TABLE}.sum_item_purchases ;;
  }

  dimension: sum_of_sessions {
    type: number
    sql: ${TABLE}.sum_of_sessions ;;
  }

  dimension: sum_select_item {
    type: number
    sql: ${TABLE}.sum_select_item ;;
  }

  dimension: sum_total_events {
    type: number
    sql: ${TABLE}.sum_total_events ;;
  }

  dimension: sum_view_item {
    type: number
    sql: ${TABLE}.sum_view_item ;;
  }

  dimension: total_amount_sold {
    type: number
    sql: ${TABLE}.total_amount_sold ;;
  }

  dimension: week_of_the_year {
    type: number
    sql: ${TABLE}.week_of_the_year ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [item_name]
  }
}
