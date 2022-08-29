view: conversion_current_target {
  derived_table: {
    sql: WITH temp AS(
      SELECT array_agg(DISTINCT CampaignId) AS list_of_campaignID,
      COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',date)))) AS month_count
      from MarketingDataWarehouse.ad_conversions
      )
      select
        IF (8375334918 IN UNNEST(list_of_campaignID),month_count*277,0) +
        IF (3839938543 IN UNNEST(list_of_campaignID),month_count*277,0) +
        IF (3839938543 IN UNNEST(list_of_campaignID),month_count*277,0) +
        IF (3839938543 IN UNNEST(list_of_campaignID),month_count*277,0) +
        IF (3839938543 IN UNNEST(list_of_campaignID),month_count*277,0) +
        IF (3839938543 IN UNNEST(list_of_campaignID),month_count*277,0)
      from temp
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: f0_ {
    type: number
    sql: ${TABLE}.f0_ ;;
  }

  set: detail {
    fields: [f0_]
  }
}
