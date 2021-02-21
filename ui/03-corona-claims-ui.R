tabItem(
  tabName = "corona-table",
  fluidRow(
    box(
      width = 12,
      DT::DTOutput("trans_corona_tbl")
    )
  )
)