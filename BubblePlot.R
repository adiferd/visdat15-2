setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
library(rjson);


#data <- fromJSON(file="Data/statistik.json");
data <- read.csv("~/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2/Data/apbd2015.csv", sep=";")
#radius <- sqrt( data$TOTAL/ pi );
symbols(data$APBN, 
        data$APBD,
        circles=data$TOTAL, 
        inches = 0.4,
        fg="white",
        bg="red",
        xlab="APBD",
        ylab="APBN",
        main = "Realisasi APBD");
text(data$APBN, data$APBD, data$DESA, cex=0.5);