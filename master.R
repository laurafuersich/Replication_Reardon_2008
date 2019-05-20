# ---------------------------------------
#
# Validation seg package
# Replication of Reardon, S.F., Matthews, S.A.,
# O'Sullivan, D. et al. Demography (2008) 45: 489. https://doi.org/10.1353/dem.0.0019
#
#----------------------------------------
#
# MASTER
# 04/23/19
# Laura Fursich
# laura.fursich@liu.se
#
#----------------------------------------
#
# data available on https://nhgis.org/
#

# 0   
# paths and macros
library(ipumsr)
library(sf)
library(dplyr)
library(data.table)
library(sp)
library(seg)
library(tigris)
library(rgdal)
library(broom)
library(rgeos)
library(spatstat)
library(ggplot2)

memory.limit(size=10000000)

setwd("C:/Users/laufu50/OneDrive - Linköpings universitet/SEGpack/NHGIS/")


# 1
# load and prep population data
nhgis_csv_file <- "population/block_level.csv" 
nhgis <- read_nhgis(nhgis_csv_file, verbose = FALSE)
   # construct race categories
      # mutually exclusive racial/ ethnical groups: 
      # white, black, Asian, Hispanic
colnames(nhgis)[colnames(nhgis)=="FYF001"] <- "white"
colnames(nhgis)[colnames(nhgis)=="FYF002"] <- "black"
colnames(nhgis)[colnames(nhgis)=="FYF004"] <- "Asian"
      # Hispanic is not a single category > adding up all the subcategories including Hispanic or Latino
      # FYF008:FYF014
nhgis$Hispanic <- rowSums(nhgis[,21:27])

pop<-as.data.table(nhgis)



# 2   
# unzip shape files
setwd('C:/Users/laufu50/OneDrive - Linköpings universitet/SEGpack/NHGIS/shapefiles')

files = list.files(pattern= '*.zip')
lapply(files, unzip)



setwd('C:/Users/laufu50/OneDrive - Linköpings universitet/SEGpack/NHGIS/Rscript/')


# 3 
# create empty data frame for results
headers<-c("metro","H500","H4000")
mtx_wb <- as.data.frame(matrix( ,ncol=3,nrow=0))
names(mtx_wb)<-headers

headers<-c("metro","H500","H4000")
mtx_wH <- as.data.frame(matrix( ,ncol=3,nrow=0))
names(mtx_wH)<-headers

headers<-c("metro","H500","H4000")
mtx_wA <- as.data.frame(matrix( ,ncol=3,nrow=0))
names(mtx_wA)<-headers

headers<-c("metro","H500","H4000")
mtx_wbHA <- as.data.frame(matrix( ,ncol=3,nrow=0))
names(mtx_wbHA)<-headers


# 4
# load data and calculate H

source('loop.R')
source('loop_multiplestates.R')

# 5
# plots

# calculate macro/micro segregation
DT_wb <- as.data.table(mtx_wb)
DT_wb[, ratio := H4000 /H500, by = metro]


DT_wA <- as.data.table(mtx_wA)
DT_wA[, ratio := H4000 /H500, by = metro]

DT_wH <- as.data.table(mtx_wH)
DT_wH[, ratio := H4000 /H500, by = metro]

DT_wbHA <- as.data.table(mtx_wbHA)
DT_wbHA[, ratio := H4000 /H500, by = metro]
# (a)
# white black segregation

