vets <- read.table(file = "inst/extdata/vets.dat", header = FALSE)

colnames(vets) <- c(
  "temp",
  "time",
  "performance",
  "disease_duration",
  "age",
  "prior",
  "status"
)

# First 5 cols got squished together somehow, like 10100 or 20010
vets$trt <- ifelse(grepl("^1", vets$temp), 1, 2)
vets$large <- ifelse(grepl("^[1-2]1", vets$temp), 1, 0)
vets$adeno <- ifelse(grepl("^[1-2]01", vets$temp), 1, 0)
vets$small <- ifelse(grepl("^[1-2]001", vets$temp), 1, 0)
vets$squamous <- ifelse(grepl("^[1-2]0001", vets$temp), 1, 0)
vets$prior <- ifelse(vets$prior == 10, 1, 0)

# Drop 'temp' col
vets <- vets[-1]

col_order <- match(
  c(
    "trt",
    "large",
    "adeno",
    "small",
    "squamous",
    "time",
    "performance",
    "disease_duration",
    "age",
    "prior",
    "status"
  ),
  colnames(vets)
)

vets <- vets[col_order]

usethis::use_data(vets, overwrite = TRUE)
