setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
library(RColorBrewer);
library(portfolio);
library(rjson);

streamlaporan <- read.csv('Data/streamlaporan.csv');


map.market(id    = streamlaporan$TrackingID,
           area  = streamlaporan$KategoriID,
           group = streamlaporan$Area,
           color = 10 * streamlaporan$KategoriID);