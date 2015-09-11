
laporan[1] <-streamlaporan[3];

mycorpus <- Corpus(VectorSource(laporan));
mycorpus <- tm_map(mycorpus, stripWhitespace);
mycorpus <- tm_map(mycorpus, tolower);
mycorpus <- tm_map(mycorpus, stemDocument);
mycorpus <- tm_map(mycorpus, PlainTextDocument);
#mycorpus <- tm_map(mycorpus, removeWords, stopwords("english"));
wordcloud(mycorpus, scale=c(4,0.5), min.freq=3,max.words=300, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))



