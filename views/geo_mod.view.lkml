# The name of this view in Looker is "Geo Mod"
view: geo_mod {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.geo_mod`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Geo City" in Explore.

  dimension: geo__city {
    type: string
    sql: ${TABLE}.geo__city ;;
  }

  dimension: geo__city_new {
    type: string
    sql: ${TABLE}.geo__city_new ;;
  }

  dimension: geo__continent {
    type: string
    sql: ${TABLE}.geo__continent ;;
  }

  dimension: geo__continent_new {
    type: string
    sql: ${TABLE}.geo__continent_new ;;
  }

  dimension: geo__country {
    type: string
    sql: ${TABLE}.geo__country ;;
  }

  dimension: geo__country_new {
    type: string
    sql: ${TABLE}.geo__country_new ;;
  }

  dimension: geo__metro {
    type: string
    sql: ${TABLE}.geo__metro ;;
  }

  dimension: geo__metro_new {
    type: string
    sql: ${TABLE}.geo__metro_new ;;
  }

  dimension: geo__region {
    type: string
    sql: ${TABLE}.geo__region ;;
  }

  dimension: geo__region_new {
    type: string
    sql: ${TABLE}.geo__region_new ;;
  }

  dimension: geo__sub_continent {
    type: string
    sql: ${TABLE}.geo__sub_continent ;;
  }

  dimension: geo__sub_continent_new {
    type: string
    sql: ${TABLE}.geo__sub_continent_new ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
