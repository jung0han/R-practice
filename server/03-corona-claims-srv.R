### table tab
output$trans_corona_tbl <- DT::renderDT({
  out <- val_corona_tbl() %>%
    dplyr::mutate(country = as.factor(country)) %>%
    dplyr::select(country, total)
  
  datatable(
    out,
    rownames = FALSE,
    class = "cell-border stripe compact",
    colnames = show_names(names(out)),
    extensions = "Buttons",
    filter = 'top',
    options = list(
      dom = 'Bfrtip',
      scrollX = TRUE,
      buttons = list(
        'colvis', 
        list(
          extend = 'collection',
          buttons = c('csv', 'excel', 'pdf'),
          text = 'Download'
        )
      ),
      pageLength = 15
    )
  )
}, server = FALSE)
