- dashboard: campaign_comparison
  title: Campaign Comparison
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: u25IOZrAruLfWfKgLWNfOl
  elements:
  - title: Conversions
    name: Conversions
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.date, ad_performance_x_ad_conversions.campaign_name,
      ad_performance_x_ad_conversions.sum_ecommconversions]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.sum_ecommconversions
        desc 0]
    limit: 500
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY
              Campaign (message) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: DISPLAY Campaign (message)}, {axisId: DISPLAY Campaign (votes) -
              ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY Campaign
              (votes) - ad_performance_x_ad_conversions.sum_ecommconversions, name: DISPLAY
              Campaign (votes)}, {axisId: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (poor)}, {axisId: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (proceed)}, {axisId: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (plays)}, {axisId: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (sie)}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_colors:
      DISPLAY Campaign (message) - ad_performance_x_ad_conversions.sum_ecommconversions: "#7cb342"
      DISPLAY Campaign (votes) - ad_performance_x_ad_conversions.sum_ecommconversions: "#ffa800"
      SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions: "#f66d00"
      SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions: "#00b6cb"
      VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions: "#0072f0"
      VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions: "#f10096"
    series_labels: {}
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 0
    width: 10
    height: 5
  - title: Cost
    name: Cost
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.date, ad_performance_x_ad_conversions.campaign_name,
      ad_performance_x_ad_conversions.sum_cost]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date
        desc]
    limit: 500
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY
              Campaign (message) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: DISPLAY Campaign (message)}, {axisId: DISPLAY Campaign (votes) -
              ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY Campaign
              (votes) - ad_performance_x_ad_conversions.sum_ecommconversions, name: DISPLAY
              Campaign (votes)}, {axisId: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (poor)}, {axisId: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (proceed)}, {axisId: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (plays)}, {axisId: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (sie)}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 5
    col: 0
    width: 10
    height: 5
  - title: Impressions
    name: Impressions
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.date, ad_performance_x_ad_conversions.campaign_name,
      sum_impressions]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date
        desc]
    limit: 500
    total: true
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_Impressions,
        value_format: !!null '', value_format_name: !!null '', based_on: ad_performance_x_ad_conversions.impressions,
        _kind_hint: measure, measure: sum_impressions, type: sum, _type_hint: number,
        id: z2Di88XCEe}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY
              Campaign (message) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: DISPLAY Campaign (message)}, {axisId: DISPLAY Campaign (votes) -
              ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY Campaign
              (votes) - ad_performance_x_ad_conversions.sum_ecommconversions, name: DISPLAY
              Campaign (votes)}, {axisId: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (poor)}, {axisId: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (proceed)}, {axisId: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (plays)}, {axisId: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (sie)}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 5
    col: 10
    width: 10
    height: 5
  - title: Cost per conversion
    name: Cost per conversion
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.date, ad_performance_x_ad_conversions.campaign_name,
      ad_performance_x_ad_conversions.CPA]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date
        desc]
    limit: 500
    total: true
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY
              Campaign (message) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: DISPLAY Campaign (message)}, {axisId: DISPLAY Campaign (votes) -
              ad_performance_x_ad_conversions.sum_ecommconversions, id: DISPLAY Campaign
              (votes) - ad_performance_x_ad_conversions.sum_ecommconversions, name: DISPLAY
              Campaign (votes)}, {axisId: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (poor)}, {axisId: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: SEARCH Campaign (proceed)}, {axisId: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (plays)}, {axisId: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            id: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_ecommconversions,
            name: VIDEO Campaign (sie)}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%b %y"
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 10
    width: 10
    height: 5
  - title: Conversion Trend
    name: Conversion Trend
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_column
    fields: [ad_performance_x_ad_conversions.date, ad_performance_x_ad_conversions.sum_ecommconversions,
      ad_performance_x_ad_conversions.CPA]
    filters:
      ad_performance_x_ad_conversions.campaign_name: DISPLAY Campaign (message),DISPLAY
        Campaign (votes),SEARCH Campaign (poor),SEARCH Campaign (proceed),VIDEO Campaign
        (plays),VIDEO Campaign (sie)
      ad_performance_x_ad_conversions.campaign_id: ''
    sorts: [ad_performance_x_ad_conversions.sum_ecommconversions desc 0]
    limit: 500
    column_limit: 50
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_performance_x_ad_conversions.sum_ecommconversions,
            id: ad_performance_x_ad_conversions.sum_ecommconversions, name: Sum Ecommconversions}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: ad_performance_x_ad_conversions.CPA, id: ad_performance_x_ad_conversions.CPA,
            name: CPA}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      ad_performance_x_ad_conversions.CPA: line
    series_colors:
      ad_performance_x_ad_conversions.sum_ecommconversions: "#A8C7FA"
      ad_performance_x_ad_conversions.CPA: "#1EA446"
    series_point_styles: {}
    x_axis_datetime_label: "%b %y"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 10
    height: 5
  - title: Campaign Comparison
    name: Campaign Comparison
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_grid
    fields: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.sum_ecommconversions,
      ad_performance_x_ad_conversions.CPA, average_ctr]
    sorts: [ad_performance_x_ad_conversions.sum_ecommconversions desc 0]
    limit: 500
    total: true
    dynamic_fields: [{category: measure, expression: !!null '', label: Average Ctr,
        value_format: !!null '', value_format_name: !!null '', based_on: ad_performance_x_ad_conversions.ctr,
        _kind_hint: measure, measure: average_ctr, type: average, _type_hint: number,
        id: aaEFm9mDsD}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: false
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: false
    show_row_totals: true
    truncate_header: false
    series_labels:
      ad_performance_x_ad_conversions.CPA: Cost/Conv
      average_ctr: CTR
      ad_performance_x_ad_conversions.sum_ecommconversions: Conversions
    series_column_widths: {}
    series_cell_visualizations:
      ad_performance_x_ad_conversions.sum_ecommconversions:
        is_active: false
        value_display: true
      ad_performance_x_ad_conversions.CPA:
        is_active: false
        palette:
          palette_id: 66e7cb58-ebaa-90ab-3f8a-08efe5784862
          collection_id: google
          custom_colors:
          - "#c5d6cb"
          - "#4276BE"
          - "#4276BE"
          - "#4276BE"
          - "#4276BE"
        value_display: true
    series_text_format:
      ad_performance_x_ad_conversions.CPA:
        align: center
      average_ctr:
        align: center
      ad_performance_x_ad_conversions.sum_ecommconversions:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: 9afefe12-13c2-66dc-54ed-a5bb6e34c652, label: Custom, type: continuous,
            stops: [{color: "#C4EED0", offset: 0}, {color: "#E7F8ED", offset: 50},
              {color: "#F2FFEE", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: [ad_performance_x_ad_conversions.CPA]}]
    series_value_format:
      average_ctr:
        name: decimal_2
        decimals: '2'
        format_string: "#,##0.00"
        label: Decimals (2)
        label_prefix: Decimals
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 10
    width: 10
    height: 5
