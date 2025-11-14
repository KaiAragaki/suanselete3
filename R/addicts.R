#' Addicts dataset
#'
#' From the raw data header:
#' Survival times in days of heroin addicts from entry to a clinic until departure.
#' Data provided by John Caplehorn, c/- The University of Sydney, Dept of Public Health.
#'
#' @format A data.frame with 238 rows and the following variables:
#' \describe{
#' \item{id}{ID of subject}
#' \item{clinic}{Clinic (1 or 2)}
#' \item{status}{Status (0 = censored, 1 = endpoint)}
#' \item{time}{Survival time (days)}
#' \item{prison}{Prison record (0 = none, 1 = any)}
#' \item{dose}{Methodone dose (mg/day)}
#' }
#'
#' @source Kleinbaum, D.G. and Klein, M. (2012) Survival Analysis - A
#'     Self-Learning Text, 3rd ed., Springer
"addicts"
