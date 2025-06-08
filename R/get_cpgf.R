#' Download da CPGF
#'
#' @param year. Valid options are 2013 to corrent.
#'
#' @param month Valid options are 01 a 12.
#'
#' @import data.table
#'
#' @export
#'
#' @examples \dontrun{cartao <- get_cpgf(2023, 12)}
#'
#' @return \code{(get_cpgf)} returns a \code{data.frame}

get_cpgf <- function(year, month){

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

  return(dados)
}




