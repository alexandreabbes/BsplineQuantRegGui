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
    && rm -rf /var/lib/apt/lists/*

# Rust and Cargo
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# R packages
RUN R -e "install.packages(c(\
    'shiny', 'shinythemes', 'shinyjs', 'DT', 'plotly', \
    'colourpicker', 'pracma', 'png', 'grid', 'remotes', 'devtools' \
))"

# CVXR et solveurs
RUN R -e "remotes::install_github('cvxgrp/CVXR', ref = 'v1.9.1')"
RUN R -e "install.packages(c('osqp', 'ECOSolveR', 'scs', 'CLARABEL'))"

# Installer BsplineQuantReg depuis GitHub
RUN R -e "install.packages('alexandreabbes/BsplineQuantReg')"
RUN R -e "remotes::install_github('alexandreabbes/BsplineQuantRegGui', update='never')"
# Copier le code source de BsplineQuantRegGui
#COPY . /tmp/BsplineQuantRegGui

# Installer BsplineQuantRegGui localement (inclut inst/shiny/)
#RUN R -e "remotes::install_local('/tmp/BsplineQuantRegGui')"



# Nettoyer
RUN rm -rf /tmp/BsplineQuantRegGui

# Vérifier l'installation
#RUN R -e "print('=== Verification ==='); print(packageVersion('BsplineQuantReg')); print(packageVersion('BsplineQuantRegGui')); print(packageVersion('shiny#')); print('=== Contenu du dossier shiny ==='); print(list.files(system.file('shiny', package='BsplineQuantRegGui'), recursive=TRUE))"

EXPOSE 3838


# Lancer l'application
#RUN R -e "library(BsplineQuantRegGui)"
#CMD ["R", "-e", "BsplineQuantRegGui::run_gui(host='0.0.0.0', port=3838)" ]
CMD ["R", "-e", "library(BsplineQuantReg);  BsplineQuantReg::test_karlin_simple()"]