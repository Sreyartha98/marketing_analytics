# The name of this view in Looker is "Purchase Propensity Prediction"
view: purchase_propensity_prediction {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.purchase_propensity_prediction`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Actual Label" in Explore.

  dimension: actual_label {
    type: number
    sql: ${TABLE}.actual_label ;;
  }

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

  dimension: cohort {
    type: number
    sql: ${TABLE}.cohort ;;
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
    type: string
    sql: ${TABLE}.day_of_the_month ;;
  }

  dimension: day_of_week {
    type: string
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: engaged_session_event {
    type: string
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

  dimension: event_date {
    type: date
    sql: ${TABLE}.event_date ;;
  }

  dimension_group: date_1 {
    type: time
    timeframes: [date, week, month]
    sql: CAST(${TABLE}.event_date AS TIMESTAMP)  ;;
  }

  dimension: exit_rate {
    type: number
    sql: ${TABLE}.exit_rate ;;
  }

  dimension: exits {
    type: number
    sql: ${TABLE}.exits ;;
  }

  dimension: google_product_category_id {
    type: number
    sql: ${TABLE}.google_product_category_id ;;
  }

  dimension: google_product_category_path {
    type: string
    sql: ${TABLE}.google_product_category_path ;;
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

  dimension: has_purchased_this_time {
    type: number
    sql: ${TABLE}.has_purchased_this_time ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.hour ;;
  }

  dimension: is_first_visit {
    type: number
    sql: ${TABLE}.is_first_visit ;;
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

  dimension: item_category5 {
    type: string
    sql: ${TABLE}.item_category5 ;;
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

  dimension: landing_pagepath_level_1 {
    type: string
    sql: ${TABLE}.landing_pagepath_level_1 ;;
  }

  dimension: mobile_brand_name {
    type: string
    sql: ${TABLE}.mobile_brand_name ;;
  }

  dimension: month_of_the_year {
    type: string
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

  dimension: product_channel {
    type: string
    sql: ${TABLE}.product_channel ;;
  }

  dimension: product_current_price {
    type: number
    sql: ${TABLE}.product_current_price ;;
  }

  dimension: product_gtin {
    type: string
    sql: ${TABLE}.product_gtin ;;
  }

  dimension: product_offer_id {
    type: string
    sql: ${TABLE}.product_offer_id ;;
  }

  dimension: purchase_likelihood {
    type: number
    sql: ${TABLE}.purchase_likelihood ;;
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

  dimension: user_ltv_revenue {
    type: number
    sql: ${TABLE}.user_ltv_revenue ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  dimension: week_of_the_year {
    type: string
    sql: ${TABLE}.week_of_the_year ;;
  }

  dimension: will_purchase_next_time {
    type: number
    sql: ${TABLE}.will_purchase_next_time ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [mobile_brand_name, item_name]
  }
}
