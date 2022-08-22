view: ad_performance_x_ad_conversions {
  derived_table: {
    sql: SELECT * FROM `MarketingDataWarehouse.ad_performance`
      LEFT JOIN (
        SELECT Date, CampaignId, Conversions as EcommConversions, ConversionValue as EcommConversionValue FROM `MarketingDataWarehouse.ad_conversions` WHERE ConversionTypeName = "Website" and ConversionCategoryName = "Purchase/Sale"
      )
      USING (Date, CampaignId)
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date {
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
    sql: ${TABLE}.CampaignName ;;
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
