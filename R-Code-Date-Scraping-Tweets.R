getwd()
setwd("D:/Class Documents/Semester 7/NLP/Twitter_Scraping_R")

library(rtweet)
library(tm)
library(wordcloud)
library(SnowballC)
library(textstem)
library(twitteR)
library(httpuv)
library(data.table)

consumer_key="consumer keyj"
consumer_secret="secret code"
access_token="token"
access_secret="access secret"


tw=twitteR::searchTwitter('#bigbillionday',since='2019-09-29',
                          until = "2019-10-04", n=20000)    
d= twitteR::twListToDF(tw)
fwrite(d, "flipkart.csv")
