anderson <- read.table(file = "inst/extdata/anderson.dat")

colnames(anderson) <- c("time", "relapse", "sex", "log_wbc", "rx")

anderson$subj <- seq_along(nrow(anderson))

anderson <- anderson[c(ncol(anderson), 1:(ncol(anderson) - 1))]

usethis::use_data(anderson, overwrite = TRUE)
