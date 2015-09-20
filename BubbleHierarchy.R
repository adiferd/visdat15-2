rm(list = ls());
setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
padi <-read.csv("Data/padi.csv");
padi2013 <- padi[which(padi$tahun == 2013),]; 
padi2013$negara <- "Indonesia";
padi2013$kode_provinsi <- padi2013$tahun <- padi2013$latitude<- padi2013$longitude <- padi2013$produktivitas <- NULL;
data<-graph.data.frame(padi2013, directed=F);
json <- toJSON(padi2013);
V(data) #prints the list of vertices (people)
E(data) #prints the list of edges (relationships)
degree(data) #print the number of edges per vertex (relationships per people)


library(rjson)
sink("padi.json")
cat(toJSON(padi2013))
sink()


#plot(data)

plot(data,vertex.size=V(data)$produksi,vertex.label=V(data)$nama_provinsi,edge.arrow.size=0.01,vertex.label.color = V(data)$nama_provinsi);


plot(data,layout=list,vertex.label=V(data)$nama_provinsi,
     edge.arrow.size=0.01,vertex.label.color = "black",vertex.size=as.matrix(node.size) )