
view: ad_performance_x_ad_conversions {

  derived_table: {
    sql: SELECT * FROM `MarketingDataWarehouse.ad_performance`
      LEFT JOIN (
        SELECT Date, CampaignId, Conversions as EcommConversions, ConversionValue as EcommConversionValue FROM `MarketingDataWarehouse.ad_conversions` WHERE ConversionTypeName = "Website" and ConversionCategoryName = "Purchase/Sale"
      )
      USING (Date, CampaignId)
       ;;
  }

  measure: dash_nav {
    view_label: "Session"
    group_label: "Dashboard Navigation"
    label: "Navigation Bar"
    type: string
    sql: "";;
    html:
    <div style="background-color: #F6F6F7; height:500px;width:100%"></div>
      <div style="background-color: #F6F6F7; border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 18px; color: #4285F4">
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/**/campaign_comparison.dashboards">campaign_comparison</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/**/product_performance.dashboards">product_performance</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/**/store_performance.dashboards">store_performance</a>

       </nav>
      </div>
    <div style="background-color: #F6F6F7; height:500px;width:100%"></div>;;
  }



  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date_string {
    type: string
    sql: ${TABLE}.Date ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.CampaignId ;;
  }

  dimension: external_customer_id {
    type: number
    sql: ${TABLE}.ExternalCustomerId ;;
  }

  dimension: account_descriptive_name {
    type: string
    sql: ${TABLE}.AccountDescriptiveName ;;
  }

  dimension: account_currency_code {
    type: string
    sql: ${TABLE}.AccountCurrencyCode ;;
  }

  dimension: account_time_zone {
    type: string
    sql: ${TABLE}.AccountTimeZone ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.CampaignName;;
    link: {
    label: "View Individual Campaign"
    url:"https://protodemo.cloud.looker.com/dashboards/135?Campaign+Name= {{ value | url_encode }}"
  }
  }

  dimension: advertising_channel_type {
    type: string
    sql: ${TABLE}.AdvertisingChannelType ;;
  }


  dimension: campaign_status {
    type: string
    sql: ${TABLE}.CampaignStatus ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.Impressions ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.Clicks ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}.Cost ;;
  }

  dimension: ctr {
    type: number
    sql: ${TABLE}.Ctr ;;
  }

  dimension: ecomm_conversions {
    type: number
    sql: ${TABLE}.EcommConversions ;;
  }

  dimension: ecomm_conversion_value {
    type: number
    sql: ${TABLE}.EcommConversionValue ;;
  }
  measure: sum_cost {
    type: sum
    value_format_name: usd
    sql: ${cost} ;;
  }

  measure: sum_ecommconversions {
    type: sum
    sql: ${ecomm_conversions};;
  }

  measure: CPA {
    type: number
    value_format_name: usd
    sql: ${sum_cost}/ NULLIF(${sum_ecommconversions},0) ;;
  }


  measure: conversion_current_target {
    type: number
    sql:
        IF (8302296690 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*277,0) +
        IF (3148103082 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*277,0) +
        IF (8375334918 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*277,0) +
        IF (3839938543 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*277,0) +
        IF (7049682206 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*277,0) +
        IF (2403457911 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*277,0)
    ;;
  }


  measure: current_cost_target {
    type: number
    sql:
        IF (8302296690 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*8600,0) +
        IF (3148103082 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*19000,0) +
        IF (8375334918 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*5800,0) +
        IF (3839938543 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*9000,0) +
        IF (7049682206 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*4300,0) +
        IF (2403457911 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*2000,0)
    ;;
  }

  measure: current_click_target {
    type: number
    sql:
        IF (8302296690 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*17700,0) +
        IF (3148103082 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*40000,0) +
        IF (8375334918 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*5000,0) +
        IF (3839938543 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*8000,0) +
        IF (7049682206 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*10000,0) +
        IF (2403457911 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*4500,0)
    ;;
  }
  measure: cpa_current_target {
    type: number
    sql:
        (IF (8302296690 IN UNNEST(array_agg(DISTINCT (CampaignId))),33,0) +
        IF (3148103082 IN UNNEST(array_agg(DISTINCT (CampaignId))),75,0) +
        IF (8375334918 IN UNNEST(array_agg(DISTINCT (CampaignId))),22,0) +
        IF (3839938543 IN UNNEST(array_agg(DISTINCT (CampaignId))),33,0) +
        IF (7049682206 IN UNNEST(array_agg(DISTINCT (CampaignId))),18,0) +
        IF (2403457911 IN UNNEST(array_agg(DISTINCT (CampaignId))), 8,0))/
        COUNT(DISTINCT(CampaignId))
    ;;
  }

  measure: impressions_target {
    type: number
    sql:
        IF (8302296690 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*2170000,0) +
        IF (3148103082 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*4985000,0) +
        IF (8375334918 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*194000,0) +
        IF (3839938543 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*290000,0) +
        IF (7049682206 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*1977000,0) +
        IF (2403457911 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*880000,0)
    ;;
  }


  measure: ctr_target {
    type: number
    sql:
        (IF (8302296690 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*0.01,0) +
        IF (3148103082 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*0.01,0) +
        IF (8375334918 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*0.03,0) +
        IF (3839938543 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*0.03,0) +
        IF (7049682206 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*0.006,0) +
        IF (2403457911 IN UNNEST(array_agg(DISTINCT (CampaignId))),COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.Date))))*0.006,0))/COUNT(DISTINCT(CampaignId))
    ;;
  }

  dimension: date {
    type: date
    datatype: date
    sql: CAST(${TABLE}.date as DATE) ;;
  }

  dimension_group: date_1 {
    type: time
    timeframes: [date, week, month]
    sql: CAST(${TABLE}.date AS TIMESTAMP)  ;;
  }

  set: detail {
    fields: [
      date,
      campaign_id,
      external_customer_id,
      account_descriptive_name,
      account_currency_code,
      account_time_zone,
      campaign_name,
      advertising_channel_type,
      campaign_status,
      impressions,
      clicks,
      cost,
      ctr,
      ecomm_conversions,
      ecomm_conversion_value
    ]
  }
}
