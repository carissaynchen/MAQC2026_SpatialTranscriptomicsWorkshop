# MAQC2026 Spatial Transcriptomics Workshop

All required packages and environment to run the workshop material can be accessed using a local Docker container. To do so, ensure that you have a containerisation software such as [OrbStack](https://orbstack.dev/) or [Docker](https://www.docker.com/products/docker-desktop/) installed.

## Creating a docker container
1. Clone the GitHub repository.
   
`git clone https://github.com/carissaynchen/MAQC2026_SpatialTranscriptomicsWorkshop.git`

2. Pull the latest version of the docker image using the commandline

`docker pull ghcr.io/carissaynchen/docker_img:latest`

3. Run the container, where the "$PWD" is the folder path of the repository.

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


