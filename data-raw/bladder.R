bladder <- read.table(file = "inst/extdata/bladder.dat", skip = 2)

names(bladder) <- c(
  "id",
  "event",
  "interval",
  "inttime",
  "start",
  "stop",
  "tx",
  "num",
  "size"
)

# This is not included in the book, and can be calculated from the data
bladder <- bladder[-which(colnames(bladder) == "inttime")]

usethis::use_data(bladder, overwrite = TRUE)
