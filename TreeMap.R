setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
library(RColorBrewer);
library(portfolio);
library(rjson);
source("treemapbrewer.R");
streamlaporan <- read.csv('Data/streamlaporan.csv');
map.market(id    = streamlaporan$TrackingID,
           area  = streamlaporan$KategoriID,
           group = streamlaporan$Area,
           color = streamlaporan$KategoriID,
           lab = c(TRUE, FALSE), 
           main  = "TreeMap Laporan",
           );