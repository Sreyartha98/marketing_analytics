# The name of this view in Looker is "Events Flat"
view: events_flat {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.events_flat`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "App Info Firebase App ID" in Explore.

  dimension: app_info__firebase_app_id {
    type: string
    sql: ${TABLE}.app_info__firebase_app_id ;;
  }

  dimension: app_info__id {
    type: string
    sql: ${TABLE}.app_info__id ;;
  }

  dimension: app_info__install_source {
    type: string
    sql: ${TABLE}.app_info__install_source ;;
  }

  dimension: app_info__install_store {
    type: string
    sql: ${TABLE}.app_info__install_store ;;
  }

  dimension: app_info__version {
    type: string
    sql: ${TABLE}.app_info__version ;;
  }

  dimension: device__advertising_id {
    type: number
    sql: ${TABLE}.device__advertising_id ;;
  }

  dimension: device__category {
    type: string
    sql: ${TABLE}.device__category ;;
  }

  dimension: device__is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.device__is_limited_ad_tracking ;;
  }

  dimension: device__language {
    type: string
    sql: ${TABLE}.device__language ;;
  }

  dimension: device__mobile_brand_name {
    type: string
    sql: ${TABLE}.device__mobile_brand_name ;;
  }

  dimension: device__mobile_marketing_name {
    type: string
    sql: ${TABLE}.device__mobile_marketing_name ;;
  }

  dimension: device__mobile_model_name {
    type: string
    sql: ${TABLE}.device__mobile_model_name ;;
  }

  dimension: device__mobile_os_hardware_model {
    type: number
    sql: ${TABLE}.device__mobile_os_hardware_model ;;
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device__operating_system ;;
  }

  dimension: device__operating_system_version {
    type: string
    sql: ${TABLE}.device__operating_system_version ;;
  }

  dimension: device__time_zone_offset_seconds {
    type: number
    sql: ${TABLE}.device__time_zone_offset_seconds ;;
  }

  dimension: device__vendor_id {
    type: number
    sql: ${TABLE}.device__vendor_id ;;
  }

  dimension: device__web_info__browser {
    type: string
    sql: ${TABLE}.device__web_info__browser ;;
  }

  dimension: device__web_info__browser_version {
    type: string
    sql: ${TABLE}.device__web_info__browser_version ;;
  }

  dimension: ecommerce__purchase_revenue {
    type: number
    sql: ${TABLE}.ecommerce__purchase_revenue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ecommerce__purchase_revenue {
    type: sum
    sql: ${ecommerce__purchase_revenue} ;;
  }

  measure: average_ecommerce__purchase_revenue {
    type: average
    sql: ${ecommerce__purchase_revenue} ;;
  }

  dimension: ecommerce__purchase_revenue_in_usd {
    type: number
    sql: ${TABLE}.ecommerce__purchase_revenue_in_usd ;;
  }

  dimension: ecommerce__refund_value {
    type: number
    sql: ${TABLE}.ecommerce__refund_value ;;
  }

  dimension: ecommerce__refund_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce__refund_value_in_usd ;;
  }

  dimension: ecommerce__shipping_value {
    type: number
    sql: ${TABLE}.ecommerce__shipping_value ;;
  }

  dimension: ecommerce__shipping_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce__shipping_value_in_usd ;;
  }

  dimension: ecommerce__tax_value {
    type: number
    sql: ${TABLE}.ecommerce__tax_value ;;
  }

  dimension: ecommerce__tax_value_in_usd {
    type: number
    sql: ${TABLE}.ecommerce__tax_value_in_usd ;;
  }

  dimension: ecommerce__total_item_quantity {
    type: number
    sql: ${TABLE}.ecommerce__total_item_quantity ;;
  }

  dimension: ecommerce__transaction_id {
    type: string
    sql: ${TABLE}.ecommerce__transaction_id ;;
  }

  dimension: ecommerce__unique_items {
    type: number
    sql: ${TABLE}.ecommerce__unique_items ;;
  }

  dimension: ep__double_value {
    type: number
    sql: ${TABLE}.ep__double_value ;;
  }

  dimension: ep__float_value {
    type: number
    sql: ${TABLE}.ep__float_value ;;
  }

  dimension: ep__int_value {
    type: number
    sql: ${TABLE}.ep__int_value ;;
  }

  dimension: ep__key {
    type: string
    sql: ${TABLE}.ep__key ;;
  }

  dimension: ep__string_value {
    type: string
    sql: ${TABLE}.ep__string_value ;;
  }

  dimension: event_bundle_sequence_id {
    type: number
    sql: ${TABLE}.event_bundle_sequence_id ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_dimensions__hostname {
    type: string
    sql: ${TABLE}.event_dimensions__hostname ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension: event_previous_timestamp {
    type: number
    sql: ${TABLE}.event_previous_timestamp ;;
  }

  dimension: event_server_timestamp_offset {
    type: number
    sql: ${TABLE}.event_server_timestamp_offset ;;
  }

  dimension: event_timestamp {
    type: number
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_value_in_usd {
    type: number
    sql: ${TABLE}.event_value_in_usd ;;
  }

  dimension: geo__city {
    type: string
    sql: ${TABLE}.geo__city ;;
  }

  dimension: geo__continent {
    type: string
    sql: ${TABLE}.geo__continent ;;
  }

  dimension: geo__country {
    type: string
    sql: ${TABLE}.geo__country ;;
  }

  dimension: geo__metro {
    type: string
    sql: ${TABLE}.geo__metro ;;
  }

  dimension: geo__region {
    type: string
    sql: ${TABLE}.geo__region ;;
  }

  dimension: geo__sub_continent {
    type: string
    sql: ${TABLE}.geo__sub_continent ;;
  }

  dimension: i__affiliation {
    type: string
    sql: ${TABLE}.i__affiliation ;;
  }

  dimension: i__coupon {
    type: string
    sql: ${TABLE}.i__coupon ;;
  }

  dimension: i__creative_name {
    type: string
    sql: ${TABLE}.i__creative_name ;;
  }

  dimension: i__creative_slot {
    type: string
    sql: ${TABLE}.i__creative_slot ;;
  }

  dimension: i__item_brand {
    type: string
    sql: ${TABLE}.i__item_brand ;;
  }

  dimension: i__item_category {
    type: string
    sql: ${TABLE}.i__item_category ;;
  }

  dimension: i__item_category2 {
    type: string
    sql: ${TABLE}.i__item_category2 ;;
  }

  dimension: i__item_category3 {
    type: string
    sql: ${TABLE}.i__item_category3 ;;
  }

  dimension: i__item_category4 {
    type: string
    sql: ${TABLE}.i__item_category4 ;;
  }

  dimension: i__item_category5 {
    type: string
    sql: ${TABLE}.i__item_category5 ;;
  }

  dimension: i__item_id {
    type: string
    sql: ${TABLE}.i__item_id ;;
  }

  dimension: i__item_list_id {
    type: string
    sql: ${TABLE}.i__item_list_id ;;
  }

  dimension: i__item_list_index {
    type: string
    sql: ${TABLE}.i__item_list_index ;;
  }

  dimension: i__item_list_name {
    type: string
    sql: ${TABLE}.i__item_list_name ;;
  }

  dimension: i__item_name {
    type: string
    sql: ${TABLE}.i__item_name ;;
  }

  dimension: i__item_refund {
    type: number
    sql: ${TABLE}.i__item_refund ;;
  }

  dimension: i__item_refund_in_usd {
    type: number
    sql: ${TABLE}.i__item_refund_in_usd ;;
  }

  dimension: i__item_revenue {
    type: number
    sql: ${TABLE}.i__item_revenue ;;
  }

  dimension: i__item_revenue_in_usd {
    type: number
    sql: ${TABLE}.i__item_revenue_in_usd ;;
  }

  dimension: i__item_variant {
    type: string
    sql: ${TABLE}.i__item_variant ;;
  }

  dimension: i__location_id {
    type: string
    sql: ${TABLE}.i__location_id ;;
  }

  dimension: i__price {
    type: number
    sql: ${TABLE}.i__price ;;
  }

  dimension: i__price_in_usd {
    type: number
    sql: ${TABLE}.i__price_in_usd ;;
  }

  dimension: i__promotion_id {
    type: string
    sql: ${TABLE}.i__promotion_id ;;
  }

  dimension: i__promotion_name {
    type: string
    sql: ${TABLE}.i__promotion_name ;;
  }

  dimension: i__quantity {
    type: number
    sql: ${TABLE}.i__quantity ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: privacy_info__ads_storage {
    type: number
    sql: ${TABLE}.privacy_info__ads_storage ;;
  }

  dimension: privacy_info__analytics_storage {
    type: number
    sql: ${TABLE}.privacy_info__analytics_storage ;;
  }

  dimension: privacy_info__uses_transient_token {
    type: string
    sql: ${TABLE}.privacy_info__uses_transient_token ;;
  }

  dimension: stream_id {
    type: number
    sql: ${TABLE}.stream_id ;;
  }

  dimension: traffic_source__medium {
    type: string
    sql: ${TABLE}.traffic_source__medium ;;
  }

  dimension: traffic_source__name {
    type: string
    sql: ${TABLE}.traffic_source__name ;;
  }

  dimension: traffic_source__source {
    type: string
    sql: ${TABLE}.traffic_source__source ;;
  }

  dimension: up__double_value {
    type: number
    sql: ${TABLE}.up__double_value ;;
  }

  dimension: up__float_value {
    type: number
    sql: ${TABLE}.up__float_value ;;
  }

  dimension: up__int_value {
    type: number
    sql: ${TABLE}.up__int_value ;;
  }

  dimension: up__key {
    type: number
    sql: ${TABLE}.up__key ;;
  }

  dimension: up__string_value {
    type: number
    sql: ${TABLE}.up__string_value ;;
  }

  dimension: user_first_touch_timestamp {
    type: number
    sql: ${TABLE}.user_first_touch_timestamp ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_ltv__currency {
    type: string
    sql: ${TABLE}.user_ltv__currency ;;
  }

  dimension: user_ltv__revenue {
    type: number
    sql: ${TABLE}.user_ltv__revenue ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      i__item_name,
      i__creative_name,
      device__mobile_brand_name,
      event_name,
      event_dimensions__hostname,
      i__promotion_name,
      device__mobile_model_name,
      i__item_list_name,
      traffic_source__name,
      device__mobile_marketing_name
    ]
  }
}
