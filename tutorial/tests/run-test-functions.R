# tests/smoke-test.R

source("R/test-functions.R")

required_packages <- c(
  "OSTA.data",
  "SpatialExperiment",
  "SpatialExperimentIO"
)

missing <- required_packages[
  !vapply(required_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing)) {
  stop("Missing packages: ", paste(missing, collapse = ", "))
}

counts <- matrix(
  c(1, 0, 3, 2, 1, 0),
  nrow = 3
)

result <- prepare_counts(counts)

stopifnot(
  length(result) == 2,
  identical(unname(result), c(4, 3))
)

message("Initial check passed")