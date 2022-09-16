- dashboard: predicted_user_ltv_revenue_detailed_view
  title: Predicted User LTV Revenue (Detailed View)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gNgkHr7YBcHcSysRgP4Ne3
  elements:
  - title: Untitled
    name: Untitled
    model: marketing_analytics_1
    explore: customer_ltv_prediction
    type: looker_grid
    fields: [customer_ltv_prediction.cohort, count_of_user_pseudo_id, average_of_count_view_item,
      average_of_count_begin_checkout_item, average_of_avg_item_quantity, average_of_predicted_future_user_ltv_revenue]
    sorts: [count_of_user_pseudo_id desc 0]
    limit: 500
    dynamic_fields: [{measure: count_of_user_pseudo_id, based_on: customer_ltv_prediction.user_pseudo_id,
        expression: '', label: Count of User Pseudo ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number, id: iVCUzUdHA8}, {measure: average_of_count_view_item,
        based_on: customer_ltv_prediction.count_view_item, expression: '', label: Average
          of Count View Item, type: average, _kind_hint: measure, _type_hint: number,
        id: GZ2E1yVCd2}, {measure: average_of_count_begin_checkout_item, based_on: customer_ltv_prediction.count_begin_checkout_item,
        expression: '', label: Average of Count Begin Checkout Item, type: average,
        _kind_hint: measure, _type_hint: number, id: UQyngZ0xEz}, {measure: average_of_avg_item_quantity,
        based_on: customer_ltv_prediction.avg_item_quantity, expression: '', label: Average
          of Avg Item Quantity, type: average, _kind_hint: measure, _type_hint: number,
        id: tkFC3qbU0G}, {measure: average_of_predicted_future_user_ltv_revenue, based_on: customer_ltv_prediction.predicted_future_user_ltv_revenue,
        expression: '', label: Average of Predicted Future User Ltv Revenue, type: average,
        _kind_hint: measure, _type_hint: number, id: 55FxQIRDlK}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      count_of_user_pseudo_id: "# Users"
      average_of_count_view_item: Count View Item
      average_of_count_begin_checkout_item: Count Begin Checkout
      average_of_predicted_future_user_ltv_revenue: Predicted User LTV Revenue
      average_of_avg_item_quantity: Has Purchased
    series_cell_visualizations:
      count_of_user_pseudo_id:
        is_active: false
    series_value_format:
      average_of_count_view_item:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
      average_of_count_begin_checkout_item:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
      average_of_avg_item_quantity:
        name: decimal_0
        decimals: '0'
        format_string: "#,##0"
        label: Decimals (0)
        label_prefix: Decimals
      average_of_predicted_future_user_ltv_revenue:
        name: decimal_1
        decimals: '1'
        format_string: "#,##0.0"
        label: Decimals (1)
        label_prefix: Decimals
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    defaults_version: 1
    series_types: {}
    title_hidden: true
    row: 0
    col: 5
    width: 19
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"font-size: 14px; padding: 5px 10px 0 10px;\">\n\n <a\
      \ style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/134\"\
      >Overview</a>\n<hr>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">PERFORMANCE</a>\n\
      \t<a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/135\"\
      >Campaign Performance</a>\n\n\n\t<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/137\"\
      >Compare Campaigns</a>\n\n\t<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/138\"\
      >Store Performance</a>\n    <a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/140\"\
      > Web Traffic</a>\n   <a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/139\"\
      >Product Performance</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\"> PREDICTIONS</a>\n\
      <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/141\"\
      > Propensity to Purchase Predictions</a>\n<a style='display: block; border-radius:\
      \ 5px; padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/142\"\
      >Customer Lifetime Value</a>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/143\"\
      >Demand Forecasting</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/138\"\
      > Sentiment Analysis</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">MISC.</a>\n\
      <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/151\"\
      >Audience Registry</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">DETAILED\
      \ VIEW.</a>\n<a style='display: block; border-radius: 5px; padding: 5px 10px;\
      \ margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/147\"\
      >Product Availability</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/145\"\
      >Propensity to Purchase</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;font-weight: bold; background-color: #eaf1fe;\
      \ border: solid 1px #4285F4;' href=\"#\">Predicted User LTV Revenue</a>\n<a\
      \ style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/148\"\
      >Purchase Prediction</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/149\"\
      >Product Data</a>\n</div>"
    row: 0
    col: 0
    width: 5
    height: 14
