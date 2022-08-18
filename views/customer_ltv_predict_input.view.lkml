# The name of this view in Looker is "Customer Ltv Predict Input"
view: customer_ltv_predict_input {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.customer_ltv_predict_input`
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

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.bounce_rate ;;
  }

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: browser {
    type: string
    sql: ${TABLE}.browser ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}.browser_version ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: count_add_to_cart_item {
    type: number
    sql: ${TABLE}.count_add_to_cart_item ;;
  }

  dimension: count_begin_checkout_item {
    type: number
    sql: ${TABLE}.count_begin_checkout_item ;;
  }

  dimension: count_of_consecutive_days {
    type: number
    sql: ${TABLE}.count_of_consecutive_days ;;
  }

  dimension: count_of_days {
    type: number
    sql: ${TABLE}.count_of_days ;;
  }

  dimension: count_of_sessions {
    type: number
    sql: ${TABLE}.count_of_sessions ;;
  }

  dimension: count_select_item {
    type: number
    sql: ${TABLE}.count_select_item ;;
  }

  dimension: count_total_events {
    type: number
    sql: ${TABLE}.count_total_events ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_count_total_events {
    type: sum
    sql: ${count_total_events} ;;
  }

  measure: average_count_total_events {
    type: average
    sql: ${count_total_events} ;;
  }

  dimension: count_view_item {
    type: number
    sql: ${TABLE}.count_view_item ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: day_of_the_month {
    type: number
    sql: ${TABLE}.day_of_the_month ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: engaged_session_event {
    type: number
    sql: ${TABLE}.engaged_session_event ;;
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

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.event_date ;;
  }

  dimension: exit_rate {
    type: number
    sql: ${TABLE}.exit_rate ;;
  }

  dimension: exits {
    type: number
    sql: ${TABLE}.exits ;;
  }

  dimension: had_purchased_before {
    type: number
    sql: ${TABLE}.had_purchased_before ;;
  }

  dimension: has_added_payment_info {
    type: number
    sql: ${TABLE}.has_added_payment_info ;;
  }

  dimension: has_added_shipping_info {
    type: number
    sql: ${TABLE}.has_added_shipping_info ;;
  }

  dimension: has_promotion {
    type: number
    sql: ${TABLE}.has_promotion ;;
  }

  dimension: has_purchased {
    type: number
    sql: ${TABLE}.has_purchased ;;
  }

  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }

  dimension: is_first_visit {
    type: number
    sql: ${TABLE}.is_first_visit ;;
  }

  dimension: landing_pagepath_level_1 {
    type: string
    sql: ${TABLE}.landing_pagepath_level_1 ;;
  }

  dimension: ltv_revenue {
    type: number
    sql: ${TABLE}.ltv_revenue ;;
  }

  dimension: mobile_brand_name {
    type: string
    sql: ${TABLE}.mobile_brand_name ;;
  }

  dimension: month_of_the_year {
    type: number
    sql: ${TABLE}.month_of_the_year ;;
  }

  dimension: new_or_returning_visitor {
    type: string
    sql: ${TABLE}.new_or_returning_visitor ;;
  }

  dimension: operating_system {
    type: string
    sql: ${TABLE}.operating_system ;;
  }

  dimension: operating_system_version {
    type: string
    sql: ${TABLE}.operating_system_version ;;
  }

  dimension: pagepath_level_1 {
    type: string
    sql: ${TABLE}.pagepath_level_1 ;;
  }

  dimension: pages_per_session {
    type: number
    sql: ${TABLE}.pages_per_session ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: previous_page_path_level_1 {
    type: string
    sql: ${TABLE}.previous_page_path_level_1 ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: second_pagepath_level_1 {
    type: string
    sql: ${TABLE}.second_pagepath_level_1 ;;
  }

  dimension: sub_continent {
    type: string
    sql: ${TABLE}.sub_continent ;;
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
  }

  dimension: traffic_medium {
    type: string
    sql: ${TABLE}.traffic_medium ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: unique_pageviews {
    type: number
    sql: ${TABLE}.unique_pageviews ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
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
    drill_fields: [mobile_brand_name]
  }
}
