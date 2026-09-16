FROM bioconductor/bioconductor_docker:3.23-r-4.6.1

COPY install_packages.R /tmp/install_packages.R
RUN Rscript /tmp/install_packages.R

COPY --chown=rstudio:rstudio tutorial/ /tutorial/
RUN chown -R rstudio:rstudio /tutorial

WORKDIR /tutorial

RUN mkdir -p /etc/rstudio && \
    echo 'session-default-working-dir=/tutorial' >> /etc/rstudio/rsession.conf
