- dashboard: sentiment_analysis
  title: Sentiment Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 84m9y9rsjMybwCpZiSWusB
  elements:
  - title: Overall Sentiment
    name: Overall Sentiment
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
    listen:
      Product: product_reviews_sentiment.product
      Sentiment: product_reviews_sentiment.sentiment
    row: 0
    col: 5
    width: 8
    height: 6
  - title: Product-wise Sentiment
    name: Product-wise Sentiment
    model: marketing_analytics_1
    explore: product_reviews_sentiment
    type: looker_bar
    fields: [product_reviews_sentiment.product, product_reviews_sentiment.sentiment,
      wordcountreviews.count_all]
    pivots: [product_reviews_sentiment.sentiment]
    sorts: [product_reviews_sentiment.sentiment, wordcountreviews.count_all desc 2]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Negative - wordcountreviews.count_all,
            id: Negative - wordcountreviews.count_all, name: Negative}, {axisId: Neutral
              - wordcountreviews.count_all, id: Neutral - wordcountreviews.count_all,
            name: Neutral}, {axisId: Positive - wordcountreviews.count_all, id: Positive
              - wordcountreviews.count_all, name: Positive}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Positive - wordcountreviews.count_all: "#6DD58C"
      Negative - wordcountreviews.count_all: "#EC928E"
      Neutral - wordcountreviews.count_all: "#e0e0e0"
    defaults_version: 1
    listen:
      Product: product_reviews_sentiment.product
      Sentiment: product_reviews_sentiment.sentiment
    row: 0
    col: 13
    width: 11
    height: 6
  - title: Word Cloud
    name: Word Cloud
    model: marketing_analytics_1
    explore: product_reviews_sentiment
    type: looker_wordcloud
    fields: [wordcountreviews.words, wordcountreviews.count_all, sum_of_count_2]
    sorts: [wordcountreviews.count_all desc 0]
    limit: 500
    dynamic_fields: [{measure: sum_of_count, based_on: wordcountreviews.count, expression: '',
        label: Sum of Count, type: sum, _kind_hint: measure, _type_hint: number, id: ghToaUl7XF},
      {measure: sum_of_count_2, based_on: wordcountreviews.count, expression: '',
        label: Sum of Count, type: sum, _kind_hint: measure, _type_hint: number, id: xt3Iy8EwRe}]
    filter_expression: "${wordcountreviews.words}!= \"shirt\" AND ${wordcountreviews.count}!=\
      \ 1  \n"
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: false
    rotation: true
    series_types: {}
    defaults_version: 1
    hidden_fields: [wordcountreviews.count_all]
    listen:
      Product: product_reviews_sentiment.product
      Sentiment: product_reviews_sentiment.sentiment
    row: 6
    col: 5
    width: 8
    height: 7
  - title: Avg Product Rating
    name: Avg Product Rating
    model: marketing_analytics_1
    explore: product_reviews_sentiment
    type: looker_bar
    fields: [product_reviews_sentiment.product, avg_star_rating]
    sorts: [avg_star_rating desc 0]
    limit: 500
    dynamic_fields: [{category: measure, expression: !!null '', label: Avg star rating,
        value_format: !!null '', value_format_name: decimal_2, based_on: product_reviews_sentiment.star_rating,
        _kind_hint: measure, measure: avg_star_rating, type: average, _type_hint: number,
        id: HZ7xuVokOu}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: avg_star_rating, id: avg_star_rating,
            name: Avg star rating}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      avg_star_rating: "#99d4f5"
    defaults_version: 1
    listen:
      Product: product_reviews_sentiment.product
      Sentiment: product_reviews_sentiment.sentiment
    row: 6
    col: 13
    width: 11
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
      > Web Traffic</a>\n   <a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/139\"\
      >Product Performance</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\"> PREDICTIONS</a>\n\
      <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/141\"\
      > Propensity to Purchase Predictions</a>\n<a style='display: block; border-radius:\
      \ 5px; padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/142\"\
      >Customer Lifetime Value</a>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/143\"\
      >Demand Forecasting</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;font-weight: bold; background-color: #eaf1fe;\
      \ border: solid 1px #4285F4;' href=\"#\">Sentiment Analysis</a>\n<hr>\n<a style='display:\
      \ block; border-radius: 5px; padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;'\
      \ href=\"#\">MISC.</a>\n<a style='display: block; border-radius: 5px; padding:\
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/151\"\
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
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: marketing_analytics_1
    explore: product_reviews_sentiment
    listens_to_filters: []
    field: product_reviews_sentiment.product
  - name: Sentiment
    title: Sentiment
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: marketing_analytics_1
    explore: product_reviews_sentiment
    listens_to_filters: []
    field: product_reviews_sentiment.sentiment
