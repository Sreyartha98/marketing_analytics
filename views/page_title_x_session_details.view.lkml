view: page_title_x_session_details {
  derived_table: {
    sql: select
        user_pseudo_id,
        event_date,
        (select value.string_value from unnest(event_params) where key = 'page_title') as page_title,
        (select value.int_value from unnest(event_params) where key = 'ga_session_id') as session_id,
        (select value.int_value from unnest(event_params) where key = 'engagement_time_msec') as engagement_time_msec,
        IFNULL((select value.int_value from unnest(event_params) where key = 'session_engaged'),0) as session_engaged
from `MarketingDataWarehouse.events_mod` AS page_x_session
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  dimension: event_date {
    type: string
    sql: ${TABLE}.event_date ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.page_title ;;
  }

  dimension: session_id {
    type: number
    sql: ${TABLE}.session_id ;;
  }

  dimension: engagement_time_msec {
    type: number
    sql: ${TABLE}.engagement_time_msec ;;
  }

  dimension: session_engaged {
    type: number
    sql: ${TABLE}.session_engaged ;;
  }

  measure: sum_engagement_time_msec {
    type: sum
    sql: ${engagement_time_msec} ;;
  }

  measure: avg_time_on_page {
    type: number
    sql: ${sum_engagement_time_msec}/COUNT(DISTINCT(${page_title}))/1000 ;;
  }

  measure: bounce_rate {
    type: number
    sql: 1-(SUM(${session_engaged})/COUNT(${session_engaged}))) ;;
  }



  set: detail {
    fields: [
      user_pseudo_id,
      event_date,
      page_title,
      session_id,
      engagement_time_msec,
      session_engaged
    ]
  }
}
