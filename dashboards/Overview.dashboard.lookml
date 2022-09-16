- dashboard: overview
  title: Overview
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: bZ5kpMq63WNqVXst6WqZVd
  elements:
  - title: Predicted User LTV Revenue
    name: Predicted User LTV Revenue
    model: marketing_analytics_1
    explore: customer_ltv_prediction
    type: looker_column
    fields: [customer_ltv_prediction.cohort, customer_ltv_revenue]
    sorts: [customer_ltv_revenue desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Customer LTV
          Revenue, value_format: !!null '', value_format_name: !!null '', based_on: customer_ltv_prediction.predicted_future_user_ltv_revenue,
        _kind_hint: measure, measure: customer_ltv_revenue, type: sum, _type_hint: number,
        id: w2TlZRUbNJ}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: customer_ltv_revenue,
            id: customer_ltv_revenue, name: Customer LTV Revenue}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: custom, tickDensityCustom: 30,
        type: linear}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 25
    col: 5
    width: 8
    height: 4
  - title: Cost per conv
    name: Cost per conv
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
    note_state: expanded
    note_display: below
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Campaign ID: ad_performance_x_ad_conversions.campaign_id
      Date: ad_performance_x_ad_conversions.date
    row: 1
    col: 9
    width: 5
    height: 4
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
            id: ad_performance_x_ad_conversions.sum_ecommconversions, name: Conversions}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 24, type: linear}, {label: Cost per conv., orientation: right,
        series: [{axisId: ad_performance_x_ad_conversions.CPA, id: ad_performance_x_ad_conversions.CPA,
            name: Cost per Conv.}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    label_value_format: ''
    series_types:
      ad_performance_x_ad_conversions.CPA: line
    series_colors:
      ad_performance_x_ad_conversions.sum_ecommconversions: "#A8C7FA"
      ad_performance_x_ad_conversions.CPA: "#1EA446"
    series_labels:
      ad_performance_x_ad_conversions.sum_ecommconversions: Conversions
      ad_performance_x_ad_conversions.CPA: Cost per Conv.
    series_point_styles: {}
    x_axis_datetime_label: "%d  %b '%y"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    title_hidden: true
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Campaign ID: ad_performance_x_ad_conversions.campaign_id
      Date: ad_performance_x_ad_conversions.date
    row: 1
    col: 14
    width: 10
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"font-size: 14px; padding: 5px 10px 0 10px;\">\n\n\t<a\
      \ style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;font-weight: bold; background-color: #eaf1fe; border: solid 1px #4285F4;'\
      \ href=\"#\">Overview</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">PERFORMANCE</a>\n\
      \t<a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/135\"\
      >Campaign Performance</a>\n\n\n\t<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/137\"\
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
      >Prurchase Prediction</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/149\"\
      >Product Data</a>\n</div>"
    row: 0
    col: 0
    width: 5
    height: 18
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<hr>"
    row: 13
    col: 5
    width: 19
    height: 1
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: Campaign Performance
    body_text: "<hr>"
    row: 0
    col: 5
    width: 19
    height: 1
  - title: Conversions
    name: Conversions
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
    note_state: expanded
    note_display: above
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Campaign ID: ad_performance_x_ad_conversions.campaign_id
      Date: ad_performance_x_ad_conversions.date
    row: 1
    col: 5
    width: 4
    height: 4
  - title: Cost
    name: Cost
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
      Campaign ID: ad_performance_x_ad_conversions.campaign_id
      Date: ad_performance_x_ad_conversions.date
    row: 5
    col: 5
    width: 4
    height: 4
  - title: Cost (Copy)
    name: Cost (Copy)
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: single_value
    fields: [sum_clicks, ad_performance_x_ad_conversions.current_click_target, filtered_ad_performance_x_ad_conversions_current_click_target]
    limit: 500
    dynamic_fields: [{category: measure, label: Filtered Ad Performance X Ad Conversions
          - Current Cost Target, value_format: '$#, " K "', value_format_name: __custom,
        based_on: ad_performance_x_ad_conversions.current_cost_target, _kind_hint: measure,
        measure: filtered_ad_performance_x_ad_conversions_current_cost_target, type: count_distinct,
        _type_hint: number, id: PDag7arO4h}, {category: measure, expression: !!null '',
        label: Sum_Clicks, value_format: !!null '', value_format_name: !!null '',
        based_on: ad_performance_x_ad_conversions.clicks, _kind_hint: measure, measure: sum_clicks,
        type: sum, _type_hint: number, id: CsdyiSkrH2}, {category: measure, label: Filtered
          Ad Performance X Ad Conversions - Current Click Target, value_format: '0.0,
          "K"', value_format_name: __custom, based_on: ad_performance_x_ad_conversions.current_click_target,
        _kind_hint: measure, measure: filtered_ad_performance_x_ad_conversions_current_click_target,
        type: count_distinct, _type_hint: number, id: o0J2UPIQRj}]
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
    single_value_title: Clicks
    value_format: 0.0, "K"
    comparison_label: Target
    conditional_formatting: [{type: greater than, value: 0, background_color: "#E8EAED",
        font_color: "#5F6368", color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [ad_performance_x_ad_conversions.current_click_target]
    listen:
      Campaign Name: ad_performance_x_ad_conversions.campaign_name
      Campaign ID: ad_performance_x_ad_conversions.campaign_id
      Date: ad_performance_x_ad_conversions.date
    row: 5
    col: 9
    width: 5
    height: 4
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: Store Performance
    body_text: ''
    row: 14
    col: 5
    width: 9
    height: 1
  - title: Untitled
    name: Untitled
    model: marketing_analytics_1
    explore: transactions
    type: single_value
    fields: [sum_sales, transactions.sales_target, filtered_transactions_sales_target]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_sales,
        value_format: !!null '', value_format_name: !!null '', based_on: transactions.price,
        _kind_hint: measure, measure: sum_sales, type: sum, _type_hint: number, id: E3FnJHmjuq},
      {category: measure, label: Filtered Transactions - Sales Target, value_format: '$0.00,
          "K"', value_format_name: __custom, based_on: transactions.sales_target,
        _kind_hint: measure, measure: filtered_transactions_sales_target, type: count_distinct,
        _type_hint: number, id: YXUKwxwiyh}]
    filter_expression: ${transactions.channel} = "Retail"
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
    single_value_title: Sales
    value_format: $0.00, "K"
    comparison_label: Target
    series_types: {}
    defaults_version: 1
    hidden_fields: [transactions.sales_target]
    listen: {}
    row: 15
    col: 5
    width: 4
    height: 4
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: Product Performance
    body_text: ''
    row: 14
    col: 14
    width: 10
    height: 1
  - title: Product Sales
    name: Product Sales
    model: marketing_analytics_1
    explore: transactions
    type: single_value
    fields: [sum_sales, filtered_transactions_product_sales_target]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum_sales,
        value_format: !!null '', value_format_name: !!null '', based_on: transactions.price,
        _kind_hint: measure, measure: sum_sales, type: sum, _type_hint: number, id: E3FnJHmjuq},
      {category: measure, label: Filtered Transactions - Product Sales Target, value_format: '$0.0,
          "K"', value_format_name: __custom, based_on: transactions.product_sales_target,
        _kind_hint: measure, measure: filtered_transactions_product_sales_target,
        type: count_distinct, _type_hint: number, id: 7kAm6PpgvR}]
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
    single_value_title: Product Sales
    value_format: $0.00, "K"
    comparison_label: Target
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    listen: {}
    row: 15
    col: 13
    width: 6
    height: 4
  - title: Out of stock
    name: Out of stock
    model: marketing_analytics_1
    explore: inventory
    type: single_value
    fields: [inventory.out_of_stock_percentage]
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
    value_format: 0.00\%
    defaults_version: 1
    listen: {}
    row: 15
    col: 9
    width: 4
    height: 4
  - title: Out of stock
    name: Out of stock (2)
    model: marketing_analytics_1
    explore: inventory
    type: single_value
    fields: [inventory.out_of_stock_percentage]
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
    value_format: 0.00\%
    defaults_version: 1
    listen: {}
    row: 15
    col: 19
    width: 5
    height: 4
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
    row: 21
    col: 5
    width: 4
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
    row: 21
    col: 9
    width: 4
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
    listen: {}
    row: 23
    col: 5
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
    row: 23
    col: 9
    width: 4
    height: 2
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: Web Traffic
    body_text: ''
    row: 20
    col: 5
    width: 9
    height: 1
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<hr>"
    row: 19
    col: 5
    width: 19
    height: 1
  - title: Propensity to Purchase
    name: Propensity to Purchase
    model: marketing_analytics_1
    explore: purchase_propensity_prediction
    type: single_value
    fields: [predicted_propensity_to_purchase]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Predicted propensity
          to purchase, value_format: '0.0,  "K"', value_format_name: __custom, based_on: purchase_propensity_prediction.will_purchase_next_time,
        _kind_hint: measure, measure: predicted_propensity_to_purchase, type: sum,
        _type_hint: number, id: prFSHCxM9y}]
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
    row: 21
    col: 13
    width: 11
    height: 4
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: Propensity to Purchase
    body_text: ''
    row: 20
    col: 14
    width: 9
    height: 1
  - title: Untitled
    name: Untitled (2)
    model: marketing_analytics_1
    explore: purchase_propensity_prediction
    type: looker_area
    fields: [predicted_propensity_to_purchase, purchase_propensity_prediction.event_date]
    fill_fields: [purchase_propensity_prediction.event_date]
    sorts: [purchase_propensity_prediction.event_date desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Predicted propensity
          to purchase, value_format: !!null '', value_format_name: !!null '', based_on: purchase_propensity_prediction.will_purchase_next_time,
        _kind_hint: measure, measure: predicted_propensity_to_purchase, type: sum,
        _type_hint: number, id: O0JrZFt6Oh}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: predicted_propensity_to_purchase,
            id: predicted_propensity_to_purchase, name: Predicted propensity to purchase}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    title_hidden: true
    listen: {}
    row: 25
    col: 13
    width: 11
    height: 4
  - title: Sentiment Analysis
    name: Sentiment Analysis
    model: marketing_analytics_1
    explore: product_reviews_sentiment
    type: looker_pie
    fields: [product_reviews_sentiment.sentiment, wordcountreviews.total_count]
    sorts: [wordcountreviews.total_count desc 0]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 80
    start_angle:
    series_colors:
      Positive: "#81c995"
      Negative: "#ec928e"
      Neutral: "#e0e0e0"
    series_types: {}
    defaults_version: 1
    title_hidden: true
    listen: {}
    row: 31
    col: 5
    width: 8
    height: 6
  - name: " (9)"
    type: text
    title_text: ''
    subtitle_text: Demand Forecasting
    body_text: ''
    row: 30
    col: 13
    width: 11
    height: 1
  - name: " (10)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<hr>"
    row: 29
    col: 5
    width: 19
    height: 1
  - title: Untitled
    name: Untitled (3)
    model: marketing_analytics_1
    explore: demand_forecasting_prediction
    type: looker_area
    fields: [sum_of_predicted_total_amount_sold, demand_forecasting_prediction.event_date]
    fill_fields: [demand_forecasting_prediction.event_date]
    sorts: [demand_forecasting_prediction.event_date desc]
    limit: 500
    dynamic_fields: [{measure: sum_of_predicted_total_amount_sold, based_on: demand_forecasting_prediction.predicted_total_amount_sold,
        expression: '', label: Sum of Predicted Total Amount Sold, type: sum, _kind_hint: measure,
        _type_hint: number, id: bk17Cx8Gvx}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: sum_of_predicted_total_amount_sold,
            id: sum_of_predicted_total_amount_sold, name: Sum of Predicted Total Amount
              Sold}], showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    title_hidden: true
    listen: {}
    row: 34
    col: 13
    width: 11
    height: 3
  - name: " (11)"
    type: text
    title_text: ''
    subtitle_text: Sentiment Analysis - Product Reviews
    body_text: ''
    row: 30
    col: 4
    width: 9
    height: 1
  - title: Predicted Total Amount Sold
    name: Predicted Total Amount Sold
    model: marketing_analytics_1
    explore: demand_forecasting_prediction
    type: single_value
    fields: [sum_of_predicted_total_amount_sold]
    limit: 500
    dynamic_fields: [{measure: sum_of_predicted_total_amount_sold, based_on: demand_forecasting_prediction.predicted_total_amount_sold,
        expression: '', label: Sum of Predicted Total Amount Sold, type: sum, _kind_hint: measure,
        _type_hint: number, id: 7unUR0cYkZ}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: $ 0.00,, "M"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 31
    col: 13
    width: 11
    height: 3
  - title: Campaign Comparison
    name: Campaign Comparison
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    type: looker_grid
    fields: [ad_performance_x_ad_conversions.campaign_name, ad_performance_x_ad_conversions.sum_ecommconversions,
      ad_performance_x_ad_conversions.CPA, average_ctr]
    filters:
      ad_performance_x_ad_conversions.account_descriptive_name: ''
      ad_performance_x_ad_conversions.date_1_date: 2020/11/01 to 2021/02/01
    sorts: [ad_performance_x_ad_conversions.sum_ecommconversions desc 0]
    limit: 500
    column_limit: 50
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
      Campaign ID: ad_performance_x_ad_conversions.campaign_id
      Date: ad_performance_x_ad_conversions.date
    row: 9
    col: 5
    width: 9
    height: 4
  filters:
  - name: Campaign ID
    title: Campaign ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options:
      - '1'
      - '2'
      - '3'
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    listens_to_filters: []
    field: ad_performance_x_ad_conversions.campaign_id
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: DISPLAY Campaign (message),DISPLAY Campaign (votes),SEARCH Campaign
      (poor),SEARCH Campaign (proceed),VIDEO Campaign (plays),VIDEO Campaign (sie)
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    listens_to_filters: []
    field: ad_performance_x_ad_conversions.campaign_name
  - name: Date
    title: Date
    type: field_filter
    default_value: 2020/11/01 to 2021/02/28
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: marketing_analytics_1
    explore: ad_performance_x_ad_conversions
    listens_to_filters: []
    field: ad_performance_x_ad_conversions.date
