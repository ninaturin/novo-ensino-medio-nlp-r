################### Correlação e NRC ###################

################### Fontes utilizadas para esse script ###################
# https://programminghistorian.org/pt/licoes/analise-sentimento-R-syuzhet
# P4H (Curso de Programação para Humanidades): https://p4husp.github.io/material/tutorial11/
# https://ctruciosm.github.io/IMTR/IMTR3?panelset2=afinn2&panelset3=tweets2#1
# http://www.leg.ufpr.br/~walmes/ensino/mintex/tutorials/03-sentimento.html

################### pairwise_count ###################
# Não funcionou!

title_pairs <- df_title %>%
  pairwise_count(word, video_id, sort = TRUE)

################### pairwise_cor ###################
# Não funcionou!

word_cors <- austen_section_words %>%
  group_by(word) %>%
  filter(n() >= 20) %>%
  pairwise_cor(word, section, sort = TRUE)

################### tm ###################
# tive que apelar para o pacote tm e criar uma matriz...

# Criar um Corpus
corpus_title <- Corpus(VectorSource(df_tibble$title))

# Exibir o corpus processado
inspect(corpus_title)

# Criar a Matriz de Termo-Documento
dtm_title <- DocumentTermMatrix(corpus_title)

# Converter a matriz para uma matriz padrão R
dtm_matrix_title <- as.matrix(dtm_title)

# Calcular a correlação entre as palavras
cor_matrix_title <- cor(dtm_matrix_title)

# Olhando rapidamente, não resultou em nenhuma correlação significativa entre palavras
# e usou muita memória

################### Análise de Sentimentos ###################

# df_title que passou somente pelo get_stopwords

sentimentos_title <- get_nrc_sentiment(df_title$word, lang="portuguese")

summary(sentimentos_title) # "Vários dos valores fornecidos pela função de resumo do texto aparecem 
#com um valor igual a 0, incluindo a mediana (median). 
#Isto indica que poucas palavras do romance aparecem no dicionário que estamos usando (NRC) ou, 
#inversamente, que poucas têm uma atribuição de sentimento ou emoção no dicionário."

# Calcular a frequência das emoções
title_emotion_frequencies <- colSums(sentimentos_title[, 1:8])

# Ordenar as emoções pela frequência
title_sorted_emotions <- sort(title_emotion_frequencies, decreasing = TRUE)

barplot(
  title_sorted_emotions,
  space = 0.2,
  horiz = FALSE,
  las = 1,
  cex.names = 0.7,
  col = viridis(length(title_sorted_emotions)),
  main = "Sentimentos dos Títulos de Vídeo no Youtube sobre o Novo Ensino Médio (2016-2023)",
  xlab = "Emoções", 
  ylab = "Frequência"
)
# df_title_cleaned

sentimentos_title_cleaned <- get_nrc_sentiment(df_title_cleaned$word, lang="portuguese")

summary(sentimentos_title_cleaned) 

# Calcular a frequência das emoções
title_emotion_freq_clean <- colSums(sentimentos_title_cleaned[, 1:8])

# Ordenar as emoções pela frequência
title_sorted_emot_clean <- sort(title_emotion_freq_clean, decreasing = TRUE)

barplot(
  title_sorted_emot_clean,
  space = 0.2,
  horiz = FALSE,
  las = 1,
  cex.names = 0.7,
  col = viridis(length(title_sorted_emotions)),
  main = "Sentimentos dos Títulos de Vídeo no Youtube sobre o Novo Ensino Médio (2016-2023)2",
  xlab = "Emoções", 
  ylab = "Frequência"
)

# O banco mais "limpo" não resultou em uma diferença significativa na frequência de emoções.

# Fiz um banco de dados mais "limpo", mas que ainda contém "novo", "ensino", "médio" e "reforma". 

# df_title_final

sentimentos_title_final <- get_nrc_sentiment(df_title_final$word, lang="portuguese")

summary(sentimentos_title_final)

# Calcular a frequência das emoções
title_emotion_final <- colSums(sentimentos_title_final[, 1:8])

# Ordenar as emoções pela frequência
title_sorted_emot_final <- sort(title_emotion_final, decreasing = TRUE)

ylim_max <- max(title_sorted_emot_final) * 1.2  

