view: event_pages_dates {
  derived_table: {
    sql: with pages as (
      select
          user_pseudo_id,
          (select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') as session_id,
          event_timestamp,
          parse_date("%Y%m%d",event_date) as event_date,
          event_name,
          (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') as page,
          lag((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'), 1) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp asc) as previous_page,
          case when split(split((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)] = '' then null else concat('/',split(split((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)]) end as pagepath_level_1,
          case when split(split(lag((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'), 1) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp asc),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)] = '' then null else concat('/',split(split(lag((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'), 1) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp asc),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)]) end as previous_page_path_level_1,
          (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_title') as page_title,
          case when (select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'entrances') = 1 then (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') end as landing_page,
          case when split(split((case when (select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'entrances') = 1 then (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') END),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)] = '' then null else concat('/',split(split((case when (select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'entrances') = 1 then (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') END),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)]) end as landing_pagepath_level_1,
          case when (select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'entrances') = 1 then lead((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'), 1) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp asc) else null end as second_page,
          case when split(split((case when (select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'entrances') = 1 then lead((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'), 1) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp asc) else null end),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)] = '' then null else concat('/',split(split((case when (select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'entrances') = 1 then lead((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location'), 1) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp asc) else null end),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)]) end as second_pagepath_level_1,
          case when (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') = first_value((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location')) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp desc) then ( select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') else null end as exit_page,
          case when split(split((case when (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') = first_value((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location')) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp desc) then ( select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') else null end),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)] = '' then null else concat('/',split(split((case when (select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') = first_value((select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location')) over (partition by user_pseudo_id,(select value.int_value from unnest(event_params) where event_name = 'page_view' and key = 'ga_session_id') order by event_timestamp desc) then ( select value.string_value from unnest(event_params) where event_name = 'page_view' and key = 'page_location') else null end),'/')[safe_ordinal(4)],'?')[safe_ordinal(1)]) end as exit_pagepath_level_1,
      from
          -- change this to your google analytics 4 export location in bigquery
          `MarketingDataWarehouse.events_mod`
      where
          event_name = 'page_view'
      )
      select
          user_pseudo_id,
          MAX(event_date) as event_Date,
          -- page (dimension | a page on the website specified by path and/or query parameters)
          page,
          -- page path level 1 (dimension | this dimension rolls up all the page paths in the first hierarchical level)
          MAX(pagepath_level_1) as pagepath_level_1,
          -- previous page path (dimension | a page visited before another page on the same property)
          MAX(previous_page) as previous_page,
          MAX(previous_page_path_level_1) as previous_page_path_level_1,
          -- landing page (dimension | the first page in users' sessions)
          landing_page,
          MAX(landing_pagepath_level_1) as landing_pagepath_level_1,
          -- second page (dimension | the second page in users' sessions)
          MAX(second_page) as second_page,
          MAX(second_pagepath_level_1) as second_pagepath_level_1,
          -- exit page (dimension | the last page in users' sessions)
          exit_page,
          MAX(exit_pagepath_level_1) as exit_pagepath_level_1,
          -- entrances (metric | the number of entrances to the property measured as the first pageview in a session)
          count(landing_page) as entrances,
          -- pageviews (metric | the total number of pageviews for the property)
          count(page) as pageviews,
          -- unique pageviews (metric | the number of sessions during which the specified page was viewed at least once, a unique pageview is counted for each page url + page title combination)
          count(distinct concat(page,page_title,session_id)) as unique_pageviews,
          -- pages / session (metric | the average number of pages viewed during a session, including repeated views of a single page)
          count(page) / count(distinct session_id) as pages_per_session,
          -- exits (metric | the number of exits from the property)
          count(exit_page) as exits,
          -- exit % (metric | the percentage of exits from the property that occurred out of the total pageviews)
          count(exit_page) / count(page) as exit_rate
      from
          pages
      group by
          user_pseudo_id,
          page,
          page_title,
          landing_page,
          exit_page
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
    type: date
    datatype: date
    sql: ${TABLE}.event_Date ;;
  }

  dimension: page {
    type: string
    sql: ${TABLE}.page ;;
  }

  dimension: pagepath_level_1 {
    type: string
    sql: ${TABLE}.pagepath_level_1 ;;
  }

  dimension: previous_page {
    type: string
    sql: ${TABLE}.previous_page ;;
  }

  dimension: previous_page_path_level_1 {
    type: string
    sql: ${TABLE}.previous_page_path_level_1 ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension: landing_pagepath_level_1 {
    type: string
    sql: ${TABLE}.landing_pagepath_level_1 ;;
  }

  dimension: second_page {
    type: string
    sql: ${TABLE}.second_page ;;
  }

  dimension: second_pagepath_level_1 {
    type: string
    sql: ${TABLE}.second_pagepath_level_1 ;;
  }

  dimension: exit_page {
    type: string
    sql: ${TABLE}.exit_page ;;
  }

  dimension: exit_pagepath_level_1 {
    type: string
    sql: ${TABLE}.exit_pagepath_level_1 ;;
  }

  dimension: entrances {
    type: number
    sql: ${TABLE}.entrances ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }

  dimension: unique_pageviews {
    type: number
    sql: ${TABLE}.unique_pageviews ;;
  }

  dimension: pages_per_session {
    type: number
    sql: ${TABLE}.pages_per_session ;;
  }

  dimension: exits {
    type: number
    sql: ${TABLE}.exits ;;
  }

  dimension: exit_rate {
    type: number
    sql: ${TABLE}.exit_rate ;;
  }

  set: detail {
    fields: [
      user_pseudo_id,
      event_date,
      page,
      pagepath_level_1,
      previous_page,
      previous_page_path_level_1,
      landing_page,
      landing_pagepath_level_1,
      second_page,
      second_pagepath_level_1,
      exit_page,
      exit_pagepath_level_1,
      entrances,
      pageviews,
      unique_pageviews,
      pages_per_session,
      exits,
      exit_rate
    ]
  }
}
