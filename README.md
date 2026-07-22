markdown

# BsplineQuantRegGui

[![CRAN status](https://www.r-pkg.org/badges/version/BsplineQuantRegGui)](https://cran.r-project.org/package=BsplineQuantRegGui)
[![CRAN downloads](https://cranlogs.r-pkg.org/badges/BsplineQuantRegGui)](https://cran.r-project.org/package=BsplineQuantRegGui)
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R](https://img.shields.io/badge/R-%3E%3D%204.0-blue.svg)](https://cran.r-project.org/)
[![License: GPL-3](https://img.shields.io/badge/License-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Overview

**BsplineQuantRegGui** is an interactive Shiny interface for the [`BsplineQuantReg`](https://cran.r-project.org/package=BsplineQuantReg) package, providing a user-friendly way to perform quantile regression using B-splines with shape constraints.

The package is available on CRAN. The underlying [`BsplineQuantReg`](https://cran.r-project.org/package=BsplineQuantReg) package provides the core regression methods for B-spline quantile regression with Karlin-Studden shape constraints.

This GUI application makes it easy to:

- Load and visualize data
- Configure B-spline parameters (degree 1 to 4)
- Apply shape constraints (monotonicity, convexity, third derivative)
- Define constraints per region interactively
- Run quantile regression with various solvers
- Export reproducible R code

## Features

- **Interactive Plotting**: Zoom, pan, and add knots by clicking on the plot
- **Constraint Management**: Add per-region constraints (monotonicity, convexity, 3rd derivative)
- **Multiple Data Sources**: Test data, temperature dataset, custom function, CSV files, and Excel files
- **Demo Presets**: Run package demos directly from the interface
- **R Code Generation**: Export reproducible R code for your analysis
- **Customizable Visualization**: Multiple curve plotting with color management
- **Real-time Feedback**: Progress bars and notifications during computation

## Installation

### From CRAN

```r
install.packages("BsplineQuantRegGui")

Development version from GitHub
```r

### install.packages("remotes")
remotes::install_github("alexandreabbes/BsplineQuantRegGui")

Quick Start
```r

library(BsplineQuantRegGui)

### Launch the application
runGui()

###The GUI will open in your default web browser.
##Dependencies

###This package depends on:
Package	Purpose
BsplineQuantReg (>= 0.2.0)	Core regression functions
shiny	Interactive web framework
plotly	Interactive graphics
DT	Interactive tables
shinythemes	UI themes
shinyjs	Enhanced JavaScript capabilities
colourpicker	Color selection widget

## Usage Guide
1. Data Selection

    Click Test to generate sample data

    Click Temp to load the global temperature dataset (1880-1992)

    Click CSV to import your own data file

    Use the Custom function field to define your own data generator

2. Spline Configuration

    Select Degree (1 = linear, 2 = quadratic, 3 = cubic, 4 = quartic)

    Adjust Auto knots count

    Click Add knot to enter manual knot placement mode, then click on the plot

    Click Clear knots to reset to automatic knots

3. Constraints

    Choose Uniform constraints to apply the same constraint everywhere

    Choose Per region to define different constraints in specific regions

        Click Select to enter region selection mode

        Drag a rectangle on the plot to define the region

        Adjust monotonicity, convexity, and 3rd derivative constraints

        Click Add region to apply the constraint

4. Run Analysis

    Click Run to execute the regression with your chosen solver

    View results in the Information and Coefficients panels

5. Explore Results

    Information: Degree, tau, number of knots, and coefficients

    Coefficients: Min, max, and mean coefficient values

    Data: Summary and table of the data

    R Code: Generated code to reproduce the analysis

# Documentation

##Demos

###The GUI provides direct access to the package demos:

###    Comprehensive: Full constraint test suite
###    Logistic: Logistic curve regression
###    Temperature: Temperature anomaly analysis
###    Convexity: Convexity constraints demo
###    Degrees: Comparison of degrees 1-4
###    3rd derivative: Third derivative constraints test
### Citation
```r
citation("BsplineQuantRegGui")

#If you use this package in your research, please cite:
```bibtex

@Article{Abbes2026,
  author  = {Alexandre Abbes},
  title   = {Quantile Regression with Cubic Polynomial Splines under Shape Constraints with Applications},
  year    = {2026},
  doi     = {10.5281/zenodo.17427913}
}

### License

GPL-3 © Alexandre Abbes
## References

    Abbes, A. (2026). Quantile Regression with Cubic Polynomial Splines under Shape Constraints with Applications. Zenodo. doi:10.5281/zenodo.17427913

## Contributing

Contributions are welcome! Please submit issues and pull requests on GitHub: https://github.com/alexandreabbes/BsplineQuantRegGui


## BsplineQuantRegGui

[![CRAN status](https://www.r-pkg.org/badges/version/BsplineQuantRegGui)](https://cran.r-project.org/package=BsplineQuantRegGui)
[![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![R](https://img.shields.io/badge/R-%3E%3D%204.0-blue.svg)](https://cran.r-project.org/)
[![License: GPL-3](https://img.shields.io/badge/License-GPL--3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Overview

**BsplineQuantRegGui** is an interactive Shiny interface for the [`BsplineQuantReg`](https://cran.r-project.org/package=BsplineQuantReg) package, providing a user-friendly way to perform quantile regression using B-splines with shape constraints.

This GUI application makes it easy to:

- Load and visualize data
- Configure B-spline parameters (degree 1 to 4)
- Apply shape constraints (monotonicity, convexity, third derivative)
- Define constraints per region interactively
- Run quantile regression with various solvers
- Export reproducible R code



## Installation

### From CRAN
`r
install.packages("BsplineQuantRegGui")

### Development version from GitHub
`r
install.packages("remotes")
remotes::install_github("alexandreabbes/BsplineQuantRegGui")

Quick Start
`r

library(BsplineQuantRegGui)
runGui()

### The GUI will open in your default web browser.
###Dependencies: This package depends on:

Package	Purpose

BsplineQuantReg (>= 0.2.0)	Core regression functions

shiny	Interactive web framework

plotly	Interactive graphics

DT	Interactive tables

shinythemes	UI themes

shinyjs	Enhanced JavaScript capabilities

colourpicker	Color selection widget

###Usage Guide
1. Data Selection

    Click Test to generate sample data

    Click Temp to load the global temperature dataset (1880-1992)

    Click CSV to import your own data file

    Use the Custom function field to define your own data generator

2. Spline Configuration

    Select Degree (1 = linear, 2 = quadratic, 3 = cubic, 4 = quartic)

    Adjust Auto knots count

    Click Add knot to enter manual knot placement mode, then click on the plot

    Click Clear knots to reset to automatic knots

3. Constraints

    Choose Uniform constraints to apply the same constraint everywhere

    Choose Per region to define different constraints in specific regions

        Click Select to enter region selection mode

        Drag a rectangle on the plot to define the region

        Adjust monotonicity, convexity, and 3rd derivative constraints

        Click Add region to apply the constraint

4. Run Analysis

    Click Run to execute the regression with your chosen solver

    View results in the Information and Coefficients panels

5. Explore Results

    Information: Degree, tau, number of knots, and coefficients

    Coefficients: Min, max, and mean coefficient values

    Data: Summary and table of the data

    R Code: Generated code to reproduce the analysis

## Documentation

After installation, explore the vignettes:
`r


## Demos

### The GUI provides direct access to the package demos:

    Comprehensive: Full constraint test suite

    Logistic: Logistic curve regression

   Temperature: Temperature anomaly analysis

    Convexity: Convexity constraints demo

    Degrees: Comparison of degrees 1-4

    3rd derivative: Third derivative constraints test

##Getting Help
    For the underlying regression methods: BsplineQuantReg package

    For bugs and feature requests: GitHub Issues

##Citation
`r
citation("BsplineQuantRegGui")

If you use this package in your research, please cite:

`bibtex

@Article{Abbes2025,
  author  = {Alexandre Abbes},
  title   = {Quantile Regression with Cubic Polynomial Splines under Shape Constraints with Applications},
  year    = {2025},
  doi     = {10.5281/zenodo.17427913}
}

@Manual{Abbes2026R,
  author  = {Alexandre Abbes},
  title   = {BsplineQuantReg: Quantile Regression with Bspline of degrees 1 to 4, under multiple shape constraints of order 1 to 3},
  year    = {2026},
  note    = {R package version 0.2.0},
  url     = {https://cran.r-project.org/package=BsplineQuantReg}
}

## License
GPL-3 © Alexandre Abbes

## References

    Abbes, A. (2025). Quantile Regression with Cubic Polynomial Splines under Shape Constraints with Applications. Zenodo. doi:10.5281/zenodo.17427913
    Abbes, A. (2026). (Python). BsplineQuantRegpy. Python Implementation of B-Spline Quantile Regression, Python package version 1.0.4, https://pypi.org/project/BsplineQuantRegpy/

Contributing

Contributions are welcome! Please submit issues and pull requests on GitHub.
