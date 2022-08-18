# The name of this view in Looker is "Audience Cohorts Kmeans Centroids"
view: audience_cohorts_kmeans_centroids {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `MarketingDataWarehouse.audience_cohorts_kmeans_centroids`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: categorical_value {
    hidden: yes
    sql: ${TABLE}.categorical_value ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Centroid ID" in Explore.

  dimension: centroid_id {
    type: number
    sql: ${TABLE}.centroid_id ;;
  }

  dimension: feature {
    type: string
    sql: ${TABLE}.feature ;;
  }

  dimension: numerical_value {
    type: number
    sql: ${TABLE}.numerical_value ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_numerical_value {
    type: sum
    sql: ${numerical_value} ;;
  }

  measure: average_numerical_value {
    type: average
    sql: ${numerical_value} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

# The name of this view in Looker is "Audience Cohorts Kmeans Centroids Categorical Value"
view: audience_cohorts_kmeans_centroids__categorical_value {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: audience_cohorts_kmeans_centroids__categorical_value {
    type: string
    hidden: yes
    sql: audience_cohorts_kmeans_centroids__categorical_value ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: category ;;
  }

  dimension: value {
    type: number
    sql: value ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_value {
    type: sum
    sql: ${value} ;;
  }

  measure: average_value {
    type: average
    sql: ${value} ;;
  }
}
