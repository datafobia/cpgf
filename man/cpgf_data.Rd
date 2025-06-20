% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cpgf_data.R
\name{cpgf_data}
\alias{cpgf_data}
\title{Database the Federal Government Payment Card CPGF - Brazil (2013  up to May 2025)}
\usage{
cpgf_data()
}
\value{
\code{cpgf_data()} returns a \code{data.frame} with the following variables:

\describe{
\item{codigo_orgao_superior}{Code corresponding to the Higher Body of the managing authority on behalf of which the government payment card was formally issued.}
\item{nome_orgao_superior}{Name of the Higher Body of the managing unit on behalf of which the payment card was issued.}
\item{codigo_orgao}{Code of the Subordinate Body of the managing unit on behalf of which the payment card was issued.}
\item{nome_orgao}{Name of the Subordinate Body of the managing unit on behalf of which the payment card was issued.}
\item{codigo_unidade_gestora}{Code of the Managing Unit on behalf of which the payment card was issued.}
\item{nome_unidade_gestora}{Name of the Managing Unit.}
\item{ano_extrato}{Year of the transaction statement.}
\item{mes_extrato}{Month of the transaction statement.}
\item{cpf_portador}{CPF of the cardholder who performed the transaction.}
\item{nome_portador}{Name of the cardholder who performed the transaction.}
\item{cnpj_ou_cpf_favorecido}{CNPJ of the establishment or CPF of the individual who received the payment.}
\item{nome_favorecido}{Name of the establishment or individual who received the payment.}
\item{transacao}{Transaction carried out by the cardholder with the affiliated merchant or contracted party,
using the Federal Government Payment Card (CPGF).}
\item{data_transacao}{Date on which the transaction was carried out.
Note: when the beneficiary is classified as confidential,
there is no transaction date; in these cases, the lowest date on the reference statement was assigned.}
\item{valor_transacao}{Amount of the transaction carried out with the card, in Brazilian reais (BRL) as character.}
\item{data_date}{Date on which the transaction was carried out.
Note: when the beneficiary is classified as confidential,
there is no transaction date; in these cases, the lowest date on the reference statement was assigned.}
\item{ano_mes}{Year and month on which the transaction was carried out.}
\item{valor_transacao2}{Amount of the transaction carried out with the card, in Brazilian reais (BRL) as numeric.}
\item{valor_transacao_deflacionado}{Total deflated transaction value to facilitate comparison, in Brasilian reais.
Deflated until April 2025 (because transactions are up to the previous month of the statement, which here goes until May),
using the IPCA index.}
}
}
\description{
The Federal Government Payment Card (CPGF) is a payment instrument used by the
government that operates similarly to a regular credit card, but within specific
limits and regulations. The government uses the CPGF to cover its own expenses,
provided they qualify as advances of funds (suprimento de fundos).
}
\examples{
\donttest{
# Download data on the Federal Government Payment Card (CPGF)
if(interactive() && curl::has_internet()) {
   cpgf <- cpgf_data()
 }
}
}
