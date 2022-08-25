view: store_join_inventory {
  derived_table: {
    sql: (
      SELECT
      store_code,
      store_name,
      geo_point,
      product_id,
      quantity,
      availability
      FROM `MarketingDataWarehouse.stores`
      LEFT JOIN `MarketingDataWarehouse.inventory` USING(store_code)
      )
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: store_code {
    type: number
    sql: ${TABLE}.store_code ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: geo_point {
    type: string
    sql: ${TABLE}.geo_point ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: availability {
    type: string
    sql: ${TABLE}.availability ;;
  }

  set: detail {
    fields: [
      store_code,
      store_name,
      geo_point,
      product_id,
      quantity,
      availability
    ]
  }
}
