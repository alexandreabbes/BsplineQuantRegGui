# BsplineQuantRegGui

[![CRAN status](https://www.r-pkg.org/badges/version/BsplineQuantRegGui)](https://cran.r-project.org/package=BsplineQuantRegGui)
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)

## Overview

**BsplineQuantRegGui** is an interactive Shiny interface for the [`BsplineQuantReg`](https://cran.r-project.org/package=BsplineQuantReg) package, providing a user-friendly way to perform quantile regression using B-splines with shape constraints.

## Features

- **Interactive Plotting**: Zoom, pan, and add knots by clicking on the plot
- **Constraint Management**: Add per-region constraints (monotonicity, convexity, 3rd derivative)
- **Multiple Data Sources**: Test data, temperature dataset, custom function, CSV files, and Excel files
- **Demo Presets**: Run package demos directly from the interface
- **R Code Generation**: Export reproducible R code for your analysis
- **Customizable Visualization**: Multiple curve plotting with color management

## Installation

### From CRAN (when available)

```r
install.packages("BsplineQuantRegGui")

Development version from GitHub
```r

# install.packages("remotes")
remotes::install_github("alexandreabbes/BsplineQuantRegGui")

#Quick Start

```r
library(BsplineQuantRegGui)
# Launch the application
runGui()

#Dependencies
This package depends on:

    BsplineQuantReg (≥ 0.2.0): Core regression functions

    shiny: Interactive web framework

    plotly: Interactive graphics

    DT: Interactive tables

    shinythemes: UI themes

    shinyjs: Enhanced JavaScript capabilities

    colourpicker: Color selection widget

# Usage Guide

    Data Selection: Load data using the buttons or import your own CSV/Excel file

    Spline Configuration: Set degree, number of knots, and add/remove knots interactively

    Constraints: Choose uniform or per-region constraints

    Run Analysis: Execute the regression with your chosen solver

    Explore Results: View coefficients, R code, and constraint information in the tabs

Documentation

After installation, explore the vignettes:
r

vignette("BsplineQuantRegGui", package = "BsplineQuantRegGui")

Getting Help

    For the underlying regression methods: BsplineQuantReg package

    For bugs and feature requests: GitHub Issues

#Citation
r

citation("BsplineQuantRegGui")

#License

GPL-3 © Alexandre Abbes

#Based on the method described in:
   URL: https://github.com/alexandreabbes/BsplineQuantReg,
    https://doi.org/10.5281/zenodo.17427913
