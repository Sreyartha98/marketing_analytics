view: session_engagements {
  derived_table: {
    sql: with session_engagement as (
      select
          user_pseudo_id,
          event_timestamp,
          SAFE_DIVIDE(
              count(distinct case when session_engaged = 1 then concat(user_pseudo_id,session_id) end),
              COUNT(DISTINCT session_id)
          ) AS engagement_rate,
          count(distinct case when session_engaged = 1 then concat(user_pseudo_id,session_id) end) as engaged_sessions,
          count(distinct case when session_engaged = 0 then concat(user_pseudo_id,session_id) end) as bounces,
          SAFE_DIVIDE(
              count(distinct case when session_engaged = 0 then concat(user_pseudo_id,session_id) end),
              COUNT(DISTINCT session_id)
          ) as bounce_rate,
          COUNT(DISTINCT session_id) AS total_sessions,
          IFNULL(round(sum(engagement_time_msec)/1000),0) as engagement_time_seconds,
      from (
          select
              user_pseudo_id,
              event_timestamp,
              (select value.int_value from unnest(event_params) where key = 'ga_session_id') as session_id,
              IFNULL(max((select value.int_value from unnest(event_params) where key = 'session_engaged')), 0) as session_engaged,
              max((select value.int_value from unnest(event_params) where key = 'engagement_time_msec')) as engagement_time_msec
          from
              `MarketingDataWarehouse.events_mod`
          group by
              user_pseudo_id,
              event_timestamp,
              session_id)
          group by user_pseudo_id, event_timestamp)

      select * from session_engagement
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

  dimension: event_timestamp {
    type: number
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: engagement_rate {
    type: number
    sql: ${TABLE}.engagement_rate ;;
  }

  dimension: engaged_sessions {
    type: number
    sql: ${TABLE}.engaged_sessions ;;
  }

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.bounce_rate ;;
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
  }

  dimension: engagement_time_seconds {
    type: number
    sql: ${TABLE}.engagement_time_seconds ;;
  }

  measure: total_sessions_target {
    type: number
    sql: COUNT(DISTINCT(EXTRACT(MONTH FROM ${event_timestamp})))*968000;;
  }

  set: detail {
    fields: [
      user_pseudo_id,
      event_timestamp,
      engagement_rate,
      engaged_sessions,
      bounces,
      bounce_rate,
      total_sessions,
      engagement_time_seconds
    ]
  }
}
