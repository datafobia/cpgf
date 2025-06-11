# 📦 cpgfR

[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/cpgfR)](https://cran.r-project.org/package=cpgfR)
[![R-CMD-check](https://github.com/datafobia/cpgf/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/datafobia/cpgf/actions/workflows/R-CMD-check.yaml)
[![Build status](https://ci.appveyor.com/api/projects/status/8sk3mwbo05dstbjh?svg=true)](https://ci.appveyor.com/project/silvadenisson/cpgf)
[![downloads](https://cranlogs.r-pkg.org/badges/grand-total/cpgfR?color=green)](https://r-pkg.org/pkg/cpgfR)

The `cpgfR` package provides a consolidated database of the Federal Government Payment Card (CPGF).

The Federal Government Payment Card (CPGF) is a payment instrument used by the government that operates similarly to a regular credit card, but within specific limits and regulations. The government uses the CPGF to cover its own expenses, provided they qualify as advances of funds (suprimento de fundos).

## 📥 Installation

``` r
 install.packages("cpgfR")
```

`cpgfR` is also available on [GitHub](https://github.com/). You can install pre-release versions via:

``` {.r}
if (!require("devtools")) install.packages("devtools")
devtools::install_github("datafobia/cpgf")
```

## How does it work?

Database the Federal Government Payment Card CPGF - Brazil (2013  up to April 2025)
 
```{.r}
# Load the package
library(cpgfR)

# Access the dataset
dataset <- cpgf_data()

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

To automatically create a variable with the deflated value, simply provide the reference month and year in the deflate parameter.

```{.r}
# Download
january2023 <- get_cpgf(2023, 1, "01/2024")

# See the data
View(january2023)
```

