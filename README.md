# 📦 cpgf

The `cpgf` package provides a consolidated database of the Federal Government Payment Card (CPGF) covering the period from 2013 to 2025.

The Federal Government Payment Card (CPGF) is a payment instrument used by the government that operates similarly to a regular credit card, but within specific limits and regulations. The government uses the CPGF to cover its own expenses, provided they qualify as advances of funds (suprimento de fundos).

## 📥 Installation

`cpgf` is also available on [GitHub](https://github.com/). You can install pre-release versions via:

``` {.r}
if (!require("devtools")) install.packages("devtools")
devtools::install_github("datafobia/cpgf")
```

## How does it work?

```{.r}
# Load the package
library(cpgf)

# Access the dataset
dateset <- cpgf_data()

# See the data
View(cpgf_data)
```

But you may need the database directly from the source: https://portaldatransparencia.gov.br/download-de-dados/cpgf,
which provides monthly data. In this case, you can use the get_cpgf function.

```{.r}
# Download
january24 <- get_cpgf(2024, 1)

# See the data
View(january24)
```
