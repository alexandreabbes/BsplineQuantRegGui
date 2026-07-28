#' Launch the 'BsplineQuantReg' Shiny Interface
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
#' @importFrom shinythemes shinytheme
#' @importFrom colourpicker colourInput
#' @param brow Boolean if TRUE launches the default browser in the system.
#'             If FALSE, only starts the server, reachable at the given IP address and port.
#' @examples
#' if (interactive()) {
#'   runGui()
#' }
runGui <- function(brow=TRUE) {
  # Vérifier que 'BsplineQuantReg' est installé
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

  shiny::runApp(appDir, display.mode = "normal", launch.browser=brow)
}
