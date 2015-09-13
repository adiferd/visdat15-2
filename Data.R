
laporan <-streamlaporan[3];
mycorpus <- Corpus(VectorSource(laporan));
mycorpus <- tm_map(mycorpus, stripWhitespace);
mycorpus <- tm_map(mycorpus, removePunctuation) #menghapus tanda baca
mycorpus <- tm_map(mycorpus, removeNumbers) #menghapus nomor
mycorpus <- tm_map(mycorpus, tolower);
mycorpus <- tm_map(mycorpus, PlainTextDocument);

stopwordID <- "stopwords.txt";
cStopwordID<-readLines(stopwordID);
mycorpus <- tm_map(mycorpus, removeWords, c(stopwords("english"),cStopwordID);
                   
wordcloud(mycorpus, scale=c(3,0.2),max.words=300, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))

