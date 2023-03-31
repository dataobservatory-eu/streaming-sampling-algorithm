
## Download the dataset to `not_included`
## From https://github.com/SPLab-IT/CoversBR

coversbr <- read.csv(file.path("not_included", "CoversBR_metadata.csv"),sep = ";")


set.seed(2023)
authors_revenue <- rnorm(nrow(coversbr), 10, 1)
coversbr$authors_revenue <- ifelse(authors_revenue<0, 0, authors_revenue)
coversbr$producers_revenue <- rlnorm(nrow(coversbr), meanlog = 0, sdlog = 1)


write.csv(subset (x = coversbr, select = -c(1,2,3,4,5,6,8,9)),
          file = file.path("data-raw", "CoversBR_metadata_synth.csv"),
          row.names = FALSE)

