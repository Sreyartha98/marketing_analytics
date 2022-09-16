- dashboard: campaign_performance
  title: Campaign Performance
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: O3jGoEGzOWMNkerMmqpDzl
  elements:
  - title: Conversions
    name: Conversions
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_area
    fields: [ad_performance_x_ad_conversions.sum_ecommconversions, ad_performance_x_ad_conversions.date_1_week]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.date_1_week desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_performance_x_ad_conversions.sum_ecommconversions,
            id: ad_performance_x_ad_conversions.sum_ecommconversions, name: Sum Ecommconversions}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    title_hidden: true
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 4
    col: 5
    width: 9
    height: 3
  - title: Conversion Trend
    name: Conversion Trend
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_column
    fields: [ad_performance_x_ad_conversions.sum_ecommconversions, ad_performance_x_ad_conversions.CPA,
      ad_performance_x_ad_conversions.date_1_week]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.sum_ecommconversions desc 0]
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
        tickDensityCustom: 5, type: linear}, {label: Cost per Conv., orientation: right,
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
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 8
    col: 14
    width: 10
    height: 6
  - title: ''
    name: ''
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_area
    fields: [ad_performance_x_ad_conversions.CPA, ad_performance_x_ad_conversions.date_1_week]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.date_1_week desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_performance_x_ad_conversions.sum_ecommconversions,
            id: ad_performance_x_ad_conversions.sum_ecommconversions, name: Sum Ecommconversions}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    title_hidden: true
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 4
    col: 14
    width: 10
    height: 3
  - title: Cost
    name: Cost
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_area
    fields: [ad_performance_x_ad_conversions.sum_cost, ad_performance_x_ad_conversions.date_1_week]
    fill_fields: [ad_performance_x_ad_conversions.date_1_week]
    sorts: [ad_performance_x_ad_conversions.date_1_week desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ad_performance_x_ad_conversions.sum_cost,
            id: ad_performance_x_ad_conversions.sum_cost, name: Sum Cost}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    title_hidden: true
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 12
    col: 5
    width: 9
    height: 2
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
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 14
    col: 14
    width: 10
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"font-size: 14px; padding: 5px 10px 0 10px;\">\n\n\t<a\
      \ style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/134\"\
      >Overview</a>\n<hr>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">PERFORMANCE</a>\n\
      <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;font-weight: bold; background-color: #eaf1fe; border: solid 1px #4285F4;'\
      \ href=\"#\">Campaign Performance</a>\n\n\n\t<a style='display: block; border-radius:\
      \ 5px; padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/137\"\
      >Compare Campaigns</a>\n\n\t<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/138\"\
      >Store Performance</a>\n    <a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/140\"\
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
    width: 5
    height: 13
  - title: Conversions
    name: Conversions (2)
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: single_value
    fields: [ad_performance_x_ad_conversions.sum_ecommconversions, ad_performance_x_ad_conversions.conversion_current_target,
      filtered_ad_performance_x_ad_conversions_conversion_current_target]
    limit: 500
    dynamic_fields: [{category: measure, label: Filtered Ad Performance X Ad Conversions
          - Conversion Current Target, value_format: '0.0, "K"', value_format_name: __custom,
        based_on: ad_performance_x_ad_conversions.conversion_current_target, _kind_hint: measure,
        measure: filtered_ad_performance_x_ad_conversions_conversion_current_target,
        type: count_distinct, _type_hint: number, id: kaga0YkJtb}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: Conversions
    value_format: 0.0, "K"
    comparison_label: Target
    conditional_formatting: [{type: greater than, value: 0, background_color: "#FFFFFF",
        font_color: "#4285F4", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [ad_performance_x_ad_conversions.conversion_current_target]
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 0
    col: 5
    width: 9
    height: 4
  - title: Cost per Conversion
    name: Cost per Conversion
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: single_value
    fields: [ad_performance_x_ad_conversions.CPA, ad_performance_x_ad_conversions.cpa_current_target,
      filtered_ad_performance_x_ad_conversions_cpa_current_target]
    filters:
      ad_performance_x_ad_conversions.cpa_current_target: ''
    limit: 500
    dynamic_fields: [{category: measure, label: Filtered Ad Performance X Ad Conversions
          - Cpa Current Target, value_format: !!null '', value_format_name: usd_0,
        based_on: ad_performance_x_ad_conversions.cpa_current_target, _kind_hint: measure,
        measure: filtered_ad_performance_x_ad_conversions_cpa_current_target, type: count_distinct,
        _type_hint: number, id: CcpH7WFrZs}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Cost per conv.
    value_format: ''
    comparison_label: Target
    defaults_version: 1
    hidden_fields: [ad_performance_x_ad_conversions.cpa_current_target]
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 0
    col: 14
    width: 10
    height: 4
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<hr>"
    row: 7
    col: 5
    width: 19
    height: 1
  - title: Cost
    name: Cost (2)
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: single_value
    fields: [ad_performance_x_ad_conversions.sum_cost, filtered_ad_performance_x_ad_conversions_current_cost_target]
    limit: 500
    dynamic_fields: [{category: measure, label: Filtered Ad Performance X Ad Conversions
          - Current Cost Target, value_format: '$0.0, "K"', value_format_name: __custom,
        based_on: ad_performance_x_ad_conversions.current_cost_target, _kind_hint: measure,
        measure: filtered_ad_performance_x_ad_conversions_current_cost_target, type: count_distinct,
        _type_hint: number, id: MLz27gtfcU}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#444747"
    single_value_title: Cost(in $)
    value_format: 0.0, "K"
    comparison_label: Target
    conditional_formatting: [{type: greater than, value: 0, background_color: "#E8EAED",
        font_color: "#5F6368", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 8
    col: 5
    width: 9
    height: 4
  - title: Impressions
    name: Impressions
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: single_value
    fields: [sum_impressions, filtered_ad_performance_x_ad_conversions_impressions_target]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_Impressions,
        value_format: '$0.0,, "M"', value_format_name: __custom, based_on: ad_performance_x_ad_conversions.impressions,
        _kind_hint: measure, measure: sum_impressions, type: sum, _type_hint: number,
        id: apUOwsp2db}, {category: measure, label: Filtered Ad Performance X Ad Conversions
          - Impressions Target, value_format: '$0.0,, "M"', value_format_name: __custom,
        based_on: ad_performance_x_ad_conversions.impressions_target, _kind_hint: measure,
        measure: filtered_ad_performance_x_ad_conversions_impressions_target, type: count_distinct,
        _type_hint: number, id: g6idKKfu5z}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Target
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
    show_null_points: true
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 14
    col: 5
    width: 4
    height: 4
  - title: Clicks
    name: Clicks
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: single_value
    fields: [sum_clicks, filtered_ad_performance_x_ad_conversions_current_click_target]
    sorts: [sum_clicks desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_clicks,
        value_format: '$0.0, "K"', value_format_name: __custom, based_on: ad_performance_x_ad_conversions.clicks,
        _kind_hint: measure, measure: sum_clicks, type: sum, _type_hint: number, id: Dl1TT7PeQI},
      {category: measure, label: Filtered Ad Performance X Ad Conversions - Current
          Click Target, value_format: '0.0, "K"', value_format_name: __custom, based_on: ad_performance_x_ad_conversions.current_click_target,
        _kind_hint: measure, measure: filtered_ad_performance_x_ad_conversions_current_click_target,
        type: count_distinct, _type_hint: number, id: egBTJ4MTTe}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Target
    series_types: {}
    defaults_version: 1
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 14
    col: 9
    width: 5
    height: 4
  - title: CTR
    name: CTR
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: single_value
    fields: [avg_ctr, filtered_ad_performance_x_ad_conversions_ctr_target]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Avg_ctr, value_format: !!null '',
        value_format_name: decimal_2, based_on: ad_performance_x_ad_conversions.ctr,
        _kind_hint: measure, measure: avg_ctr, type: average, _type_hint: number,
        id: GnTz5rzHWp}, {category: measure, label: Filtered Ad Performance X Ad Conversions
          - Ctr Target, value_format: !!null '', value_format_name: decimal_2, based_on: ad_performance_x_ad_conversions.ctr_target,
        _kind_hint: measure, measure: filtered_ad_performance_x_ad_conversions_ctr_target,
        type: count_distinct, _type_hint: number, id: zzrCSbBGfr}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: Target
    defaults_version: 1
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Account  Name: ad_performance_x_ad_conversions.account_descriptive_name
      Date: ad_performance_x_ad_conversions.date_1_date
    row: 18
    col: 5
    width: 9
    height: 4
  - title: Retail Performance by Geography
    name: Retail Performance by Geography
    model: marketing_analytics_1
    explore: transactions
    type: looker_google_map
    fields: [transactions.location_new, transactions.count]
    sorts: [transactions.location_new]
    limit: 500
    filter_expression: ${transactions.channel} = "Retail"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
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
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_max: 15
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 22
    col: 5
    width: 19
    height: 8
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
      options:
      - Account 816485893
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
      options:
      - DISPLAY Campaign (message)
      - SEARCH Campaign (poor)
      - DISPLAY Campaign (votes)
      - SEARCH Campaign (proceed)
      - VIDEO Campaign (plays)
      - VIDEO Campaign (sie)
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    listens_to_filters: []
    field: ad_performance_x_ad_conversions.campaign_name
  - name: Date
    title: Date
    type: field_filter
    default_value: 2020/11/01 to 2021/02/01
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
