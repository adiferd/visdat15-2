rm(list = ls());
setwd("/Users/adiferdian/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2");
pemegang <- read.csv("~/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2/Data/jumlahpemegangkartuaskesdikabupatenbojonegoro.csv", sep=";")
pengguna <- read.csv("~/Documents/Studi/Semester 3/Visualisasi Data/Tugas/visdat15-2/Data/penggunaankartuaskesdikabupatenbojonegoro.csv", sep=";")
library(plyr);
pemegang$pemegang_kaartu <- NULL;
pengguna$Penggunaan <- NULL;
p1 <- ddply(pemegang, .(Tahun), summarise, jumPemegang=sum(Jumlah));
p2 <- ddply(pengguna, .(Tahun), summarise, jumPengguna=sum(Jumlah));
data <- merge(p1,p2,by="Tahun");
symbols(data$Tahun, 
        data$jumPemegang,
        circles=data$jumPengguna, 
        inches = 0.35,
        fg=data$Tahun,
        bg=data$Tahun,
        xlab="Tahun",
        ylab="Jumlah Pemegang",
        xlim=c(20, xmax), ylim=c(ymin, ymax)
        main = "
        Jumlah Penggunaan Askes Kabupaten Bojonegoro ");
#text(data$Laki.Laki, data$Perempuan, data$Propinsi, cex=0.5);