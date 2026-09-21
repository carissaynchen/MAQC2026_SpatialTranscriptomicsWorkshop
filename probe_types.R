library(SpatialExperiment)
library(OSTA.data)
library(dplyr)
library(ggplot2)
library(SpaceTrooper)
library(RColorBrewer)
library(SpatialExperimentIO)

id <- "CosMx6k_HumanBrain"
pa <- OSTA.data_load(id, mol=FALSE)
dir.create(td <- tempfile())
unzip(pa, exdir=td)
cos <- SpatialExperimentIO::readCosmxSXE(td, addTx=FALSE)

# prepare data for 'SpaceTrooper' 
cos <- updateCosmxSPE(cos, td, sampleName="CosMx")
cos <- readAndAddPolygonsToSPE(cos)
cos$in_tissue <- TRUE
cos

cos <- spatialPerCellQC(cos, use_altexps = TRUE)

plotPolygons(cos, 
  colourBy="RefinedClusts_Final", sampleId=NULL, scaleBar=FALSE) +
    scale_fill_manual(values=ggthemes::tableau_color_pal(palette= "Tableau 20")(20)) +
    theme(text=element_text(size=24))

cos$sum_limited <- ifelse(cos$sum > 1000, 1000, cos$sum)
plotPolygons(cos, 
  colourBy="sum_limited", sampleId=NULL, scaleBar=FALSE) +
    scale_fill_viridis_c() +
    labs(fill=NULL) +
    theme(text=element_text(size=24))

as.data.frame(colData(cos)) |>
ggplot(aes(x=sum, y=altexps_NegPrb_sum/altexps_NegPrb_detected)) +
  geom_point(alpha=0.5, shape=16) +
  labs(x= "total counts", y= "average negative probe expression") +
  # lims(y=c(0,10)) +
  theme_minimal() +
  theme(text=element_text(size=24))

as.data.frame(colData(cos)) |>
ggplot(aes(x=sum, y=altexps_NegPrb_percent)) +
  geom_point(alpha=0.5, shape=16) +
  labs(x= "total counts", y= "% negative probe expression") +
  theme_minimal() +
  theme(text=element_text(size=24))

as.data.frame(colData(cos)) |>
ggplot(aes(x=detected, y=altexps_FalseCode_detected)) +
  geom_point(alpha=0.5, shape=16) +
  geom_smooth(method="lm", col="blue") +
  labs(x= "# of detected genes", y= "# of detected false codes") +
  theme_minimal() +
  theme(text=element_text(size=24))

as.data.frame(colData(cos)) |>
ggplot(aes(x=sum, y=altexps_FalseCode_percent)) +
  geom_point(alpha=0.5, shape=16) +
  labs(x= "total counts", y= "% false code expression") +
  theme_minimal() +
  theme(text=element_text(size=24))