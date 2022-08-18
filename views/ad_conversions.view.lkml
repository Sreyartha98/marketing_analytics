# The name of this view in Looker is "Ad Conversions"
view: ad_conversions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.ad_conversions`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Campaign ID" in Explore.

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: conversion_category_name {
    type: string
    sql: ${TABLE}.ConversionCategoryName ;;
  }

  dimension: conversion_type_name {
    type: string
    sql: ${TABLE}.ConversionTypeName ;;
  }

  dimension: conversion_value {
    type: number
    sql: ${TABLE}.ConversionValue ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_conversion_value {
    type: sum
    sql: ${conversion_value} ;;
  }

  measure: average_conversion_value {
    type: average
    sql: ${conversion_value} ;;
  }

  dimension: conversions {
    type: number
    sql: ${TABLE}.Conversions ;;
  }

  dimension: date {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  measure: count {
    type: count
    drill_fields: [conversion_type_name, conversion_category_name]
  }
}
