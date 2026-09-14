# Introduction

In this workshop, we will cover biases associated with spatial transcriptomics platforms and discuss key considerations for designing 'good' spatial experiments. Participants will examine essential processing and quality-control measures for image-based spatial transcriptomics. Then, we will introduce analytical approaches for investigating the tissue microenvironment, focusing on cellular neighbourhoods, spatial co-localisation, and interactions among cell types and tissue structures.

By the end of the workshop, participants will be equipped to make informed decisions about experimental design, and an understanding of emerging areas in spatially-aware computational method development leveraging bioinformatics and deep learning/foundation model approaches to characterise fundamental biological mechanisms.

## Tutorial set-up

All required packages and environment to run the workshop material can be accessed using a local Docker container. To do so, ensure that you have a containerisation software such as [OrbStack](https://orbstack.dev/) or [Docker](https://www.docker.com/products/docker-desktop/) installed.

### Creating a docker container
In the commandline,

1. Clone the GitHub repository.
   
`git clone https://github.com/carissaynchen/MAQC2026_SpatialTranscriptomicsWorkshop.git`

2. Pull the latest version of the docker image.

`docker pull ghcr.io/carissaynchen/docker_img:latest`

3. Run the container, where `"$PWD"` is the folder path of the repository.

```
docker run \
  -e PASSWORD=bioc \
  -p 8787:8787 \
  -v "$PWD":/workshop \
  ghcr.io/carissaynchen/docker_img:latest
```

4. In the web browser, open <http://localhost:8787/> to start the Rstudio session.

5. Login with:

   | Username | Password |
   |---|---|
   | rstudio | bioc |

