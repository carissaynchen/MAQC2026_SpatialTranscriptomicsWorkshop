FROM bioconductor/bioconductor_docker:3.23-r-4.6.1

COPY install_packages.R /tmp/install_packages.R
RUN Rscript /tmp/install_packages.R

COPY --chown=rstudio:rstudio workshop/ /workshop/
RUN chown -R rstudio:rstudio /workshop

WORKDIR /workshop
