# Base image
FROM bioconductor/bioconductor_docker:3.23-r-4.6.1

# Install workshop dependencies as root
COPY install_packages.R /tmp/install_packages.R
RUN Rscript /tmp/install_packages.R

# Copy the tutorial and supporting test scripts
COPY --chown=rstudio:rstudio tutorial/ /tutorial/
RUN chown -R rstudio:rstudio /tutorial

WORKDIR /tutorial

# Configure RStudio's initial working directory
RUN mkdir -p /etc/rstudio && \
    echo 'session-default-working-dir=/tutorial' >> /etc/rstudio/rsession.conf

# Run quick tests without executing the full tutorial
RUN Rscript tests/run-test-functions.R

# Check .qmd config
RUN mkdir -p _quarto-check \
    && quarto inspect extended-workflow-cosmx.qmd _quarto-check/inspect.json

# Confirm the committed, fully rendered tutorial exists
RUN test -s extended-workflow-cosmx.html
