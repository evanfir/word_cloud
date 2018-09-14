library(tm)
library(SnowballC)
library(wordcloud)
library(extrafont)
loadfonts(device = "pdf", quiet = FALSE)
#load the nounlist
#nounlist1 <- readLines(file("/home/matthew/Dropbox/R_Group/Resources/Filters/nounlist1.txt"))
#nounlis	t2 <- readLines(file("/home/matthew/Dropbox/R_Group/Resources/Filters/nounlist2.txt"))

#load the primary list
#primary <- readLines(file("/home/osboxes/Downloads/remove.txt"))

#load the body of text
cloudme <- Corpus(DirSource("/Users/alireza/shah/", encoding='UTF-8'))

#strip whitespace
cloudme <- tm_map(cloudme, stripWhitespace)

#make all lower
#cloudme <- tm_map(cloudme, tolower)

#remove punctuation
cloudme <- tm_map(cloudme, removePunctuation)

#remove all nouns
#cloudme <- tm_map(cloudme, removeWords, c(nounlist1))
#cloudme <- tm_map(cloudme, removeWords, c(nounlist2))
#cloudme <- tm_map(cloudme, removeWords, c(primary))
cloudme <- tm_map(cloudme, removeWords, c("از", "بود", "شد","را","ما","به","که","آن","است","گشت","گردید","در","چه","کن","نه","بر","ای","آمد","هر","باش","باشد","شود","آمد","ور","یا","داری","گفت","گفتم","او","بی","تا","بي","نيست","اين","آن","نكني","کرد","همه","كه","چو","خواهد","دارد","گر","ولی","خواهد","نمی","اگر","و","کنند"))


#make wordcloud

wordcloud(cloudme, max.words = 100, random.order = FALSE, use.r.layout = FALSE, colors = brewer.pal(8, "Dark2"))

#pdf(file = "myGraph11.pdf")
