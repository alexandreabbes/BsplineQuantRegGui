#' Launch the 'BsplineQuantReg' Shiny Interface
#' Opens an interactive Shiny application for quantile regression
#' using B-splines with shape constraints.
#' @return Launches a Shiny application in the default browser.
#' @export
#' @import BsplineQuantReg
#' @importFrom shiny shinyApp runApp fluidPage sidebarLayout mainPanel
#' @importFrom shinyjs useShinyjs
#' @importFrom plotly plotlyOutput renderPlotly plot_ly
#' @importFrom DT DTOutput renderDT datatable
#' @importFrom shinythemes shinytheme
#' @importFrom colourpicker colourInput
#' @param rstudio Boolean if TRUE launches the shiny browser of rstudio.
#' @param brow Boolean if TRUE launches the default browser in the system.
#' @examples
#' if (interactive()) {
#'   run_gui()
#' }
run_gui <- function(brow = TRUE, rstudio = FALSE) {
  app_dir <- system.file("shiny", package = "BsplineQuantRegGui")

  if (!brow && !rstudio) {
    # aucun
    shiny::runApp(app_dir,launch.brow = FALSE)
  }
    else if (brow) {
    # Seulement navigateur
    shiny::runApp(app_dir,launch.browser = TRUE)
  } else {
    # Seulement RStudio
    shiny::runApp(app_dir)
  }
}
