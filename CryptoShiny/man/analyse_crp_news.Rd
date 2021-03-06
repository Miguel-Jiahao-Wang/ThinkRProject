% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analyse_crp_news.R
\name{analyse_crp_news}
\alias{analyse_crp_news}
\title{Analyses a dataframe with news body for occurences of the currencySymbol}
\usage{
analyse_crp_news(databodynews, currencySymbol)
}
\arguments{
\item{databodynews}{dataframe with news body and their timestamp}

\item{currencySymbol}{a character representing the cryptocurrency Symbol}
}
\value{
Dataframe with a boolean column representing if the cryptocurrency was cited in the news article
}
\description{
Analyses a dataframe with news body for occurences of the currencySymbol
}
