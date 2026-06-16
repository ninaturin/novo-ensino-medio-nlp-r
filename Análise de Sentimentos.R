################### Análise de Sentimentos ###################

# Função get estabelece análise de sentimentos em inglês. Essa função coloca em categorias as palavras que estão em meu_texto
sentimento <- get_nrc_sentiment(meu_texto)

# Fazendo o gráfico. Fazer colunas, colocar parâmetro de tamanho, soma de tudo que aparece em sentimentos, nome do gráfico
barplot(colSums(sentimento), las = 2, 
        ylab = "Quantidade",
        main = "Análise de Sentimentos")

# Contagem de cada sentimento
sentimento$sadness
sentimento$positive
sentimento$negative

# Pander: essa função faz contagem das categorias especificadas, que foram da 1 até a 10
pander::pandoc.table(sentimento[1:10])

# Gráfico em barras

barplot(sort(colSums(prop.table(sentimento[, 1:8]))),
        horiz = TRUE,
        cex.names = 0.7,
        las = 1,
        main = "Emoções no Texto Analisado",
        xlab = "%")

################### Nuvem de Palavras ###################

# Corpus

corpus <- VCorpus(VectorSource(bolsonaro_texto))
corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, c("que", "de", "para"))

# Visualizações. Palavras que aparecem 20 vezes, no máximo 100 palavras

wordcloud(corpus, min.freq = 20, max = 100)

# Colocar estilo novo para nuvem de palavras

formatacao <- brewer.pal(8, "Dark2")
wordcloud(corpus, min.freq = 20, max = 100,
          random.order=T,
          colors=formatacao)

################### Gráfico de Barras ###################

# Matriz

corpus_dtm <- DocumentTermMatrix(corpus)
corpus_dtm

# Pedir para frequências da matriz dentro de um objeto

corpus_frequencia <- colSums(as.matrix(corpus_dtm))
length(corpus_frequencia)

# Visualizações. Criar padrão do que será plotado

corpus_plot <- data.frame(word=names(corpus_frequencia),
                          freq = corpus_frequencia)

grafico <- ggplot(subset(corpus_plot, corpus_frequencia>30), aes(x = reorder(word, -freq), y = freq)) +
  geom_bar(stat = "identity") + 
  theme(axis.text.x=element_text(angle=45, hjust=1)) +
  ggtitle("Grafico de barras com os termos mais frequentes") +
  labs(y="Frequencia", x = "Termos")
grafico   
