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
    fields: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.sum_ecommconversions,
      ad_performance_x_ad_conversions.date_1_week]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
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
    x_axis_datetime_label: "%d  %b '%y"
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
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 0
    col: 6
    width: 8
    height: 7
  - title: Cost
    name: Cost
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.sum_cost,
      ad_performance_x_ad_conversions.date_1_week]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date_1_week
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
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.sum_cost, id: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.sum_cost, name: DISPLAY Campaign (message)},
          {axisId: DISPLAY Campaign (votes) - ad_performance_x_ad_conversions.sum_cost,
            id: DISPLAY Campaign (votes) - ad_performance_x_ad_conversions.sum_cost,
            name: DISPLAY Campaign (votes)}, {axisId: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_cost,
            id: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.sum_cost,
            name: SEARCH Campaign (poor)}, {axisId: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_cost,
            id: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.sum_cost,
            name: SEARCH Campaign (proceed)}, {axisId: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_cost,
            id: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.sum_cost,
            name: VIDEO Campaign (plays)}, {axisId: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_cost,
            id: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.sum_cost, name: VIDEO
              Campaign (sie)}], showLabels: false, showValues: true, maxValue: !!null '',
        minValue: 0, valueFormat: '$ 0, "K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%d  %b '%y"
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
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 7
    col: 6
    width: 8
    height: 6
  - title: Impressions
    name: Impressions
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.campaign_name, sum_impressions, ad_performance_x_ad_conversions.date_1_week]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date_1_week
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
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: DISPLAY Campaign (message)
              - sum_impressions, id: DISPLAY Campaign (message) - sum_impressions,
            name: DISPLAY Campaign (message)}, {axisId: DISPLAY Campaign (votes) -
              sum_impressions, id: DISPLAY Campaign (votes) - sum_impressions, name: DISPLAY
              Campaign (votes)}, {axisId: SEARCH Campaign (poor) - sum_impressions,
            id: SEARCH Campaign (poor) - sum_impressions, name: SEARCH Campaign (poor)},
          {axisId: SEARCH Campaign (proceed) - sum_impressions, id: SEARCH Campaign
              (proceed) - sum_impressions, name: SEARCH Campaign (proceed)}, {axisId: VIDEO
              Campaign (plays) - sum_impressions, id: VIDEO Campaign (plays) - sum_impressions,
            name: VIDEO Campaign (plays)}, {axisId: VIDEO Campaign (sie) - sum_impressions,
            id: VIDEO Campaign (sie) - sum_impressions, name: VIDEO Campaign (sie)}],
        showLabels: false, showValues: true, valueFormat: '0.0,, "M"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%d  %b '%y"
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
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 7
    col: 14
    width: 10
    height: 6
  - title: Cost per conversion
    name: Cost per conversion
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.CPA,
      ad_performance_x_ad_conversions.date_1_week]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date_1_week
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
    show_null_points: true
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.CPA, id: DISPLAY Campaign (message)
              - ad_performance_x_ad_conversions.CPA, name: DISPLAY Campaign (message)},
          {axisId: DISPLAY Campaign (votes) - ad_performance_x_ad_conversions.CPA,
            id: DISPLAY Campaign (votes) - ad_performance_x_ad_conversions.CPA, name: DISPLAY
              Campaign (votes)}, {axisId: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.CPA,
            id: SEARCH Campaign (poor) - ad_performance_x_ad_conversions.CPA, name: SEARCH
              Campaign (poor)}, {axisId: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.CPA,
            id: SEARCH Campaign (proceed) - ad_performance_x_ad_conversions.CPA, name: SEARCH
              Campaign (proceed)}, {axisId: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.CPA,
            id: VIDEO Campaign (plays) - ad_performance_x_ad_conversions.CPA, name: VIDEO
              Campaign (plays)}, {axisId: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.CPA,
            id: VIDEO Campaign (sie) - ad_performance_x_ad_conversions.CPA, name: VIDEO
              Campaign (sie)}], showLabels: false, showValues: true, minValue: 0,
        valueFormat: "$0", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%d  %b '%y"
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
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 0
    col: 14
    width: 10
    height: 7
  - title: Conversion Trend
    name: Conversion Trend
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_column
    fields: [ad_performance_x_ad_conversions.sum_ecommconversions, ad_performance_x_ad_conversions.CPA,
      ad_performance_x_ad_conversions.date_1_week]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    filters:
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
    y_axes: [{label: Conversions, orientation: left, series: [{axisId: ad_performance_x_ad_conversions.sum_ecommconversions,
            id: ad_performance_x_ad_conversions.sum_ecommconversions, name: Sum Ecommconversions}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: Cost per conv., orientation: right,
        series: [{axisId: ad_performance_x_ad_conversions.CPA, id: ad_performance_x_ad_conversions.CPA,
            name: CPA}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types:
      ad_performance_x_ad_conversions.CPA: line
    series_colors:
      ad_performance_x_ad_conversions.sum_ecommconversions: "#A8C7FA"
      ad_performance_x_ad_conversions.CPA: "#1EA446"
    series_point_styles: {}
    x_axis_datetime_label: "%d  %b '%y"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 18
    col: 6
    width: 8
    height: 6
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
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 18
    col: 14
    width: 10
    height: 6
  - title: CTR
    name: CTR
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date_1_week,
      average_of_ctr]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date_1_week
        desc]
    limit: 500
    total: true
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_Impressions,
        value_format: !!null '', value_format_name: !!null '', based_on: ad_performance_x_ad_conversions.impressions,
        _kind_hint: measure, measure: sum_impressions, type: sum, _type_hint: number,
        id: z2Di88XCEe}, {measure: average_of_ctr, based_on: ad_performance_x_ad_conversions.ctr,
        expression: '', label: Average of Ctr, type: average, _kind_hint: measure,
        _type_hint: number, id: 32BXNHYoSp}]
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
              - average_of_ctr, id: DISPLAY Campaign (message) - average_of_ctr, name: DISPLAY
              Campaign (message)}, {axisId: DISPLAY Campaign (votes) - average_of_ctr,
            id: DISPLAY Campaign (votes) - average_of_ctr, name: DISPLAY Campaign
              (votes)}, {axisId: SEARCH Campaign (poor) - average_of_ctr, id: SEARCH
              Campaign (poor) - average_of_ctr, name: SEARCH Campaign (poor)}, {axisId: SEARCH
              Campaign (proceed) - average_of_ctr, id: SEARCH Campaign (proceed) -
              average_of_ctr, name: SEARCH Campaign (proceed)}, {axisId: VIDEO Campaign
              (plays) - average_of_ctr, id: VIDEO Campaign (plays) - average_of_ctr,
            name: VIDEO Campaign (plays)}, {axisId: VIDEO Campaign (sie) - average_of_ctr,
            id: VIDEO Campaign (sie) - average_of_ctr, name: VIDEO Campaign (sie)}],
        showLabels: false, showValues: true, valueFormat: '0.00', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%d  %b '%y"
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
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 13
    col: 14
    width: 10
    height: 5
  - title: Clicks
    name: Clicks
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_line
    fields: [ad_performance_x_ad_conversions.campaign_name, sum_of_clicks, ad_performance_x_ad_conversions.date_1_week]
    pivots: [ad_performance_x_ad_conversions.campaign_name]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.date_1_week
        desc]
    limit: 500
    total: true
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_Impressions,
        value_format: !!null '', value_format_name: !!null '', based_on: ad_performance_x_ad_conversions.impressions,
        _kind_hint: measure, measure: sum_impressions, type: sum, _type_hint: number,
        id: z2Di88XCEe}, {measure: sum_of_clicks, based_on: ad_performance_x_ad_conversions.clicks,
        expression: '', label: Sum of Clicks, type: sum, _kind_hint: measure, _type_hint: number,
        id: wSn6Owd0jH}]
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
              - sum_of_clicks, id: DISPLAY Campaign (message) - sum_of_clicks, name: DISPLAY
              Campaign (message)}, {axisId: DISPLAY Campaign (votes) - sum_of_clicks,
            id: DISPLAY Campaign (votes) - sum_of_clicks, name: DISPLAY Campaign (votes)},
          {axisId: SEARCH Campaign (poor) - sum_of_clicks, id: SEARCH Campaign (poor)
              - sum_of_clicks, name: SEARCH Campaign (poor)}, {axisId: SEARCH Campaign
              (proceed) - sum_of_clicks, id: SEARCH Campaign (proceed) - sum_of_clicks,
            name: SEARCH Campaign (proceed)}, {axisId: VIDEO Campaign (plays) - sum_of_clicks,
            id: VIDEO Campaign (plays) - sum_of_clicks, name: VIDEO Campaign (plays)},
          {axisId: VIDEO Campaign (sie) - sum_of_clicks, id: VIDEO Campaign (sie)
              - sum_of_clicks, name: VIDEO Campaign (sie)}], showLabels: false, showValues: true,
        valueFormat: '0, "K"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_labels: {}
    x_axis_datetime_label: "%d  %b '%y"
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
    listen:
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      'Date ': ad_performance_x_ad_conversions.date_1_date
    row: 13
    col: 6
    width: 8
    height: 5
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"font-size: 14px; padding: 5px 10px 0 10px;\">\n\n\t<a\
      \ style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/134\"\
      >Overview</a>\n<hr>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"https://protodemo.cloud.looker.com/dashboards/138\"\
      >PERFORMANCE</a>\n\t<a style='display: block; border-radius: 5px; padding: 5px\
      \ 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/135\"\
      >Campaign Performance</a>\n\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;font-weight: bold; background-color: #eaf1fe;\
      \ border: solid 1px #4285F4;' href=\"#\">Compare Campaigns</a>\n\n\n\t<a style='display:\
      \ block; border-radius: 5px; padding: 5px 10px; margin-bottom: 10px;color: #3C4043;'\
      \ href=\"https://protodemo.cloud.looker.com/dashboards/138\">Store Performance</a>\n\
      \    <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/140\"\
      >Web Traffic</a>\n    <a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/139\"\
      >Product Performance</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\"> PREDICTIONS</a>\n\
      <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/141\"\
      > Propensity to Purchase</a>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/142\"\
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
    width: 6
    height: 17
  filters:
  - name: Account  Name
    title: Account  Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    listens_to_filters: []
    field: ad_performance_x_ad_conversions.account_descriptive_name
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: popover
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    listens_to_filters: []
    field: ad_performance_x_ad_conversions.campaign_name
  - name: 'Date '
    title: 'Date '
    type: field_filter
    default_value: 2020/11/01 to 2021/02/02
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    listens_to_filters: []
    field: ad_performance_x_ad_conversions.date_1_date
