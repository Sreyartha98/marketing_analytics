view: transactions_mod {
  derived_table: {
    sql: WITH transactions_mod as
      (
        select *,
        SPLIT(REPLACE(REPLACE(store_location,'POINT(',''),')',''),' ') as location
        FROM `MarketingDataWarehouse.transactions`

      )

      select *,
      CAST (location[offset(0)] AS FLOAT64) as longitude,
      CAST (location[offset(1)] AS FLOAT64) as latitude
      FROM transactions_mod
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: dim_date {
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}.transaction_date ;;
  }


  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }

  dimension: transaction_date {
    type: string
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: product_ids {
    type: string
    sql: ${TABLE}.product_ids ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: store_code {
    type: number
    sql: ${TABLE}.store_code ;;
  }

  dimension: store_location {
    type: string
    sql: ${TABLE}.store_location ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_new {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      username,
      transaction_date,
      price,
      product_ids,
      transaction_id,
      channel,
      store_code,
      store_location,
      store_name,
      location,
      longitude,
      latitude
    ]
  }
}
