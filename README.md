# MAQC2026 Spatial Transcriptomics Workshop

# How to create a docker container
1. clone this github repository locally
/git clone ...
2. run this command
   docker run \
        -e PASSWORD=bioc \
        -p 8787:8787 \
    -v <local>/MAQC2026_SpatialTranscriptomicsWorkshop:/workshop \
    ghcr.io/carissaynchen/<pkgname>:latest
