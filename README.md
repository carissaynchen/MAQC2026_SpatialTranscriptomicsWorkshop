# Introduction

In this workshop, we will cover biases associated with spatial transcriptomics platforms and discuss key considerations for designing 'good' spatial experiments. Participants will examine essential processing and quality-control measures for **image-based spatial transcriptomics**. Then, we will introduce analytical approaches for investigating the tissue microenvironment, focusing on cellular neighbourhoods, spatial co-localisation, and interactions among cell types and tissue structures.

By the end of the workshop, participants will be equipped to make **informed decisions** about experimental design, and an **understanding of emerging areas** in spatially-aware computational method development leveraging bioinformatics and deep learning/foundation model approaches to characterise fundamental biological mechanisms.

### Schedule

| Time | Section |
|---:|---|
| **5 min** | Docker set-up |
| **20 min** | **Overview**: Introduction, biases in spatial biotechnologies and considerations for experimental design |
| **20 min** | **Tutorial**: Pre-processing & QC for imaged-based spatial transcriptomics |
| **10 min** | **Overview**: Investigating the tissue microenvironment & future outlook |
| **35 min** | **Tutorial**: Neighbourhood & co-localisation analyses |

**Total: 60-90 minutes**

## Workshop material

Presentation slides for the day are available [here](https://drive.google.com/file/d/1WS8PrgcoxO14dqpT1_SLyBCT4DHOCYtK/view?usp=sharing).

The pre-rendered HTML of the tutorial content can be accessed via: <https://carissaynchen.github.io/MAQC2026_SpatialTranscriptomicsWorkshop/>

## Docker set-up

All required packages and environment to run the workshop material can be accessed using a local Docker container. To do so, ensure that you have a containerisation software such as [OrbStack](https://orbstack.dev/) or [Docker](https://www.docker.com/products/docker-desktop/) installed.

### Creating a docker container
In the commandline,

1. Clone the GitHub repository.
   
```bash
git clone https://github.com/carissaynchen/MAQC2026_SpatialTranscriptomicsWorkshop.git
cd MAQC2026_SpatialTranscriptomicsWorkshop
```

2. Pull the latest version of the docker image. (~9GB)

```bash
docker pull ghcr.io/carissaynchen/st-workshop:latest
```

3. Run the container, where `$PWD` is the folder path of the repository.

```bash
docker run \
  -e PASSWORD=bioc \
  -p 8787:8787 \
  -v $PWD/tutorial:/tutorial \
  ghcr.io/carissaynchen/st-workshop:latest
```

4. In the web browser, open <http://localhost:8787/> to start the Rstudio session.

5. Login with:

   | Username | Password |
   |---|---|
   | rstudio | bioc |

## Acknowledgements

This workshop was hosted at the 2026 MAQC Conference in Brescia, Italy. It borrows existing material and explanations from the
[Orchestrating Spatial Transcriptomics with Bioconductor (OSTA)]([https://bioconductor.org/books/release/OSCA/)(https://bioconductor.org/books/release/OSTA/) book.