plot.wb<-ggplot(DT_wb, aes(x = H500, y = ratio)) +
   geom_point() +
   ggtitle("a. White-Black Segregation")+
   geom_text(aes(label=metro),hjust=0, vjust=0) +
   scale_x_continuous(limits = c(0.1,0.8), breaks = seq(0.1, 0.7, by=0.1)) +
   scale_y_continuous(limits = c(0.1,0.9), breaks = seq(0.2, 0.8, by=0.2), sec.axis = sec_axis(~.*0.8, breaks = seq(0.2, 0.6, by=0.1), name = "Spatial H, 4km Radius")) +
   stat_function(fun = function(x) 0.1/x) +
   stat_function(fun = function(x) 0.2/x) +
   stat_function(fun = function(x) 0.3/x) +
   stat_function(fun = function(x) 0.4/x) +
   stat_function(fun = function(x) 0.5/x) +
   stat_function(fun = function(x) 0.6/x) +
   theme_classic() +
   labs(x="Spatial H, 500m Radius", y= "Macro/ Micro H Ratio") 
 
# (b)
# white Asian segregation

plot.wA<-ggplot(DT_wA, aes(x = H500, y = ratio)) +
   geom_point() +
   ggtitle("b. White-Asian Segregation")+
   geom_text(aes(label=metro),hjust=0, vjust=0) +
   scale_x_continuous(limits = c(0.1,0.8), breaks = seq(0.1, 0.7, by=0.1)) +
   scale_y_continuous(limits = c(0.1,0.9), breaks = seq(0.2, 0.8, by=0.2), sec.axis = sec_axis(~.*0.8, breaks = seq(0.2, 0.6, by=0.1), name = "Spatial H, 4km Radius")) +
   stat_function(fun = function(x) 0.1/x) +
   stat_function(fun = function(x) 0.2/x) +
   stat_function(fun = function(x) 0.3/x) +
   stat_function(fun = function(x) 0.4/x) +
   stat_function(fun = function(x) 0.5/x) +
   stat_function(fun = function(x) 0.6/x) +
   theme_classic() +
   labs(x="Spatial H, 500m Radius", y= "Macro/ Micro H Ratio") 


# (c)
# white Hispanic segregation

plot.wH<-ggplot(DT_wH, aes(x = H500, y = ratio)) +
   geom_point() +
   ggtitle("c. White-Hispanic Segregation")+
   geom_text(aes(label=metro),hjust=0, vjust=0) +
   scale_x_continuous(limits = c(0.1,0.8), breaks = seq(0.1, 0.7, by=0.1)) +
   scale_y_continuous(limits = c(0.1,0.9), breaks = seq(0.2, 0.8, by=0.2), sec.axis = sec_axis(~.*0.8, breaks = seq(0.2, 0.6, by=0.1), name = "Spatial H, 4km Radius")) +
   stat_function(fun = function(x) 0.1/x) +
   stat_function(fun = function(x) 0.2/x) +
   stat_function(fun = function(x) 0.3/x) +
   stat_function(fun = function(x) 0.4/x) +
   stat_function(fun = function(x) 0.5/x) +
   stat_function(fun = function(x) 0.6/x) +
   theme_classic() +
   labs(x="Spatial H, 500m Radius", y= "Macro/ Micro H Ratio") 


# (d)
# white black Hispanic Asian segregation

plot.wbHA<-ggplot(DT_wbHA, aes(x = H500, y = ratio)) +
   geom_point() +
   ggtitle("d. White-Black-Hispanic-Asian Segregation")+
   geom_text(aes(label=metro),hjust=0, vjust=0) +
   scale_x_continuous(limits = c(0.1,0.8), breaks = seq(0.1, 0.7, by=0.1)) +
   scale_y_continuous(limits = c(0.1,0.9), breaks = seq(0.2, 0.8, by=0.2), sec.axis = sec_axis(~.*0.8, breaks = seq(0.2, 0.6, by=0.1), name = "Spatial H, 4km Radius")) +
   stat_function(fun = function(x) 0.1/x) +
   stat_function(fun = function(x) 0.2/x) +
   stat_function(fun = function(x) 0.3/x) +
   stat_function(fun = function(x) 0.4/x) +
   stat_function(fun = function(x) 0.5/x) +
   stat_function(fun = function(x) 0.6/x) +
   theme_classic() +
   labs(x="Spatial H, 500m Radius", y= "Macro/ Micro H Ratio") 
   