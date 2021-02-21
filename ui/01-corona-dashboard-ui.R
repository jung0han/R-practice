tabItem(
  "corona",
  fluidRow(
    column(
      width = 9,
      fluidRow(
        valueBoxOutput("c_case_box"),
      ),
      fluidRow(
        box(
          width = 12,
          highchartOutput(
            "c_ay_plot",
            height = 500
          )
        ),
        verbatimTextOutput("c_debuggin")
      )
    ),
    box(
      width = 3,
      title = "Data Filters",
      div(
        class = "text-center",
        checkboxGroupInput(
          "c_dash_status",
          "Status",
          choices = c("confirmed", "death", "recovered"),
          selected = c("confirmed", "death", "recovered"),
          inline = TRUE
        ),
        br()
      ),
      shinyWidgets::pickerInput(
        inputId = "c_dash_state", 
        label = "State", 
        choices = unique(coronavirus$country), # state_choices
        options = list(`actions-box` = TRUE), 
        multiple = TRUE,
        selected = unique(coronavirus$country) # state_choices
      ),
      br()
    )
  )
)