#=======================================
#Source Code for Group Assignment 
#Authors: Noah Angara, Giovanni Magagnin
#November 2020
#=======================================
library(ggplot2)
library(xts)
library(dplyr)
library(fBasics)
library(timeSeries)
library(PerformanceAnalytics)
library(quantmod)
library(NMOF)
library(stats)
library(tseries)
library(reshape2)
library(glmnet)
library(corrplot)


## Loading Data
setwd("/Users/noahangara/Documents/Master's/7th Semester/Econometrics I/Pset/PSet2")
load("student-mat-test.Rdata")
load("student-mat-train.Rdata")

## Observations in Test and Training Dataset
print(nrow(test))
print(nrow(train))

## Summary stats grade in train dataset
training_stats <- data.frame(mean(train$G3), min(train$G3), max(train$G3))

## Histogram of grades in train dataset
ggplot(train, aes(x=G3)) + 
  geom_histogram(binwidth=1, color = "black", fill = "black") +
  geom_vline(xintercept=training_stats$mean.train.G3., size=1, color="blue") +
  ggtitle("Histogram Grades Train") +
  theme(plot.title = element_text(hjust = 0.5)) 
  






