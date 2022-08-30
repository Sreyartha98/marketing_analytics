view: custom_navigation_buttons {

measure: dash_nav {
  view_label: "Session"
  group_label: "Dashboard Navigation"
  label: "Navigation Bar"
  type: string
  sql: "";;
  html:
    <div style="background-color: #F6F6F7; height:500px;width:100%"></div>
      <div style="background-color: #F6F6F7; border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 18px; color: #4285F4">
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/**/campaign_comparison.dashboards">campaign_comparison</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/**/product_performance.dashboards">product_performance</a>
          <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/**/store_performance.dashboards">store_performance</a>

        </nav>
      </div>
    <div style="background-color: #F6F6F7; height:500px;width:100%"></div>;;
}
}
