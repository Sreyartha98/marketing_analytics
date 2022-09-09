# Define the database connection to be used for this model.
connection: "marketing_analytics"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: marketing_analytics_1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: marketing_analytics_1_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Marketing Analytics 1"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: product_reviews_sentiment {}
explore: video_id {}

explore: audience_cohorts_kmeans_centroids {
  join: audience_cohorts_kmeans_centroids__categorical_value {
    view_label: "Audience Cohorts Kmeans Centroids: Categorical Value"
    sql: LEFT JOIN UNNEST(${audience_cohorts_kmeans_centroids.categorical_value}) as audience_cohorts_kmeans_centroids__categorical_value ;;
    relationship: one_to_many
  }
}

explore: youtube_vid_level {}

explore: audience_cohorts_kmeans_prediction {}

explore: ad_conversions {}

explore: ad_performance {}

explore: youtube_sentiment {}

explore: audience_members {}

explore: customer_ltv_train {}

explore: customer_ltv_prediction {}

explore: demand_forecasting_predict_input {}

explore: audiences {}

explore: customer_ltv_predict_input {}

explore: demand_forecasting_prediction {}

explore: customers {}

explore: page_mapping_mod {}

explore: demand_forecasting_train {}

explore: geo_mod {}

explore: inventory {
  join: products {
    type: left_outer
    sql_on: ${inventory.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }
}

explore: events_pages {}

explore: events_flat {}

explore: events_mod {
  join: events_mod__items {
    view_label: "Events Mod: Items"
    sql: LEFT JOIN UNNEST(${events_mod.items}) as events_mod__items ;;
    relationship: one_to_many
  }

  join: events_mod__event_params {
    view_label: "Events Mod: Event Params"
    sql: LEFT JOIN UNNEST(${events_mod.event_params}) as events_mod__event_params ;;
    relationship: one_to_many
  }

  join: events_mod__user_properties {
    view_label: "Events Mod: User Properties"
    sql: LEFT JOIN UNNEST(${events_mod.user_properties}) as events_mod__user_properties ;;
    relationship: one_to_many
  }
}

explore: events {
  join: events__items {
    view_label: "Events: Items"
    sql: LEFT JOIN UNNEST(${events.items}) as events__items ;;
    relationship: one_to_many
  }

  join: events__event_params {
    view_label: "Events: Event Params"
    sql: LEFT JOIN UNNEST(${events.event_params}) as events__event_params ;;
    relationship: one_to_many
  }

  join: events__user_properties {
    view_label: "Events: User Properties"
    sql: LEFT JOIN UNNEST(${events.user_properties}) as events__user_properties ;;
    relationship: one_to_many
  }
}

explore: purchase_propensity_predict_input {}

explore: products {}

explore: perf_conv {}

explore: page_referrer_mod {}

explore: purchase_propensity_prediction {}

explore: purchase_propensity_train {}

explore: stores {}

explore: store_join_inventory {
  join: products {
    type: left_outer
    sql_on: ${store_join_inventory.product_id} = ${products.product_id} ;;
    relationship: many_to_one
  }
}

explore: transactions {
  join: products {
    type: left_outer
    sql_on: ${transactions.product_ids} = ${products.product_id} ;;
    relationship: many_to_one
  }
}

explore: wordcountreviews {}

explore: wordcountyt {}

explore: ad_performance_x_ad_conversions {}

explore: store_join_inventory_location {}

explore: transactions_mod {}

explore: session_engagements {}

explore: event_pages_dates {}

explore: page_title_x_session_details {}
