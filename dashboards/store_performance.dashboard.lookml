- dashboard: store_performance
  title: Store Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 0p013N0FBoTaKigAaMv20l
  elements:
  - title: Product Availability
    name: Product Availability
    model: marketing_analytics_1
    explore: inventory
    type: looker_pie
    fields: [inventory.availability, inventory.count]
    sorts: [inventory.availability]
    limit: 500
    value_labels: labels
    label_type: labPer
    inner_radius: 80
    series_colors:
      in_stock: "#6DD58C"
      out_of_stock: "#EC928E"
    series_labels:
      in_stock: In stock
      out_of_stock: Out of stock
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
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 0
    col: 0
    width: 7
    height: 6
  - title: Sales
    name: Sales
    model: marketing_analytics_1
    explore: transactions
    type: looker_column
    fields: [transactions.transaction_date, revenue]
    sorts: [revenue desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Revenue, value_format: !!null '',
        value_format_name: !!null '', based_on: transactions.price, _kind_hint: measure,
        measure: revenue, type: sum, _type_hint: number, id: 7QvXpGVePY}]
    filter_expression: ${transactions.channel} = "Retail"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: revenue, id: revenue,
            name: Revenue}], showLabels: true, showValues: true, maxValue: 20000,
        valueFormat: '$#, " K "', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Date
    hide_legend: false
    series_types: {}
    series_colors:
      revenue: "#A8C7FA"
    label_color: []
    x_axis_datetime_label: "%b %y"
    trend_lines: []
    show_dropoff: false
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 0
    col: 7
    width: 16
    height: 6
  - title: Product availability by region
    name: Product availability by region
    model: marketing_analytics_1
    explore: store_join_inventory_location
    type: looker_map
    fields: [store_join_inventory_location.location, store_join_inventory_location.count,
      store_join_inventory_location.store_name]
    sorts: [store_join_inventory_location.location]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Count_availability,
        value_format: !!null '', value_format_name: !!null '', based_on: store_join_inventory_location.availability,
        _kind_hint: measure, measure: count_availability, type: count_distinct, _type_hint: number,
        id: kkzC1HuFtJ}]
    filter_expression: ${store_join_inventory_location.availability} = "out_of_stock"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: fixed
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_fixed: 90000
    series_types: {}
    defaults_version: 1
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen: {}
    row: 6
    col: 0
    width: 23
    height: 8
