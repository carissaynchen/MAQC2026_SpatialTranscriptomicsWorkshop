FROM bioconductor/bioconductor_docker:3.23-r-4.6.1

RUN mkdir /workshop

COPY install_packages.R /tmp/install_packages.R
# COPY file.txt /workshop
# copy workshop files
# RUN Rscript # install packages
