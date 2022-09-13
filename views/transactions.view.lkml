# The name of this view in Looker is "Transactions"
view: transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.transactions`
    ;;
  drill_fields: [transaction_id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: transaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_price {
    type: sum
    sql: ${price} ;;
  }

  measure: average_price {
    type: average
    sql: ${price} ;;
  }

  dimension: product_ids {
    type: string
    # hidden: yes
    sql: ${TABLE}.product_ids ;;
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

  dimension: transaction_date {
    type: date
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.username ;;
  }



  dimension: location_new {
    type: location
    sql_latitude: CAST ( SPLIT(REPLACE(REPLACE(${TABLE}.store_location,'POINT(',''),')',''),' ')[offset(1)] AS FLOAT64) ;;
    sql_longitude:CAST ( SPLIT(REPLACE(REPLACE(${TABLE}.store_location,'POINT(',''),')',''),' ')[offset(0)] AS FLOAT64) ;;
  }

  measure: sales_target {
    type: number
    sql: COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.transaction_date))))*46600
      ;;
  }

  measure: product_sales_target {
    type: number
    sql: COUNT (DISTINCT (EXTRACT(MONTH FROM PARSE_DATE('%Y-%m-%d',${TABLE}.transaction_date))))*76000
      ;;
  }


  measure: count {
    type: count
    drill_fields: [transaction_id, store_name, username, products.item_name, products.product_id]
  }
}
