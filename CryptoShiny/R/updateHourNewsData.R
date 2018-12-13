#' Updates the dataset CryptoNewsAnalysedHours with the latest news from CryptoCompare API
#' @export updateHourNewsData
#' @importFrom dplyr filter mutate
#' @importFrom utils read.csv write.csv

updateHourNewsData <- function() {
  dataHour <- CryptoNewsOccurencesHour[-1]
  dataHour$time <- as.POSIXct(dataHour$time)
  newestHour <- max(dataHour$time)
  Newdata <- dl_data_from(as.numeric(newestHour))
  if (length(Newdata$time) != 0) {
    Newdata <- Newdata %>%
      filter(time > newestHour)
    if (length(Newdata$time) != 0) {
      interesting_cryptos <- names(dataHour)[-1]
      result <- analyse_crps_news(Newdata, interesting_cryptos)
      finalHour <- resTspToHour(result, interesting_cryptos)
      finalHour <- finalHour %>%
        filter(time != min(time)) #avoid duplicates
      total <- rbind(finalHour, dataHour)
      CryptoNewsOccurencesHour <- total
      print("Dataset updated")
    }
  }
  if (length(Newdata$time) == 0) {
    print("Already up to date")
  }
}