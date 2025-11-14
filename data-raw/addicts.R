addicts <- read.table(
  file = "inst/extdata/addicts.dat",
  skip = 19 # header includes info about dataset
)

# Kinda insensitive nowadays to say addicts, but for referencing sake, we'll
# keep the name
colnames(addicts) <- c(
  "id",
  "clinic",
  "status",
  "time",
  "prison",
  "dose"
)

usethis::use_data(addicts, overwrite = TRUE)
