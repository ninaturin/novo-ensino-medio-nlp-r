# TCC MBA Data Science & Analytic USP Esalq
# Tema: Novo ensino médio no YouTube: processamento de linguagem natural para avaliação de políticas públicas
# Nina Turin, 2024

################### Instalar e Carregar Pacotes ###################

pacotes <- c("tidytext","ggplot2","dplyr","tibble","wordcloud",
             "stringr","SnowballC","widyr","lexiconPT",
             "tidyr","readxl","tm","e1071","gmodels","caret","reshape2","textdata",
             "tuber", "pander", "syuzhet", "fpc", "cluster", "tidyverse",
             "ggplot2", "dplyr", "knitr", "viridis")

if(sum(as.numeric(!pacotes %in% installed.packages())) != 0){
  instalador <- pacotes[!pacotes %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()}
  sapply(pacotes, require, character = T) 
} else {
  sapply(pacotes, require, character = T) 
}

