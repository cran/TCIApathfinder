## ----echo = F, message = F-----------------------------------------------
api_key <- Sys.getenv("TCIA_API_KEY")
if(identical(api_key, "")) {
  knitr::opts_chunk$set(eval = FALSE)
  message("Note: code examples will not be evaluated because the system does not have a valid API key installed.")
}

## ------------------------------------------------------------------------
suppressPackageStartupMessages(library(radiomics))

# Pick one of the image slices
img_array <- img_array_3d[, , 1]
img_matrix <- matrix(img_array, dim(img_array))

# Calculate basic image features
calc_features(img_matrix)

# Analyze the grey level co-occurrence matrix
glcm <- glcm(img_matrix)
calc_features(glcm)

