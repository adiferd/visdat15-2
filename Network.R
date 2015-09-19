rm(list = ls());
setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
library(igraph);
ekspor <- read.csv('Data/ekspor.csv');

#e2013 <- ekspor[which(ekspor$tahun == 2013),]; 
e2013 <- subset(ekspor, ekspor$tahun == 2013, 
                select=c(tahun, nama_negara,nilai_ekspor));
e = c(e2013$tahun,e2013$nama_negara,e2013$nilai_ekspor);

summary(e2013$tahun);
e2013$nilai_ekspor[2] / sum(e2013$nilai_ekspor);
