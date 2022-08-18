# The name of this view in Looker is "Events Pages"
view: events_pages {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.events_pages`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Entrances" in Explore.

  dimension: entrances {
    type: number
    sql: ${TABLE}.entrances ;;
  }

  dimension: exit_page {
    type: string
    sql: ${TABLE}.exit_page ;;
  }

  dimension: exit_pagepath_level_1 {
    type: string
    sql: ${TABLE}.exit_pagepath_level_1 ;;
  }

  dimension: exit_rate {
    type: number
    sql: ${TABLE}.exit_rate ;;
  }

  dimension: exits {
    type: number
    sql: ${TABLE}.exits ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension: landing_pagepath_level_1 {
    type: string
    sql: ${TABLE}.landing_pagepath_level_1 ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: pagepath_level_1 {
    type: string
    sql: ${TABLE}.pagepath_level_1 ;;
  }

  dimension: pages_per_session {
    type: number
    sql: ${TABLE}.pages_per_session ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_pages_per_session {
    type: sum
    sql: ${pages_per_session} ;;
  }

  measure: average_pages_per_session {
    type: average
    sql: ${pages_per_session} ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: previous_page {
    type: string
    sql: ${TABLE}.previous_page ;;
  }

  dimension: previous_page_path_level_1 {
    type: string
    sql: ${TABLE}.previous_page_path_level_1 ;;
  }

  dimension: second_page {
    type: string
    sql: ${TABLE}.second_page ;;
  }

  dimension: second_pagepath_level_1 {
    type: string
    sql: ${TABLE}.second_pagepath_level_1 ;;
  }

  dimension: unique_pageviews {
    type: number
    sql: ${TABLE}.unique_pageviews ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
