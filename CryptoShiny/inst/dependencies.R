# No Remotes ----
# Attachments ----
to_install <- c("curl", "dplyr", "DT", "ggplot2", "glue", "httr", "jsonlite", "lubridate", "magrittr", "plotly", "pracma", "rlang", "shiny", "shinycssloaders", "shinydashboard", "shinythemes", "stats", "utils")
  for (i in to_install) {
    message(paste("looking for ", i))
    if (!requireNamespace(i)) {
      message(paste("     installing", i))
      install.packages(i)
    }

  }