- dashboard: web_traffic
  title: Web Traffic
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5jE0HVlLgYUAjBxXj3fXg2
  elements:
  - title: Total Sessions
    name: Total Sessions
    model: marketing_analytics_1
    explore: session_engagements
    type: single_value
    fields: [sum_total_sessions]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: 'Sum total
          sessions ', value_format: '0.0,, "M"', value_format_name: __custom, based_on: session_engagements.total_sessions,
        _kind_hint: measure, measure: sum_total_sessions, type: sum, _type_hint: number,
        id: fK6WRmCCWP}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 10
    width: 5
    height: 2
  - title: Session Duration
    name: Session Duration
    model: marketing_analytics_1
    explore: session_engagements
    type: single_value
    fields: [avg_engagement_time_sessions]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Avg_engagement_time_sessions,
        value_format: 0.# s, value_format_name: __custom, based_on: session_engagements.engagement_time_seconds,
        _kind_hint: measure, measure: avg_engagement_time_sessions, type: average,
        _type_hint: number, id: EWxz6aGJwt}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 5
    width: 5
    height: 2
  - title: Avg Unique Pageviews
    name: Avg Unique Pageviews
    model: marketing_analytics_1
    explore: event_pages_dates
    type: single_value
    fields: [avg_unique_pageviews]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Avg unique
          pageviews, value_format: !!null '', value_format_name: decimal_1, based_on: event_pages_dates.unique_pageviews,
        _kind_hint: measure, measure: avg_unique_pageviews, type: average, _type_hint: number,
        id: hkQbonLBja}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Date: event_pages_dates.event_date
    row: 0
    col: 15
    width: 4
    height: 2
  - title: Avg Time on Page
    name: Avg Time on Page
    model: marketing_analytics_1
    explore: page_title_x_session_details
    type: single_value
    fields: [page_title_x_session_details.avg_time_on_page]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: 0.# "s"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 19
    width: 5
    height: 2
  - title: Most Popular Pages
    name: Most Popular Pages
    model: marketing_analytics_1
    explore: page_title_x_session_details
    type: looker_grid
    fields: [total_sessions, page_title_x_session_details.avg_time_on_page_table,
      page_title_x_session_details.bounce_rate, page_title_x_session_details.page_title]
    sorts: [total_sessions desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Total Sessions,
        value_format: !!null '', value_format_name: !!null '', based_on: page_title_x_session_details.session_id,
        _kind_hint: measure, measure: total_sessions, type: count_distinct, _type_hint: number,
        id: 1b6ivrhSJe}]
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
      page_title_x_session_details.avg_time_on_page_table: Avg Time on Page
      page_title_x_session_details.bounce_rate: Bounce %
    series_column_widths:
      page_title_x_session_details.avg_time_on_page_table: 371
      total_sessions: 140
    series_cell_visualizations:
      total_sessions:
        is_active: true
        value_display: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      page_title_x_session_details.bounce_rate:
        is_active: true
        palette:
          palette_id: d2dc522f-4854-d1b3-b38d-a8527e7f2f0b
          collection_id: google
          custom_colors:
          - "#ECF3FE"
          - "#3EB0D5"
          - "#4276BE"
      page_title_x_session_details.avg_time_on_page_table:
        is_active: true
    series_value_format:
      page_title_x_session_details.avg_time_on_page_table:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
      page_title_x_session_details.bounce_rate:
        name: percent_1
        decimals: '1'
        format_string: "#,##0.0%"
        label: Percent (1)
        label_prefix: Percent
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 5
    width: 10
    height: 6
  - title: 'Sources that send most traffic '
    name: 'Sources that send most traffic '
    model: marketing_analytics_1
    explore: page_title_x_session_details
    type: looker_grid
    fields: [page_title_x_session_details.page_title, page_title_x_session_details.count,
      page_title_x_session_details.bounce_rate]
    sorts: [page_title_x_session_details.page_title]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Total Sessions,
        value_format: !!null '', value_format_name: !!null '', based_on: page_title_x_session_details.session_id,
        _kind_hint: measure, measure: total_sessions, type: count_distinct, _type_hint: number,
        id: 1b6ivrhSJe}]
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
      page_title_x_session_details.avg_time_on_page_table: Avg Time on Page
      page_title_x_session_details.bounce_rate: Bounce %
      page_title_x_session_details.count: Traffic
    series_column_widths:
      page_title_x_session_details.avg_time_on_page_table: 371
      total_sessions: 140
      page_title_x_session_details.count: 124
    series_cell_visualizations:
      total_sessions:
        is_active: true
        value_display: true
        palette:
          palette_id: google-sequential-0
          collection_id: google
      page_title_x_session_details.bounce_rate:
        is_active: true
        palette:
          palette_id: d2dc522f-4854-d1b3-b38d-a8527e7f2f0b
          collection_id: google
          custom_colors:
          - "#ECF3FE"
          - "#3EB0D5"
          - "#4276BE"
      page_title_x_session_details.avg_time_on_page_table:
        is_active: true
    series_value_format:
      page_title_x_session_details.avg_time_on_page_table:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
      page_title_x_session_details.bounce_rate:
        name: percent_1
        decimals: '1'
        format_string: "#,##0.0%"
        label: Percent (1)
        label_prefix: Percent
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 2
    col: 15
    width: 9
    height: 6
  - title: Popular devices and browsers
    name: Popular devices and browsers
    model: marketing_analytics_1
    explore: events_mod
    type: looker_column
    fields: [events_mod.device__category, events_mod.device__web_info__browser, events_mod.count]
    pivots: [events_mod.device__web_info__browser]
    sorts: [events_mod.device__web_info__browser, events_mod.device__category]
    limit: 500
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: "<Other> - events_mod.count",
            id: "<Other> - events_mod.count", name: Others}, {axisId: Android Webview
              - events_mod.count, id: Android Webview - events_mod.count, name: Android
              Webview}, {axisId: Chrome - events_mod.count, id: Chrome - events_mod.count,
            name: Chrome}, {axisId: Edge - events_mod.count, id: Edge - events_mod.count,
            name: Edge}, {axisId: Firefox - events_mod.count, id: Firefox - events_mod.count,
            name: Firefox}, {axisId: Safari - events_mod.count, id: Safari - events_mod.count,
            name: Safari}], showLabels: false, showValues: true, maxValue: 2500000,
        minValue: 0, valueFormat: '0.0,,"M"', unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 15, type: linear}]
    series_types: {}
    series_colors:
      Chrome - events_mod.count: "#8AB4F8"
      Safari - events_mod.count: "#81C995"
      "<Other> - events_mod.count": "#FDD663"
      Edge - events_mod.count: "#FAD2CF"
      Firefox - events_mod.count: "#FCAD70"
      Android Webview - events_mod.count: "#FF8BCB"
    series_labels:
      "<Other> - events_mod.count": Others
    defaults_version: 1
    listen: {}
    row: 8
    col: 5
    width: 10
    height: 6
  - title: Purchases by devices and browsers
    name: Purchases by devices and browsers
    model: marketing_analytics_1
    explore: events_mod
    type: looker_column
    fields: [events_mod.device__category, events_mod.device__web_info__browser, sum_e_commerce_purchase_revenue]
    pivots: [events_mod.device__web_info__browser]
    sorts: [events_mod.device__web_info__browser, events_mod.device__category]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum E-commerce
          Purchase Revenue, value_format: !!null '', value_format_name: decimal_1,
        based_on: events_mod.ecommerce__purchase_revenue, _kind_hint: measure, measure: sum_e_commerce_purchase_revenue,
        type: sum, _type_hint: number, id: IgOVIav23d}]
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
    stacking: normal
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
    y_axes: [{label: '', orientation: left, series: [{axisId: "<Other> - sum_e_commerce_purchase_revenue",
            id: "<Other> - sum_e_commerce_purchase_revenue", name: Other}, {axisId: Android
              Webview - sum_e_commerce_purchase_revenue, id: Android Webview - sum_e_commerce_purchase_revenue,
            name: Android Webview}, {axisId: Chrome - sum_e_commerce_purchase_revenue,
            id: Chrome - sum_e_commerce_purchase_revenue, name: Chrome}, {axisId: Edge
              - sum_e_commerce_purchase_revenue, id: Edge - sum_e_commerce_purchase_revenue,
            name: Edge}, {axisId: Firefox - sum_e_commerce_purchase_revenue, id: Firefox
              - sum_e_commerce_purchase_revenue, name: Firefox}, {axisId: Safari -
              sum_e_commerce_purchase_revenue, id: Safari - sum_e_commerce_purchase_revenue,
            name: Safari}], showLabels: false, showValues: true, maxValue: 200000,
        minValue: 0, valueFormat: '0, "K"', unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 15, type: linear}]
    series_types: {}
    series_colors:
      Chrome - events_mod.count: "#8AB4F8"
      Safari - events_mod.count: "#81C995"
      "<Other> - events_mod.count": "#FDD663"
      Edge - events_mod.count: "#FAD2CF"
      Firefox - events_mod.count: "#FCAD70"
      Android Webview - events_mod.count: "#FF8BCB"
      Chrome - sum_e_commerce_purchase_revenue: "#8AB4F8"
      Safari - sum_e_commerce_purchase_revenue: "#81C995"
      "<Other> - sum_e_commerce_purchase_revenue": "#FDD663"
      Edge - sum_e_commerce_purchase_revenue: "#FAD2CF"
      Firefox - sum_e_commerce_purchase_revenue: "#FCAD70"
      Android Webview - sum_e_commerce_purchase_revenue: "#FF8BCB"
    series_labels:
      "<Other> - events_mod.count": Others
      "<Other> - sum_e_commerce_purchase_revenue": Other
    defaults_version: 1
    listen: {}
    row: 8
    col: 15
    width: 9
    height: 6
  - title: This is where the traffic comes from
    name: This is where the traffic comes from
    model: marketing_analytics_1
    explore: events_mod
    type: looker_google_map
    fields: [events_mod.state, events_mod.count_event_name]
    sorts: [events_mod.count_event_name desc 0]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    map_plot_mode: points
    heatmap_gridlines: true
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
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_scale_indicator: 'off'
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 14
    col: 5
    width: 19
    height: 8
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
      \ 5px 10px; margin-bottom: 10px;font-weight: bold; background-color: #eaf1fe;\
      \ border: solid 1px #4285F4;' href=\"#\">Web Traffic</a>\n    <a style='display:\
      \ block; border-radius: 5px; padding: 5px 10px; margin-bottom: 10px;color: #3C4043;'\
      \ href=\"https://protodemo.cloud.looker.com/dashboards/139\">Product Performance</a>\n\
      <hr>\n<a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #9AA0A6;' href=\"#\"> PREDICTIONS</a>\n<a style='display: block;\
      \ border-radius: 5px; padding: 5px 10px; margin-bottom: 10px;color: #3C4043;'\
      \ href=\"https://protodemo.cloud.looker.com/dashboards/141\"> Propensity to\
      \ Purchase</a>\n<a style='display: block; border-radius: 5px; padding: 5px 10px;\
      \ margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/142\"\
      > Customer Lifetime Value</a>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/143\"\
      > Demand Forecasting</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/144\"\
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
    width: 5
    height: 17
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 2020/11/01 to 2021/02/02
    allow_multiple_values: true
    required: true
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: marketing_analytics_1
    explore: event_pages_dates
    listens_to_filters: []
    field: event_pages_dates.event_date
