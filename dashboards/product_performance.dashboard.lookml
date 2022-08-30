- dashboard: product_performance
  title: Product Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 5JJrjPjQdqThIUbHneLyUc
  elements:
  - title: Stock Availability
    name: Stock Availability
    model: marketing_analytics_1
    explore: products
    type: looker_column
    fields: [products.item_category2, products.availability, sum_google_product_category_id]
    pivots: [products.availability]
    sorts: [products.availability, sum_google_product_category_id desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_google_product_category_id,
        value_format: !!null '', value_format_name: !!null '', based_on: products.google_product_category_id,
        _kind_hint: measure, measure: sum_google_product_category_id, type: sum, _type_hint: number,
        id: moH4P8RzHw}]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: backorder - sum_google_product_category_id,
            id: backorder - sum_google_product_category_id, name: backorder}, {axisId: in_stock
              - sum_google_product_category_id, id: in_stock - sum_google_product_category_id,
            name: in_stock}, {axisId: out_of_stock - sum_google_product_category_id,
            id: out_of_stock - sum_google_product_category_id, name: out_of_stock},
          {axisId: preorder - sum_google_product_category_id, id: preorder - sum_google_product_category_id,
            name: preorder}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      in_stock - sum_google_product_category_id: "#6DD58C"
      out_of_stock - sum_google_product_category_id: "#EC928E"
      backorder - sum_google_product_category_id: "#8AB4F8"
      preorder - sum_google_product_category_id: "#FDD663"
    defaults_version: 1
    show_null_points: true
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
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Sales
    name: Sales
    model: marketing_analytics_1
    explore: transactions
    type: looker_column
    fields: [transactions.transaction_date, transactions.total_price]
    fill_fields: [transactions.transaction_date]
    sorts: [transactions.transaction_date desc]
    limit: 500
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Sales, orientation: left, series: [{axisId: transactions.total_price,
            id: transactions.total_price, name: Total Price}], showLabels: true, showValues: true,
        maxValue: 20000, minValue: 0, valueFormat: '$#, " K "', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      transactions.total_price: "#A8C7FA"
    x_axis_datetime_label: "%b%y"
    defaults_version: 1
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
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Sales (Area Chart)
    name: Sales (Area Chart)
    model: marketing_analytics_1
    explore: transactions
    type: looker_area
    fields: [transactions.transaction_date, transactions.total_price]
    fill_fields: [transactions.transaction_date]
    sorts: [transactions.transaction_date desc]
    limit: 500
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Sales, orientation: left, series: [{axisId: transactions.total_price,
            id: transactions.total_price, name: Total Price}], showLabels: true, showValues: true,
        maxValue: 20000, minValue: 0, valueFormat: '$#, " K "', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      transactions.total_price: "#A8C7FA"
    x_axis_datetime_label: "%b%y"
    ordering: none
    show_null_labels: false
    defaults_version: 1
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
    row: 6
    col: 0
    width: 12
    height: 4
  - title: New Tile
    name: New Tile
    model: google_analytics_360_v2
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.dash_nav]
    filters:
      ga_sessions.partition_date: 2016 to 2017
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    series_types: {}
    listen: {}
    row:
    col:
    width:
    height:
