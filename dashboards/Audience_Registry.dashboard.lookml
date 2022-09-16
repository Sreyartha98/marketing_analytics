- dashboard: audience_registry
  title: Audience Registry
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fzxuGI49ykXaedMy1uaVvC
  elements:
  - title: Audience Registry
    name: Audience Registry
    model: marketing_analytics_1
    explore: audiences
    type: looker_grid
    fields: [audiences.audience, audiences.cohort_size, audiences.score_min, audiences.score_max]
    sorts: [audiences.cohort_size]
    limit: 500
    filter_expression: ${audiences.model} = "customer_ltv"
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
    series_types: {}
    defaults_version: 1
    row: 0
    col: 5
    width: 19
    height: 7
  - title: Purchase Probability
    name: Purchase Probability
    model: marketing_analytics_1
    explore: audiences
    type: looker_grid
    fields: [audiences.audience, audiences.cohort_size, audiences.score_min, audiences.score_max]
    sorts: [audiences.cohort_size]
    limit: 500
    filter_expression: ${audiences.model} = "purchase_propensity"
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
    series_types: {}
    defaults_version: 1
    row: 7
    col: 5
    width: 19
    height: 6
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
      \ 5px 10px; margin-bottom: 10px;color: #3C4043;' href=\"https://protodemo.cloud.looker.com/dashboards/138\"\
      > Sentiment Analysis</a>\n<hr>\n<a style='display: block; border-radius: 5px;\
      \ padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">MISC.</a>\n\
      <a style='display: block; border-radius: 5px; padding: 5px 10px; margin-bottom:\
      \ 10px;font-weight: bold; background-color: #eaf1fe; border: solid 1px #4285F4;'\
      \ href=\"#\">Audience Registry</a>\n<hr>\n<a style='display: block; border-radius:\
      \ 5px; padding: 5px 10px; margin-bottom: 10px;color: #9AA0A6;' href=\"#\">DETAILED\
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
