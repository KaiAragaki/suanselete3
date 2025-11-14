#' Anderson dataset
#'
#' Remission survival time for leukemia patients, with or without a new treatment.
#'
#' @format A data.frame with 42 rows and the following variables:
#' \describe{
#' \item{subj}{Patient ID}
#' \item{time}{Time to relapse or censor}
#' \item{relapse}{Relapse (1) or censor (0)}
#' \item{sex}{Unstated which is which}
#' \item{log_wbc}{Logarithm of white blood cell count}
#' \item{rx}{Patient recieved new (0) or standard (1) treatment}
#' }
#' @source Kleinbaum, D.G. and Klein, M. (2012) Survival Analysis - A
#'     Self-Learning Text, 3rd ed., Springer
"anderson"
