## ----echo = F, message = F-----------------------------------------------
api_key <- Sys.getenv("TCIA_API_KEY")
if(identical(api_key, "")) {
  knitr::opts_chunk$set(eval = FALSE)
  message("Note: code examples will not be evaluated because the system does not have a valid API key installed.")
}

## ----eval = F------------------------------------------------------------
#  install.packages("TCIApathfinder")

## ----eval = F------------------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("pamelarussell/TCIApathfinder")

## ------------------------------------------------------------------------
library(TCIApathfinder)