bp <- barplot(
  title_sorted_emot_final,
  space = 0.2,
  horiz = FALSE,
  las = 1,
  cex.names = 0.7,
  col = viridis(length(title_sorted_emotions)),
  main = "Sentimentos dos Títulos de Vídeo no Youtube sobre o Novo Ensino Médio (2016-2023) - Final",
  xlab = "Emoções", 
  ylab = "Frequência",
  ylim = c(0, ylim_max)
)

# Adicionando rótulos acima das barras
text(
  x = bp, 
  y = title_sorted_emot_final + (ylim_max * 0.02), 
  labels = as.integer(title_sorted_emot_final), 
  pos = 3, 
  cex = 0.8, 
  col = "black"
)


################### Contagem de Sentimentos ###################

# Title: Palavras Confiança

# Filtrar palavras associadas ao sentimento "trust"
trust_words <- df_title_final$word[sentimentos_title_final$trust > 0]

# Contar a frequência das palavras associadas ao sentimento "trust"
trust_word_freq <- table(trust_words)

# Ordenar as palavras pela frequência
trust_word_freq_sorted <- sort(trust_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "trust"
print(head(trust_word_freq_sorted, 15)) 

# Title: medo

# Filtrar palavras associadas ao sentimento "fear"
fear_words <- df_title_final$word[sentimentos_title_final$fear > 0]

# Contar a frequência das palavras associadas ao sentimento "fear"
fear_word_freq <- table(fear_words)

# Ordenar as palavras pela frequência
fear_word_freq_sorted <- sort(fear_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "fear"
print(head(fear_word_freq_sorted, 15)) 

# Title: anticipation

# Filtrar palavras associadas ao sentimento "anticipation"
anticipation_words <- df_title_final$word[sentimentos_title_final$anticipation > 0]

# Contar a frequência das palavras associadas ao sentimento "anticipation"
anticipation_word_freq <- table(anticipation_words)

# Ordenar as palavras pela frequência
anticipation_word_freq_sorted <- sort(anticipation_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "anticipation"
print(head(anticipation_word_freq_sorted, 15
           )) 

# Title: anger

# Filtrar palavras associadas ao sentimento "anger"
anger_words <- df_title_final$word[sentimentos_title_final$anger > 0]

# Contar a frequência das palavras associadas ao sentimento "anger"
anger_word_freq <- table(anger_words)

# Ordenar as palavras pela frequência
anger_word_freq_sorted <- sort(anger_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "anger"
print(head(anger_word_freq_sorted, 15)) 

# Title: joy

# Filtrar palavras associadas ao sentimento "joy"
joy_words <- df_title_final$word[sentimentos_title_final$joy > 0]

# Contar a frequência das palavras associadas ao sentimento "joy"
joy_word_freq <- table(joy_words)

# Ordenar as palavras pela frequência
joy_word_freq_sorted <- sort(joy_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "joy"
print(head(joy_word_freq_sorted, 15)) 

# Title: sadness

# Filtrar palavras associadas ao sentimento "sadness"
sadness_words <- df_title_final$word[sentimentos_title_final$sadness > 0]

# Contar a frequência das palavras associadas ao sentimento "sadness"
sadness_word_freq <- table(sadness_words)

# Ordenar as palavras pela frequência
sadness_word_freq_sorted <- sort(sadness_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "sadness"
print(head(sadness_word_freq_sorted, 15)) 

# Title: disgust

# Filtrar palavras associadas ao sentimento "disgust"
disgust_words <- df_title_final$word[sentimentos_title_final$disgust > 0]

# Contar a frequência das palavras associadas ao sentimento "disgust"
disgust_word_freq <- table(disgust_words)

# Ordenar as palavras pela frequência
disgust_word_freq_sorted <- sort(disgust_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "disgust"
print(head(disgust_word_freq_sorted, 15)) 

# Title: surprise

# Filtrar palavras associadas ao sentimento "surpresa"
surprise_words <- df_title_final$word[sentimentos_title_final$surprise > 0]

# Contar a frequência das palavras associadas ao sentimento "surpresa"
surprise_word_freq <- table(surprise_words)

# Ordenar as palavras pela frequência
surprise_word_freq_sorted <- sort(surprise_word_freq, decreasing = TRUE)

# Visualizar as palavras mais frequentes associadas ao sentimento "surpresa"
print(head(surprise_word_freq_sorted, 15))

