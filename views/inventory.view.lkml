# The name of this view in Looker is "Inventory"
view: inventory {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.inventory`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Availability" in Explore.

  dimension: availability {
    type: string
    sql: ${TABLE}.availability ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_quantity {
    type: sum
    sql: ${quantity} ;;
  }

  measure: average_quantity {
    type: average
    sql: ${quantity} ;;
  }

  dimension: store_code {
    type: number
    sql: ${TABLE}.store_code ;;
  }
  measure: out_of_stock_percentage {
    type: number
    sql: COUNTIF(${availability}="out_of_stock")/COUNT(${availability})*100 ;;
  }


  measure: count {
    type: count
    drill_fields: [products.item_name, products.product_id]
  }
}
