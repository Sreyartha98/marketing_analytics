- dashboard: demand_forecasting
  title: Demand Forecasting
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: o1eJ1sB60f9b9c8WCmdSrP
  elements:
  - title: Predicted Total Amount
    name: Predicted Total Amount
    model: marketing_analytics_1
    explore: demand_forecasting_prediction
    type: looker_line
    fields: [sum_predicted_total_amount_sold, demand_forecasting_prediction.event_date]
    sorts: [sum_predicted_total_amount_sold desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum predicted
          total amount sold, value_format: '0.0,, "M"', value_format_name: __custom,
        based_on: demand_forecasting_prediction.predicted_total_amount_sold, _kind_hint: measure,
        measure: sum_predicted_total_amount_sold, type: sum, _type_hint: number, id: zqu4PK3ert}]
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_predicted_total_amount_sold,
            id: sum_predicted_total_amount_sold, name: Sum predicted total amount
              sold}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      sum_predicted_total_amount_sold: "#669DF6"
    defaults_version: 1
    row: 0
    col: 6
    width: 18
    height: 5
  - title: Purchase Predictions by Category
    name: Purchase Predictions by Category
    model: marketing_analytics_1
    explore: demand_forecasting_prediction
    type: looker_column
    fields: [demand_forecasting_prediction.item_category2, sum_predicted_total_amount_sold]
    sorts: [sum_predicted_total_amount_sold desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum predicted
          total amount sold, value_format: '0.0,,"M"', value_format_name: __custom,
        based_on: demand_forecasting_prediction.predicted_total_amount_sold, _kind_hint: measure,
        measure: sum_predicted_total_amount_sold, type: sum, _type_hint: number, id: D7BqYnlHbZ}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_predicted_total_amount_sold,
            id: Clothing - sum_predicted_total_amount_sold, name: Clothing}, {axisId: sum_predicted_total_amount_sold,
            id: Clothing Accessories - sum_predicted_total_amount_sold, name: Clothing
              Accessories}, {axisId: sum_predicted_total_amount_sold, id: 'Handbags,
              Wallets & Cases - sum_predicted_total_amount_sold', name: 'Handbags,
              Wallets & Cases'}, {axisId: sum_predicted_total_amount_sold, id: Jewelry
              - sum_predicted_total_amount_sold, name: Jewelry}, {axisId: sum_predicted_total_amount_sold,
            id: Shoes - sum_predicted_total_amount_sold, name: Shoes}], showLabels: false,
        showValues: true, maxValue: 40000000, minValue: !!null '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Clothing - sum_predicted_total_amount_sold: "#FCAD70"
      Shoes - sum_predicted_total_amount_sold: "#8AB4F8"
      Handbags, Wallets & Cases - sum_predicted_total_amount_sold: "#81C995"
      Clothing Accessories - sum_predicted_total_amount_sold: "#C58AF9"
      Jewelry - sum_predicted_total_amount_sold: "#FDD663"
      sum_predicted_total_amount_sold: "#8AB4F8"
    series_labels: {}
    show_dropoff: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 5
    col: 6
    width: 18
    height: 5
  - title: Untitled
    name: Untitled
    model: marketing_analytics_1
    explore: demand_forecasting_prediction
    type: looker_google_map
    fields: [demand_forecasting_prediction.location_new, demand_forecasting_prediction.store_name,
      item_sold]
    sorts: [demand_forecasting_prediction.location_new]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: "#Item sold",
        value_format: !!null '', value_format_name: !!null '', based_on: demand_forecasting_prediction.item_name,
        _kind_hint: measure, measure: item_sold, type: count_distinct, _type_hint: number,
        id: 8AWjLnx5lA}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: heatmap
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_scale_indicator: 'off'
    series_types: {}
    defaults_version: 0
    title_hidden: true
    listen: {}
    row: 16
    col: 6
    width: 18
    height: 9
  - title: Purchase Predictions - February
    name: Purchase Predictions - February
    model: marketing_analytics_1
    explore: demand_forecasting_prediction
    type: looker_column
    fields: [demand_forecasting_prediction.item_brand, sum_predicted_total_amount_sold]
    sorts: [sum_predicted_total_amount_sold desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Predicted
          total amount sold, value_format: '0.0,,"M"', value_format_name: __custom,
        based_on: demand_forecasting_prediction.predicted_total_amount_sold, _kind_hint: measure,
        measure: sum_predicted_total_amount_sold, type: sum, _type_hint: number, id: GuR31CPH4I}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_predicted_total_amount_sold,
            id: sum_predicted_total_amount_sold, name: Sum Predicted total amount
              sold}], showLabels: false, showValues: true, maxValue: 5000000, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      sum_predicted_total_amount_sold: "#8AB4F8"
    defaults_version: 1
    row: 10
    col: 6
    width: 18
    height: 6
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
      \ padding: 5px 10px; margin-bottom: 10px;font-weight: bold; background-color:\
      \ #eaf1fe; border: solid 1px #4285F4;' href=\"#\">Demand Forecasting</a>\n<a\
      \ style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/144\"\
      >Sentiment Analysis-Reviews</a>\n<hr>\n<a style='display: block; border-radius:\
      \ 5px; padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">MISC.</a>\n\
      <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/151\"\
      >Audience Registry</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">DETAILED\
      \ VIEW.</a>\n<a style='display: block; border-radius: 5px; padding: 5px 10px;\
      \ margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/147\"\
      >Product Availability</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/145\"\
      >Propensity to Purchase</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/146\"\
      >Predicted User LTV Revenue</a>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/148\"\
      >Purchase Prediction</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/149\"\
      >Product Data</a>\n</div>"
    row: 0
    col: 0
    width: 6
    height: 17
