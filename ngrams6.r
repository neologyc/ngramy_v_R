library(quanteda)
#https://quanteda.io/articles/quickstart.html
#https://tutorials.quanteda.io/basic-operations/tokens/kwic/
require(readtext)

# načtení souboru
descs <- read.csv("./data/descs.csv", encoding = "UTF-8")
# helper, ať vím, co je v datech
names(descs)
# nějaký ohák, aby mi to neházelo nějakou chybu
descs$descs <- as.character(descs$descs)
# vytvoření korpusu
corpus_descs <- corpus(descs, text_field = "descs")
# helper, ať vím, co je v datech
print(corpus_descs)
# vytvoření tokenů z corpusu
tokens_descs <- tokens(corpus_descs)


ngrams <- tokens_ngrams(tokens_descs, n = 2:3)
head(ngrams[[1]], 30)

  
