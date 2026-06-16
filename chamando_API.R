# TCC MBA Data Science & Analytic USP Esalq
# Tema: Novo ensino médio no YouTube: processamento de linguagem natural para avaliação de políticas públicas
# Nina Turin, 2024
#Siglas: 
# NEM = Novo Ensino Médio

################### Fontes utilizadas para esse script ###################
# Instruções da API do Youtube: https://developers.google.com/youtube/v3/getting-started?hl=pt-br
# https://github.com/gojiplus/tuber
# https://cran.r-project.org/web/packages/tuber/tuber.pdf

################### Configurar API do Google ###################
# Colocar ID do cliente
app_id <- ""

# Colocar chave secreta
app_secret <- ""

# Essa é uma função juntando tudo
yt_oauth(app_id, app_secret, token = "")


################### Teste da API ###################

# Criar objeto sobre o que será buscado
NEM_yt_search <- yt_search(term = 'novo ensino médio', 
                               published_after = "2015-01-01T00:00:00Z",
                               published_before = "2017-12-31T00:00:00Z",
                               type = 'video',
                               max_results = 50)

write.csv(NEM_yt_search, "NEM_videos_2015-2017.csv")

################### Ano de 2015 ###################

# Criar objeto do ano de 2015 com termo de pesquisa sendo "Novo"

NEM_yt_search_2015 <- yt_search(term = 'novo ensino médio', 
                           published_after = "2015-01-01T00:00:00Z",
                           published_before = "2015-12-31T00:00:00Z",
                           type = 'video',
                           max_results = 50)

write.csv(NEM_yt_search_2015, "Novo_videos_2015.csv")

# Criar objeto do ano de 2015 com termo de pesquisa sendo "Reforma"

NEM_Reforma_2015 <- yt_search(term = 'reforma ensino médio', 
                                published_after = "2015-01-01T00:00:00Z",
                                published_before = "2015-12-31T00:00:00Z",
                                type = 'video',
                                max_results = 50)

write.csv(NEM_yt_search_2015, "Reforma_videos_2015.csv")

################### Ano de 2016 ###################

# Criar objeto do ano de 2016 com termo de pesquisa sendo "Novo"

NEM_Novo_2016 <- yt_search(term = 'novo ensino médio', 
                              published_after = "2016-01-01T00:00:00Z",
                              published_before = "2016-12-31T00:00:00Z",
                              type = 'video',
                              max_results = 50)

write.csv(NEM_Novo_2016, "Novo_videos_2016.csv")

# Criar objeto do ano de 2016 com termo de pesquisa sendo "Reforma"

NEM_Reforma_2016 <- yt_search(term = 'reforma ensino médio', 
                              published_after = "2016-01-01T00:00:00Z",
                              published_before = "2016-12-31T00:00:00Z",
                              type = 'video',
                              max_results = 50)

write.csv(NEM_Reforma_2016, "Reforma_videos_2016.csv")

################### Ano de 2017 ###################

# Criar objeto do ano de 2017 com termo de pesquisa sendo "Novo"

NEM_Novo_2017 <- yt_search(term = 'novo ensino médio', 
                           published_after = "2017-01-01T00:00:00Z",
                           published_before = "2017-12-31T00:00:00Z",
                           type = 'video',
                           max_results = 50)

write.csv(NEM_Novo_2017, "Novo_videos_2017.csv")

# Criar objeto do ano de 2017 com termo de pesquisa sendo "Reforma"

NEM_Reforma_2017 <- yt_search(term = 'reforma ensino médio', 
                              published_after = "2017-01-01T00:00:00Z",
                              published_before = "2017-12-31T00:00:00Z",
                              type = 'video',
                              max_results = 50)

write.csv(NEM_Reforma_2017, "Reforma_videos_2017.csv")

################### Ano de 2018 ###################

# Criar objeto do ano de 2018 com termo de pesquisa sendo "Novo"

NEM_Novo_2018 <- yt_search(term = 'novo ensino médio', 
                           published_after = "2018-01-01T00:00:00Z",
                           published_before = "2018-12-31T00:00:00Z",
                           type = 'video',
                           max_results = 50)

write.csv(NEM_Novo_2018, "Novo_videos_2018.csv")

# Criar objeto do ano de 2018 com termo de pesquisa sendo "Reforma"

NEM_Reforma_2018 <- yt_search(term = 'reforma ensino médio', 
                              published_after = "2018-01-01T00:00:00Z",
                              published_before = "2018-12-31T00:00:00Z",
                              type = 'video',
                              max_results = 50)

write.csv(NEM_Reforma_2018, "Reforma_videos_2018.csv")

################### Ano de 2021 ###################

# Criar objeto do ano de 2021 com termo de pesquisa sendo "Novo"

NEM_Novo_2021 <- yt_search(term = 'novo ensino médio', 
                           published_after = "2021-01-01T00:00:00Z",
                           published_before = "2021-12-31T00:00:00Z",
                           type = 'video',
                           max_results = 50)

write.csv(NEM_Novo_2021, "Novo_videos_2021.csv")

# Criar objeto do ano de 2021 com termo de pesquisa sendo "Reforma"

NEM_Reforma_2021 <- yt_search(term = 'reforma ensino médio', 
                              published_after = "2021-01-01T00:00:00Z",
                              published_before = "2021-12-31T00:00:00Z",
                              type = 'video',
                              max_results = 50)

write.csv(NEM_Reforma_2021, "Reforma_videos_2021.csv")

################### Ano de 2022 ###################

# Criar objeto do ano de 2022 com termo de pesquisa sendo "Novo"

NEM_Novo_2022 <- yt_search(term = 'novo ensino médio', 
                           published_after = "2022-01-01T00:00:00Z",
                           published_before = "2022-12-31T00:00:00Z",
                           type = 'video',
                           max_results = 50)

write.csv(NEM_Novo_2022, "Novo_videos_2022.csv")

# Criar objeto do ano de 2022 com termo de pesquisa sendo "Reforma"

NEM_Reforma_2022 <- yt_search(term = 'reforma ensino médio', 
                              published_after = "2022-01-01T00:00:00Z",
                              published_before = "2022-12-31T00:00:00Z",
                              type = 'video',
                              max_results = 50)

write.csv(NEM_Reforma_2022, "Reforma_videos_2022.csv")

################### Ano de 2023 ###################

# Criar objeto do ano de 2023 com termo de pesquisa sendo "Novo"

NEM_Novo_2023 <- yt_search(term = 'novo ensino médio', 
                           published_after = "2023-01-01T00:00:00Z",
                           published_before = "2023-12-31T00:00:00Z",
                           type = 'video',
                           max_results = 50)

write.csv(NEM_Novo_2023, "Novo_videos_2023.csv")

# Criar objeto do ano de 2023 com termo de pesquisa sendo "Reforma"

NEM_Reforma_2023 <- yt_search(term = 'reforma ensino médio', 
                              published_after = "2023-01-01T00:00:00Z",
                              published_before = "2023-12-31T00:00:00Z",
                              type = 'video',
                              max_results = 50)

write.csv(NEM_Reforma_2023, "Reforma_videos_2023.csv")

