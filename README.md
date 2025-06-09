# 📦 cpgf

O pacote `cpgf` disponibiliza uma base consolidada de dados do Cartão de Pagamento do Governo Federal (CPGF) referente ao período de 2013 a 2025.

## 📥 Instalação

Para instalar diretamente do GitHub:

```r
# Instale o pacote devtools, se ainda não tiver
install.packages("devtools")

# Instale o pacote cpgf
devtools::install_github("datafobia/cpgf")

# Carregue o pacote
library(cpgf)

# Acesse o dataset
dateset <- cpgf_data()

# Veja os dados
View(cpgf_data)
```

Mas você pode necessitar da base de dados direito da fonte: https://portaldatransparencia.gov.br/download-de-dados/cpgf,
que disponibiliza mes a mes, neste caso vc pode usar a função get_cpgf

```r
# Download
janeiro24 <- get_cpgf(2024, 1)

# Veja os dados
View(janeiro24)
```
