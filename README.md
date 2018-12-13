# Cryptocurrency Project!

### Introduction

This is a project for the subject "R for Data Science" of the MSc Data Science for Business, taught jointly by Hec Paris and École Polytechnique.

It consisted on the analysis of the cryptocurrency market:

* First, we receiver the data from the API Cryptocompare and we perform an analysis from different cryptocurrencies.
* Second, we analyse the impact the news have on the cryptocurrencies price.
* Third, we compare the price of the cryptocurrencies on the 6 biggest platform.
* Finally, we have implemented a trading simulator.

### Prerequisites

Before installing the package, you need to install the dependencies by running the file "dependencies.R"

It can be found on the folder "inst" inside the package or in the following link:

https://github.com/fernandopf/ThinkRProject/blob/master/CryptoShiny/inst/dependencies.R

The packages with the dependencies can be installed directly.
```
install.packages("devtools") # if you have not installed "devtools" package
install("<directory of the package>", dependencies = TRUE)

```

### Installing

After installing the dependecies and downloading the packages, you can install it by running the following command.

```
install.package(<directory of the package>")

```

### Loading the package

After installing the package you need to load it.

```
library(CryptoShiny)

```

### Shiny App

For running the Shiny App you need to call the function "run_app()"
```
run_app()
```

### Functions to receive the data

The function "day_hour.R" has been designed to receive the data of the desired cryptocurrency in an specific timeframe. It returns a dataframe with the date, high, low, close and open price in the timeframe, volume in the and direction (decreasing if the close price is lower than the open price, increasing otherwise).

```
# Example to obtain the price of the Bitcoin in USD, from December 1th 2017 until August 1th 2018 with a daily timeframe.

bitcoinVsDollarExampleDay <- day_hour("day", "01/12/2017", "01/08/2018", "BTC", "USD")
```
The user can use several functions to get the data of the cryptocurrencies.

The function "crypto.R" returns a dataset with the time, highest price, lowest price, open price, close price and financial indicators in the chosen timeframe.

```
# Example of the Bitcoin price vs USD per hour.

exampleCryptoBTCUSDHour <- crypto("hour", "01/08/2018", "01/10/2018", "BTC", "USD",5 , 26, 12, 9)
```

The function "getLastPriceMultiplePlatform.R" returns a dataset with the price of that cryptocurrency in each platform (if avaliable).

```
# Example to get the BTC price vs USD

lastPrice <- getLastPriceMultiplePlatforms("BTC")
```

The "function lastweek_minute.R" returns a dataframe with the date, high price, low price, close price, open price and direction (decreasing if the close price is lower than the open price, increasing otherwise) in each minute of the last week. 

```
# In the following example we are getting the price of Bitcoin in USD

minuteExampleBTCvsUSD <- lastweek_minute("BTC", "USD")

```

### Functions to plot the data

The function "candle_plot.R" returns an interactive plot displaying the evolution of the exchange rate between two currencies over time.

```
# Example
candle_plot(data= exampleCryptoBTCUSDHour, MACD)
```

The function "plot_lastweek.R" returns a plot where the evolution of the exchange rate between two currencies is displayed for a pre-specified time interval.

```
# Example to obtain the price of the Bitcoin in USD, from December 1th 2017 until August 1th 2018 with a daily timeframe.

plot_lastweek(cryptocurrency = "EOS", comparison = "GBP", grouping = "6 hours")
```

### Functions to analyse the data

The function "crypto_correlation.R" can be used to get the correlation of two cryptocurrencies between two chosen dates.

```
# Example to get the correlation of Bitcoin and Ethereum between 01/09/2018 and 01/10/2018.

correlationBTCvsETH <- crypto_correlation("01/09/2018", "01/10/2018", "BTC", "ETH")
```

The function "lastweek_news_counter.R" has been designed to count hourly how many times the inputted crpytocurrency has been mentioned in the news during the last week.

```
# Example to get how many times the Bitcoin has been mentioned during the last week

countNewsLastWeekBitcoin <- lastweek_news_counter("BTC")
```

The function "averages.R" has been designed to add financial indicators into the dataset (Moving average and MACD). It takes as input a dataset and the windows of moving average, slow MACD, quick MACD and signal MACD and returns the dataset with the financial indicators added.

```
# Example to add financial indicators to the dataset bitcoinVsDollarExampleWeek

bitcoinVsDollaFinancialIndicators <- averages(bitcoinVsDollarExampleWeek, 5, 26, 12, 9)
```

## Authors

* Ching-Yu LIN
* Konstantinos PETROPOULOS
* Fernando PEREZ FERNANDEZ
* Jiahao WANG
* Souhail ELAISSAOUI

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Thank you to "ThinkR" for teaching the subject and allow us to do this project.
