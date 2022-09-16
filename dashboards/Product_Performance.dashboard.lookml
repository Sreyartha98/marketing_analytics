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
    listen: {}
    row: 0
    col: 5
    width: 11
    height: 6
  - title: Sales
    name: Sales
    model: marketing_analytics_1
    explore: transactions
    type: looker_column
    fields: [transactions.total_price, transactions.date_1_week]
    fill_fields: [transactions.date_1_week]
    sorts: [transactions.date_1_week desc]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Sales, orientation: left, series: [{axisId: transactions.total_price,
            id: transactions.total_price, name: Total Price}], showLabels: true, showValues: true,
        maxValue: 100000, minValue: 0, valueFormat: '$#, " K "', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      transactions.total_price: "#A8C7FA"
    x_axis_datetime_label: "%d %b%y"
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
    listen:
      Date: transactions.date_1_date
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Sales Amount by Product Category
    name: Sales Amount by Product Category
    model: marketing_analytics_1
    explore: events_mod
    type: looker_column
    fields: [events_mod__items.item_category2, events_mod__items.item_category3, sum_items_revenue]
    pivots: [events_mod__items.item_category3]
    sorts: [events_mod__items.item_category3, sum_items_revenue desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Items revenue,
        value_format: !!null '', value_format_name: !!null '', based_on: events_mod__items.item_revenue,
        _kind_hint: measure, measure: sum_items_revenue, type: sum, _type_hint: number,
        id: o07eAFuFb4}]
    filter_expression: ${events_mod__items.item_category2} != "∅"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Dresses - sum_items_revenue,
            id: Dresses - sum_items_revenue, name: Dresses}, {axisId: Earrings - sum_items_revenue,
            id: Earrings - sum_items_revenue, name: Earrings}, {axisId: Handbags -
              sum_items_revenue, id: Handbags - sum_items_revenue, name: Handbags},
          {axisId: Necklaces - sum_items_revenue, id: Necklaces - sum_items_revenue,
            name: Necklaces}, {axisId: Pants - sum_items_revenue, id: Pants - sum_items_revenue,
            name: Pants}, {axisId: Shirts & Tops - sum_items_revenue, id: Shirts &
              Tops - sum_items_revenue, name: Shirts & Tops}, {axisId: Swimwear -
              sum_items_revenue, id: Swimwear - sum_items_revenue, name: Swimwear},
          {axisId: Underwear & Socks - sum_items_revenue, id: Underwear & Socks -
              sum_items_revenue, name: Underwear & Socks}, {axisId: Watches - sum_items_revenue,
            id: Watches - sum_items_revenue, name: Watches}, {axisId: events_mod__items.item_category3___null
              - sum_items_revenue, id: events_mod__items.item_category3___null - sum_items_revenue,
            name: "∅"}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 30, type: linear}]
    series_types:
      events_mod__items.item_category3___null - sum_items_revenue: line
    series_colors:
      Shirts & Tops - sum_items_revenue: "#81C995"
      events_mod__items.item_category3___null - sum_items_revenue: "#C58AF9"
      Dresses - sum_items_revenue: "#FDD663"
      Underwear & Socks - sum_items_revenue: "#fcad70"
      Pants - sum_items_revenue: "#78D9EC"
      Necklaces - sum_items_revenue: "#d77fb3"
      Earrings - sum_items_revenue: "#bdc1c6"
      Handbags - sum_items_revenue: "#81d4fa"
    series_labels:
      events_mod__items.item_category3___null - sum_items_revenue: 'null'
    defaults_version: 1
    listen: {}
    row: 6
    col: 5
    width: 11
    height: 6
  - title: 'Sales Volume by Product Category '
    name: 'Sales Volume by Product Category '
    model: marketing_analytics_1
    explore: events_mod
    type: looker_column
    fields: [events_mod__items.item_category2, events_mod__items.item_category3, sum_of_quantity]
    pivots: [events_mod__items.item_category3]
    sorts: [events_mod__items.item_category3, sum_of_quantity desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Items revenue,
        value_format: !!null '', value_format_name: !!null '', based_on: events_mod__items.item_revenue,
        _kind_hint: measure, measure: sum_items_revenue, type: sum, _type_hint: number,
        id: o07eAFuFb4}, {measure: sum_of_quantity, based_on: events_mod__items.quantity,
        expression: '', label: Sum of Quantity, type: sum, _kind_hint: measure, _type_hint: number,
        id: WMfffnhhRd}]
    filter_expression: ${events_mod__items.item_category2} != "∅"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Dresses - sum_items_revenue,
            id: Dresses - sum_items_revenue, name: Dresses}, {axisId: Earrings - sum_items_revenue,
            id: Earrings - sum_items_revenue, name: Earrings}, {axisId: Handbags -
              sum_items_revenue, id: Handbags - sum_items_revenue, name: Handbags},
          {axisId: Necklaces - sum_items_revenue, id: Necklaces - sum_items_revenue,
            name: Necklaces}, {axisId: Pants - sum_items_revenue, id: Pants - sum_items_revenue,
            name: Pants}, {axisId: Shirts & Tops - sum_items_revenue, id: Shirts &
              Tops - sum_items_revenue, name: Shirts & Tops}, {axisId: Swimwear -
              sum_items_revenue, id: Swimwear - sum_items_revenue, name: Swimwear},
          {axisId: Underwear & Socks - sum_items_revenue, id: Underwear & Socks -
              sum_items_revenue, name: Underwear & Socks}, {axisId: Watches - sum_items_revenue,
            id: Watches - sum_items_revenue, name: Watches}, {axisId: events_mod__items.item_category3___null
              - sum_items_revenue, id: events_mod__items.item_category3___null - sum_items_revenue,
            name: "∅"}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 30, type: linear}]
    series_types:
      events_mod__items.item_category3___null - sum_items_revenue: line
    series_colors:
      Shirts & Tops - sum_items_revenue: "#81C995"
      events_mod__items.item_category3___null - sum_items_revenue: "#C58AF9"
      Dresses - sum_items_revenue: "#FDD663"
      Underwear & Socks - sum_items_revenue: "#fcad70"
      Pants - sum_items_revenue: "#78D9EC"
      Necklaces - sum_items_revenue: "#d77fb3"
      Earrings - sum_items_revenue: "#bdc1c6"
      Handbags - sum_items_revenue: "#81d4fa"
      Dresses - sum_of_quantity: "#fdd663"
      Earrings - sum_of_quantity: "#bdc1c6"
      Handbags - sum_of_quantity: "#81d4fa"
      Necklaces - sum_of_quantity: "#d77fb3"
      Pants - sum_of_quantity: "#78d9ec"
      Shirts & Tops - sum_of_quantity: "#81c995"
      Swimwear - sum_of_quantity: "#ce7058"
      Underwear & Socks - sum_of_quantity: "#fcad70"
      Watches - sum_of_quantity: "#ff8bcb"
      events_mod__items.item_category3___null - sum_of_quantity: "#c58af9"
    series_labels:
      events_mod__items.item_category3___null - sum_items_revenue: 'null'
      events_mod__items.item_category3___null - sum_of_quantity: 'null'
    defaults_version: 1
    listen: {}
    row: 12
    col: 5
    width: 19
    height: 5
  - title: Pricing
    name: Pricing
    model: marketing_analytics_1
    explore: products
    type: looker_grid
    fields: [products.item_name, products.item_brand, sum_price]
    sorts: [sum_price desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum Price,
        value_format: !!null '', value_format_name: !!null '', based_on: products.price,
        _kind_hint: measure, measure: sum_price, type: sum, _type_hint: number, id: 2IrQx94zEm}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
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
      sum_price: Price
    series_cell_visualizations:
      sum_price:
        is_active: false
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, custom: {
            id: 11109fe5-d781-b6e3-f3f2-a06acacd71dd, label: Custom, type: continuous,
            stops: [{color: "#FFF", offset: 0}, {color: "#CEEAD6", offset: 50}, {
                color: "#5BB974", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Product Sales by Region
    name: Product Sales by Region
    model: marketing_analytics_1
    explore: events_mod
    type: looker_google_map
    fields: [events_mod.state, sum_e_commerce_purchase_revenue]
    sorts: [sum_e_commerce_purchase_revenue desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Sum E-commerce
          Purchase Revenue, value_format: !!null '', value_format_name: !!null '',
        based_on: events_mod.ecommerce__purchase_revenue, _kind_hint: measure, measure: sum_e_commerce_purchase_revenue,
        type: sum, _type_hint: number, id: pFTA7moQYh}]
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
    reverse_map_value_colors: true
    map_scale_indicator: 'off'
    series_types: {}
    defaults_version: 0
    listen: {}
    row: 17
    col: 5
    width: 19
    height: 7
  - title: Brand Sales by Category
    name: Brand Sales by Category
    model: marketing_analytics_1
    explore: events_mod
    type: looker_column
    fields: [events_mod__items.item_brand, events_mod__items.item_category2, sum_of_item_revenue]
    pivots: [events_mod__items.item_category2]
    sorts: [events_mod__items.item_category2, sum_of_item_revenue desc 0]
    limit: 500
    dynamic_fields: [{measure: sum_of_item_revenue, based_on: events_mod__items.item_revenue,
        expression: '', label: Sum of Item Revenue, type: sum, _kind_hint: measure,
        _type_hint: number, id: NFMyj10uIY}]
    filter_expression: ${events_mod__items.item_category2} != "∅"
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Clothing - sum_of_item_revenue,
            id: Clothing - sum_of_item_revenue, name: Clothing}, {axisId: 'Handbags,
              Wallets & Cases - sum_of_item_revenue', id: 'Handbags, Wallets & Cases
              - sum_of_item_revenue', name: 'Handbags, Wallets & Cases'}, {axisId: Jewelry
              - sum_of_item_revenue, id: Jewelry - sum_of_item_revenue, name: Jewelry},
          {axisId: Shoes - sum_of_item_revenue, id: Shoes - sum_of_item_revenue, name: Shoes}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Clothing - sum_of_item_revenue: "#fcad70"
      Jewelry - sum_of_item_revenue: "#fdd663"
      Shoes - sum_of_item_revenue: "#fad2cf"
      Handbags, Wallets & Cases - sum_of_item_revenue: "#81c995"
    defaults_version: 1
    listen: {}
    row: 24
    col: 5
    width: 19
    height: 7
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
      > Web Traffic</a>\n    <a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;font-weight: bold; background-color: #eaf1fe;\
      \ border: solid 1px #4285F4;' href=\"#\">Product Performance</a>\n<hr>\n<a style='display:\
      \ block; border-radius: 5px; padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;'\
      \ href=\"#\"> PREDICTIONS</a>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/141\"\
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
    height: 17
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 2020/11/01 to 2021/01/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: day_range_picker
      display: inline
      options: []
    model: marketing_analytics_1
    explore: transactions
    listens_to_filters: []
    field: transactions.date_1_date
