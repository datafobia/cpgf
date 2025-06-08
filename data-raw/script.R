# Instale os pacotes, se ainda não tiver
install.packages(c("usethis", "devtools", "roxygen2"))
library(usethis)
library(roxygen2)
library(devtools)

# Carrega a base e renomeia
load("C:/Users/dalso/Downloads/2024/cpgf_2013_2025.rda")
cpgf_data <- final
rm(final)

# Salva com nome correto
usethis::use_data(cpgf_data, overwrite = TRUE)

# Criar documentacao
devtools::document()

# Testar localmente
devtools::install()
library(cpgf)
data(cpgf_data)
View(cpgf_data)


##

# 1. Instalar pacotes necessários (se não tiver)
if (!requireNamespace(c("usethis", "devtools", "roxygen2"), quietly = TRUE)) {
  install.packages(c("usethis", "devtools", "roxygen2"))
}

# 2. Criar estrutura do pacote (execute isto primeiro em um novo projeto)
usethis::create_package("C:\Users\dalso\Documents/cpgf")

# 3. No diretório do pacote, continuar:
library(usethis)
library(devtools)

# 4. Carregar e preparar dados (melhor colocar o arquivo em data/)
load("data-raw/cpgf_2013_2025.rda")  # Assume que você colocou o arquivo aqui
cpgf_data <- final
rm(final)

# 5. Adicionar dados ao pacote
usethis::use_data(cpgf_data, overwrite = TRUE)

# 6. Criar documentação para os dados
# Crie um arquivo R/data.R com:
# #' Dados da CPGF
# #'
# #' Descrição detalhada dos dados aqui
# #'
# #' @format Um data frame com X linhas e Y colunas:
# #' \describe{
# #'   \item{col1}{Descrição}
# #'   \item{col2}{Descrição}
# #' }
# #' @source Fonte dos dados
# "cpgf_data"

# 7. Gerar documentação
devtools::document()

# 8. Instalar e testar
unlink("C:/Users/dalso/AppData/Local/R/win-library/4.4/00LOCK-cpgf", recursive = TRUE)
devtools::install()

library(cpgf)
data(cpgf_data)
str(cpgf_data)  # Melhor que View() para scripts

# Github

usethis::use_git()
