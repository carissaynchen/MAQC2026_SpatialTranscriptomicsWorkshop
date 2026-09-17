dir.create(
  "/home/rstudio/.cache/R/BiocFileCache",
  recursive = TRUE,
  showWarnings = FALSE
)

id <- "CosMx1k_MouseBrain2"
path <- OSTA.data::OSTA.data_load(id, mol = FALSE)

stopifnot(file.exists(path))
message("Cached dataset: ", path)

id <- "Xenium_HumanBreast1_Janesick"
pa <- OSTA.data_load(id, mol=FALSE)