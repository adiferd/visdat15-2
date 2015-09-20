rm(list = ls());
setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
padi <-read.csv("Data/padi.csv");
padi2013 <- padi[which(padi$tahun == 2013),]; 
padi2013$Negara <- "Indonesia";
padi2013$tahun <- "Indonesia";
padi2013$kode_provinsi <- NULL;
data<-graph.data.frame(padi2013, directed=F);

V(data) #prints the list of vertices (people)
E(data) #prints the list of edges (relationships)
degree(data) #print the number of edges per vertex (relationships per people)
plot(data)
