prepare_counts <- function(counts) {
  stopifnot(is.matrix(counts))
  colSums(counts)
}