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

RUN R -e "install.packages('CVXR', ref='1.9.1')"

# Install remotes
RUN R -e "install.packages('remotes')"



# Install BsplineQuantReg depuis GitHub (branche avec la nouvelle syntaxe)
RUN R -e "remotes::install_github('alexandreabbes/BsplineQuantReg', ref = 'with_quartic')"

# Install other packages

RUN R -e "install.packages(c(\
    'shiny', 'shinythemes', 'shinyjs', 'DT', 'plotly', \
    'colourpicker', 'pracma', 'png', 'grid', \
    'CLARABEL' \
))"

# Install BsplineQuantRegGui
RUN R -e "remotes::install_github('alexandreabbes/BsplineQuantRegGui', ref = 'main')"

# Copy app
COPY ./inst/shiny /app

WORKDIR /app
EXPOSE 3838

CMD ["R", "-e", "shiny::runApp('/app', host='0.0.0.0', port=3838)"]