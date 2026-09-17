BiocManager::install(
  c("DESpace", "ggplot2", "dplyr", "tidyr", "OSTA.data", "patchwork", "pheatmap", "ggspavis", "scuttle",
    "SpatialExperiment", "scRNAseq", "scrapper", "sf", "SingleR", "SpaceTrooper", "spatialFDA",
    "SpatialExperimentIO", "SpatialFeatureExperiment", "spdep", "Voyager", "BiocStyle"
  ),
  ask = FALSE,
  update = FALSE, Ncpus=4
)

install.packages("pals")
