- dashboard: propensity_to_purchase_predictions
  title: Propensity to Purchase Predictions
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: bNarRlNi2EN5IpE4OahY8v
  elements:
  - title: Total people predicted to purchase
    name: Total people predicted to purchase
    model: marketing_analytics_1
    explore: purchase_propensity_prediction
    type: looker_line
    fields: [predicted_propensity_to_purchase, purchase_propensity_prediction.date_1_date]
    fill_fields: [purchase_propensity_prediction.date_1_date]
    sorts: [predicted_propensity_to_purchase desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Predicted propensity
          to purchase, value_format: !!null '', value_format_name: !!null '', based_on: purchase_propensity_prediction.will_purchase_next_time,
        _kind_hint: measure, measure: predicted_propensity_to_purchase, type: sum,
        _type_hint: number, id: yWafWyOhFN}]
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
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: predicted_propensity_to_purchase,
            id: predicted_propensity_to_purchase, name: Predicted propensity to purchase}],
        showLabels: false, showValues: true, maxValue: 1000, valueFormat: '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Date
    hide_legend: true
    series_types: {}
    series_colors:
      predicted_propensity_to_purchase: "#669DF6"
    defaults_version: 1
    listen:
      Date: purchase_propensity_prediction.date_1_date
    row: 0
    col: 5
    width: 19
    height: 6
  - title: Untitled
    name: Untitled
    model: marketing_analytics_1
    explore: purchase_propensity_prediction
    type: looker_scatter
    fields: [max_user_ltv_revenue, purchase_likelihood_median, purchase_propensity_prediction.user_pseudo_id]
    sorts: [purchase_likelihood_median desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: max_user_ltv_revenue,
        value_format: !!null '', value_format_name: !!null '', based_on: purchase_propensity_prediction.user_ltv_revenue,
        _kind_hint: measure, measure: max_user_ltv_revenue, type: max, _type_hint: number,
        id: RE3vcx8C3G}, {category: measure, expression: !!null '', label: purchase_likelihood_median,
        value_format: !!null '', value_format_name: decimal_2, based_on: purchase_propensity_prediction.purchase_likelihood,
        _kind_hint: measure, measure: purchase_likelihood_median, type: median, _type_hint: number,
        id: lI4PcOzmir}, {category: table_calculation, expression: "if (${purchase_likelihood_median}=\
          \ 0.35 OR\n  ${purchase_likelihood_median}= 0.65,\n  0.5,0)\n  \n\n", label: Avg
          Mid Purchase, value_format: !!null '', value_format_name: '', _kind_hint: measure,
        table_calculation: avg_mid_purchase, _type_hint: number, id: SivfCx7Efg}]
    x_axis_gridlines: true
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: User LTV revenue, orientation: left, series: [{axisId: max_user_ltv_revenue,
            id: max_user_ltv_revenue, name: max_user_ltv_revenue}], showLabels: true,
        showValues: true, maxValue: 800, minValue: !!null '', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 1, type: linear}]
    size_by_field: ''
    hide_legend: true
    series_types: {}
    series_colors:
      max_user_ltv_revenue: "#81C995"
    reference_lines: []
    defaults_version: 1
    hidden_fields: [purchase_propensity_prediction.user_pseudo_id]
    hidden_points_if_no:
    title_hidden: true
    listen:
      Date: purchase_propensity_prediction.date_1_date
    row: 17
    col: 5
    width: 19
    height: 6
  - title: Purchase Predictions by Band and Category
    name: Purchase Predictions by Band and Category
    model: marketing_analytics_1
    explore: purchase_propensity_prediction
    type: looker_column
    fields: [purchase_propensity_prediction.item_category2, purchase_propensity_prediction.cohort,
      avg_purchase_likelihood]
    pivots: [purchase_propensity_prediction.item_category2]
    sorts: [purchase_propensity_prediction.item_category2, avg_purchase_likelihood
        desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_purchase_likelihood,
        value_format: !!null '', value_format_name: !!null '', based_on: purchase_propensity_prediction.purchase_likelihood,
        _kind_hint: measure, measure: avg_purchase_likelihood, type: average, _type_hint: number,
        id: LViexLMZPZ}]
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
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Purchase Likelihood, orientation: left, series: [{axisId: Clothing
              - avg_purchase_likelihood, id: Clothing - avg_purchase_likelihood, name: Clothing},
          {axisId: Clothing Accessories - avg_purchase_likelihood, id: Clothing Accessories
              - avg_purchase_likelihood, name: Clothing Accessories}, {axisId: 'Handbags,
              Wallets & Cases - avg_purchase_likelihood', id: 'Handbags, Wallets &
              Cases - avg_purchase_likelihood', name: 'Handbags, Wallets & Cases'},
          {axisId: Jewelry - avg_purchase_likelihood, id: Jewelry - avg_purchase_likelihood,
            name: Jewelry}, {axisId: Shoes - avg_purchase_likelihood, id: Shoes -
              avg_purchase_likelihood, name: Shoes}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Shoes - avg_purchase_likelihood: "#FAD2CF"
      Handbags, Wallets & Cases - avg_purchase_likelihood: "#81C995"
      Clothing Accessories - avg_purchase_likelihood: "#C58AF9"
      Jewelry - avg_purchase_likelihood: "#FDD663"
      Clothing - avg_purchase_likelihood: "#FCAD70"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Date: purchase_propensity_prediction.date_1_date
    row: 6
    col: 5
    width: 19
    height: 6
  - title: Purchase Likelihood by Band
    name: Purchase Likelihood by Band
    model: marketing_analytics_1
    explore: purchase_propensity_prediction
    type: looker_column
    fields: [purchase_propensity_prediction.cohort, avg_purchase_likelihood]
    sorts: [avg_purchase_likelihood desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: avg_purchase_likelihood,
        value_format: !!null '', value_format_name: !!null '', based_on: purchase_propensity_prediction.purchase_likelihood,
        _kind_hint: measure, measure: avg_purchase_likelihood, type: average, _type_hint: number,
        id: K4y6iHBKj7}]
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
    series_types: {}
    series_colors:
      avg_purchase_likelihood: "#8AB4F8"
    defaults_version: 1
    listen:
      Date: purchase_propensity_prediction.date_1_date
    row: 12
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
      \ 10px;font-weight: bold; background-color: #eaf1fe; border: solid 1px #4285F4;'\
      \ href=\"#\">Propensity to Purchase Predictions</a>\n<a style='display: block;\
      \ border-radius: 5px; padding: 5px 10px; margin-bottom: 10px;color: #3C4043;'\
      \ href=\"https://protodemo.cloud.looker.com/dashboards/142\"> Customer Lifetime\
      \ Value</a>\n<a style='display: block; border-radius: 5px; padding: 5px 10px;\
      \ margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/143\"\
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
    default_value: 2021/01/01 to 2021/02/02
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: marketing_analytics_1
    explore: purchase_propensity_prediction
    listens_to_filters: []
    field: purchase_propensity_prediction.date_1_date
