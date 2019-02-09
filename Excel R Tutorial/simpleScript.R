args <- commandArgs(trailingOnly = TRUE)
symbol <- args[1]
start <- args[2]

print(symbol)

library(quantmod)
df <- getSymbols(symbol, from=start, auto.assign = FALSE)
write.csv(df, paste("C:/Users/Frank  Dupuis/Documents/Excel R Tutorial/",symbol,".csv", sep=""))