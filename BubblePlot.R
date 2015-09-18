setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
library(rjson);
data <- read.csv("~/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2/Data/pegawaiNegeri.csv")
symbols(data$Laki.Laki, 
        data$Perempuan,
        circles=data$Jumlah, 
        inches = 0.4,
        fg="white",
        bg="gray",
        xlab="Laki-laki",
        ylab="Perempuan",
        main = "
Jumlah Pegawai Negeri Sipil Menurut Provinsi 2014");
text(data$Laki.Laki, data$Perempuan, data$Propinsi, cex=0.5);