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
data(cpgf_data)
