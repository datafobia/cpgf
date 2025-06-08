#' Database the Federal Government Payment Card CPGF - Brazil
#'
#' The Federal Government Payment Card (CPGF) is a payment instrument used by the government that operates similarly to a regular credit card, but within specific limits and regulations. The government uses the CPGF to cover its own expenses, provided they qualify as advances of funds (suprimento de fundos).
#'
#' @format Um data frame com X linhas e 21 colunas:
#' \describe{
#'   \item{codigo_orgao_superior}{Code corresponding to the Higher Body of the managing authority on behalf of which the government payment card was formally issued.}
#'   \item{nome_orgao_superior}{Name of the Higher Body of the managing unit on behalf of which the payment card was issued.}
#'   \item{codigo_orgao}{Code of the Subordinate Body of the managing unit on behalf of which the payment card was issued.}
#'   \item{nome_orgao}{Name of the Subordinate Body of the managing unit on behalf of which the payment card was issued.}
#'   \item{codigo_unidade_gestora}{Code of the Managing Unit on behalf of which the payment card was issued.}
#'   \item{nome_unidade_gestora}{Name of the Managing Unit.}
#'   \item{ano_extrato}{Year of the transaction statement.}
#'   \item{mes_extrato}{Month of the transaction statement.}
#'   \item{cpf_portador}{CPF of the cardholder who performed the transaction.}
#'   \item{nome_portador}{Name of the cardholder who performed the transaction.}
#'   \item{cnpj_ou_cpf_favorecido}{CNPJ of the establishment or CPF of the individual who received the payment.}
#'   \item{nome_favorecido}{Name of the establishment or individual who received the payment.}
#'   \item{transacao}{Transaction carried out by the cardholder with the affiliated merchant or contracted party, using the Federal Government Payment Card (CPGF).}
#'   \item{data_transacao}{Date on which the transaction was carried out.}
#'   \item{valor_transacao}{Amount of the transaction carried out with the card, in Brazilian reais (BRL).}
#'   \item{data_date}{Descrição}
#'   \item{ano_mes_dia}{Descrição}
#'   \item{ano_mes}{Descrição}
#'   \item{valor_transacao2}{Descrição}
#'   \item{valor_transacao_deflacionado}{Descrição}
#' }
#' @source Fonte dos dados
# "cpgf_data"
