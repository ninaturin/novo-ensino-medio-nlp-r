# Novo Ensino Médio e YouTube: Processamento de Linguagem Natural para Avaliação de Políticas Públicas

## Sobre o Projeto

Este repositório reúne o Trabalho de Conclusão de Curso (TCC) desenvolvido no MBA em Data Science & Analytics. O estudo aplica técnicas de Processamento de Linguagem Natural (PLN) em R para analisar discursos sobre o Novo Ensino Médio a partir de títulos de vídeos publicados no YouTube entre 2016 e 2023.

O objetivo é demonstrar como métodos de ciência de dados podem contribuir para a avaliação de políticas públicas por meio da análise de grandes volumes de dados textuais provenientes de redes sociais.

## Objetivos

- Analisar discursos relacionados ao Novo Ensino Médio no YouTube.
- Identificar temas recorrentes e termos relevantes.
- Avaliar sentimentos predominantes associados ao tema.
- Investigar a aplicação de PLN na avaliação de políticas públicas.
- Demonstrar o uso da linguagem R em projetos de mineração de texto.

## Metodologia

O projeto foi desenvolvido em R e contemplou as seguintes etapas:

1. Coleta de dados via API do YouTube.
2. Limpeza e pré-processamento textual.
3. Tokenização dos textos.
4. Remoção de stopwords.
5. Análise de sentimentos.
6. Aplicação da técnica TF-IDF.
7. Visualização e interpretação dos resultados.

## Técnicas Utilizadas

- Web Scraping via API do YouTube
- Processamento de Linguagem Natural (PLN)
- Mineração de Texto
- Análise de Sentimentos
- TF-IDF (Term Frequency – Inverse Document Frequency)
- Visualização de Dados

## Ferramentas

- R
- RStudio
- tidyverse
- tidytext
- tm
- wordcloud
- ggplot2
- tibble

## Principais Resultados

### Temas mais frequentes

Os termos mais recorrentes nos títulos analisados foram:

- Educação
- BNCC
- Escola
- Itinerários
- Aula
- Currículo
- Estudantes
- Projeto
- Brasil

### Análise de Sentimentos

Foram utilizados os dicionários NRC e SentiLex-PT para classificação dos sentimentos.

Os resultados indicaram:

- Predominância de conteúdos informativos e institucionais.
- Maior ocorrência de sentimentos associados à confiança.
- Presença de medo, antecipação e raiva, indicando polarização do debate.
- Melhor desempenho do SentiLex-PT para textos em português.

### TF-IDF

A técnica TF-IDF permitiu identificar palavras características dos canais analisados, evidenciando diferenças entre canais governamentais, educacionais, jornalísticos e tecnológicos.

## Conclusão

Os resultados demonstram que técnicas de Processamento de Linguagem Natural podem apoiar a análise e avaliação de políticas públicas ao permitir o monitoramento de debates em ambientes digitais. Entretanto, é fundamental considerar limitações metodológicas, ambiguidades linguísticas, vieses dos dados e características específicas das plataformas analisadas.

## Autora

**Nina Maria Turin do Paço**

Jornalista | Cientista Social | Especialista em Data Science & Analytics

## Orientação

**Prof. Dr. Ricardo Janes**

## Licença

Este projeto possui finalidade acadêmica e educacional. Caso utilize ou adapte o conteúdo, cite a autora e a fonte original.
