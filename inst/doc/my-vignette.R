## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(PheNorm)

## -----------------------------------------------------------------------------
set.seed(1234)
fit.dat <- read.csv("https://raw.githubusercontent.com/celehs/PheNorm/master/data-raw/data.csv")

## -----------------------------------------------------------------------------
fit.phenorm=PheNorm.Prob("ICD", "utl", fit.dat, nm.X = NULL, corrupt.rate=0.3, train.size=nrow(fit.dat))
head(fit.phenorm$probs)

