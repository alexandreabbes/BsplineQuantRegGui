# Dockerfile
FROM rocker/shiny:4.3.0

# System dependencies
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    libssl-dev \
    libxml2-dev \
    libcurl4-openssl-dev \
    git \
    xdg-utils \  
    && rm -rf /var/lib/apt/lists/*

# Rust and Cargo (pour CLARABEL)
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Install R packages de base
RUN R -e "install.packages(c(\
    'shiny', 'shinythemes', 'shinyjs', 'DT', 'plotly', \
    'colourpicker', 'pracma', 'png', 'grid', 'remotes', 'devtools' \
))"

# Installer CVXR depuis GitHub
RUN R -e "remotes::install_github('cvxgrp/CVXR', ref = 'v1.9.1')"

# Installer les solveurs (dont CLARABEL)
RUN R -e "install.packages(c('osqp', 'ECOSolveR', 'scs', 'CLARABEL'))"

# Installer BsplineQuantReg depuis GitHub
RUN R -e "remotes::install_github(repo='alexandreabbes/BsplineQuantReg', ref = '0.2.2')"

# Installer BsplineQuantRegGui depuis GitHub
RUN R -e "remotes::install_github(repo = 'alexandreabbes/BsplineQuantRegGui', upgrade='never')"

# Vérifier l'installation
RUN R -e "\
    library(BsplineQuantReg); \
    print(paste('BsplineQuantReg version:', packageVersion('BsplineQuantReg'))); \
    library(BsplineQuantRegGui); \
    print(paste('BsplineQuantRegGui version:', packageVersion('BsplineQuantRegGui')))"

# Port
EXPOSE 3838

# Lancer l'application au démarrage (CMD, pas RUN)
CMD ["R", "-e", "library(BsplineQuantRegGui); run_gui(host='0.0.0.0', port=3838)"]