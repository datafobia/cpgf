#' Download the database the Federal Government Payment Card CPGF - Brazil
#'
#' @param year Valid options are 2013 to corrent.
#'
#' @param month Valid options are 01 to 12.
#'
#' @param deflate By default, it is NULL, but when a value is provided in the
#' format month/year (mm/yyyy), the corrected value is calculated using the
#' selected inflation index and create variable "valor_transacao_deflacionado",
#' which is IPCA by default. For more information, see the deflateBR package.
#'
#' @param index_deflate If deflate is not NULL, IPCA is used by default.
#'  For more information, see the deflateBR package.
#'
#' @export
#'
#' @examples \donttest{
#' # Download data on the Federal Government Payment Card (CPGF)
#' if(interactive() && curl::has_internet()) {
#'   cartao <- get_cpgf(2023, 12)
#'   }
#' }
#'
#' @return \code{(get_cpgf)} returns a \code{data.frame}

get_cpgf <- function(year, month, deflate = NULL, index_deflate = "ipca"){

  if(!curl::has_internet()) {
    stop("Internet connection required to download the dataset.")
  }

  # padonizando o mes com dois numeros
  month <- stringr::str_pad(month, 2, "left", "0")

  # download dos dados
  dados <- data.table::fread(paste0("https://portaldatransparencia.gov.br/download-de-dados/cpgf/",
                                   year, month),
                             encoding = "Latin-1")

  #padronização dos nomes das variaveis
  names(dados) <- c("codigo_orgao_superior", "nome_orgao_superior",
                    "codigo_orgao", "nome_orgao",
                    "codigo_unidade_gestora", "nome_unidade_gestora",
                    "ano_extrato", "mes_extrato",
                    "cpf_portador", "nome_portador",
                    "cnpj_ou_cpf_favorecido", "nome_favorecido",
                    "transacao", "data_transacao", "valor_transacao")


  dados$data_transacao <- ifelse(nchar(dados$data_transacao) < 1,
                                NA,
                                 dados$data_transacao)

  mindate <- min(as.Date(dados$data_transacao, format = "%d/%m/%Y"), na.rm = TRUE)

  dados$data_transacao <- ifelse(is.na(dados$data_transacao),
                                 paste0(lubridate::day(mindate), "/",
                                       lubridate::month(mindate), "/",
                                       lubridate::year(mindate)),
                                 dados$data_transacao)


  dados$data_date <- as.Date(dados$data_transacao, format = "%d/%m/%Y")



  dados$dia <- lubridate::day(dados$data_date)

  dados$ano_mes <- lubridate::make_date(lubridate::year(dados$data_date),
                                        lubridate::month(dados$data_date))

  dados$valor_transacao2 <- as.numeric(sub(",", ".", dados$valor_transacao,
                                           fixed = TRUE))

  if(!is.null(deflate)){

    dados$valor_transacao_deflacionado <- deflateBR::deflate(dados$valor_transacao2,
                                                             dados$data_date,
                                                             deflate, index_deflate)
  }



  return(dados)
}




