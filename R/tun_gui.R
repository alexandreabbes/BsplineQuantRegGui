#' Launch the BsplineQuantReg Shiny Interface
#'
#' Opens an interactive Shiny application for quantile regression
#' using B-splines with shape constraints.
#'
#' @return Launches a Shiny application in the default browser.
#' @export
#' @importFrom shiny shinyApp runApp fluidPage sidebarLayout mainPanel
#' @importFrom shinyjs useShinyjs
#' @importFrom plotly plotlyOutput renderPlotly plot_ly
#' @importFrom DT DTOutput renderDT datatable
#'
#' @examples
#' if (interactive()) {
#'   runGui()
#' }
runGui <- function() {
  # Vérifier que BsplineQuantReg est installé
  if (!requireNamespace("BsplineQuantReg", quietly = TRUE)) {
    stop(
      "Package 'BsplineQuantReg' is required. ",
      "Install it with: install.packages('BsplineQuantReg')"
    )
  }

  # Lancer l'application depuis le dossier inst/shiny
  appDir <- system.file("shiny", package = "BsplineQuantRegGui")
  if (appDir == "") {
    stop(
      "Could not find Shiny application directory. ",
      "Try reinstalling the package."
    )
  }

  shiny::runApp(appDir, display.mode = "normal")
}
