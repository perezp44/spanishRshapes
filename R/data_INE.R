#------------------------------ This file documents INE datasets

#' Codigos INE para provincias y CC.AA. (SPAIN)
#'
#' Codigos y nombres oficiales de las provincias y CCAA (SPAIN). Sacados del INE.
#' 52 provincias (51 = Ceuta y 52 = Melilla).
#' 19 CC.AA (18 = Ceuta y 19 = Melilla).
#'
#' @source \url{http://www.ine.es}
#'         \url{http://www.ine.es/dyngs/INEbase/es/operacion.htm?c=Estadistica_C&cid=1254736177031&menu=ultiDatos&idp=1254734710990}
#'
#' @format A data frame with 52 rows and 4 variables:
#' \itemize{
#'   \item CODAUTO: Código de la C.A.
#'   \item CCAA: Nombre de la C.A.
#'   \item CPRO: Código de la provincia.
#'   \item PROVINCIA: Nombre de la provincia.
#' }
#'
#' @examples
#' \dontrun{
#'  df <- cod_INE_prov
#' }
#'
"cod_INE_prov"



#' Codigos INE municipios 2017
#'
#' Codigos del INE para municipios españoles a 1 enero 2017: 8.124 municipios, 6 variables.
#'
#' @source \url{http://www.ine.es/daco/daco42/codmun/codmunmapa.htm}
#'
#' @format A data frame with 8124 rows and 4 variables: Cerdedo-Cotobade se unieron en 2016
#' \itemize{
#'   \item CODAUTO: Código de CCAA
#'   \item CPRO: Código de la provincia
#'   \item CMUN: Código del municipio
#'   \item DC: Código de control
#'   \item NOMBRE: Nombre del municipio
#'   \item INECodMuni: CPRO+CMUN (5 digits code)
#' }
#'
"cod_INE_muni_17"


#' Codigos INE municipios 2016
#'
#' Codigos del INE para municipios españoles a 1 enero 2016: 8.125 municipios, 6 variables.
#' Un municipio más que en 2017
#'
#' @format A data frame with 8125 rows (1 municipio mas que en 2017) and 6 variables :
#' \itemize{
#'   \item CODAUTO: Código de CCAA
#'   \item CPRO: Código de la provincia
#'   \item CMUN: Código del municipio
#'   \item DC: Código de control
#'   \item NOMBRE: Nombre del municipio
#'   \item INECodMuni: CPRO+CMUN (5 digits code)
#' }
#'
#' @source \url{http://www.ine.es}
#'
"cod_INE_muni_16"




#' Codigos INE municipios 2017 (1 enero)
#'
#' Codigos del INE para municipios españoles a 1 enero 2017 (tb tiene los codigos de provincia y CCAA)
#'
#' @format A data frame with 8124 rows and 11 variables:
#' \itemize{
#'   \item INECodCCAA: Código de CCAA
#'   \item INECodProv: Código de la provincia
#'   \item CMUN: Código del municipio (es del INE, pero sin el codigo de la Provincia no es útil)
#'   \item DC: Código de control
#'   \item NombreMuni: Nombre del municipio
#'   \item INECodMuni: Código de provincia + Código municipio. Es el que usa el INE muchas veces (5 digitos)
#'   \item NombreCCAA: Nombre de la CCAA
#'   \item NombreProv: Nombre de la provincia
#'   \item INENumMuni: número del municipio (as.integer(INECodMuni))
#'   \item INENumProv: número de la provincia (as.integer(INECodProv))
#'   \item INENumCCAA: número de la CCAA (as.integer(INECodCCAA))
#' }
#'
#'
#' @source \url{http://www.ine.es}
"cod_muni_pjp_17"



#' Codigos INE municipios 2016 (1 enero)
#'
#' Codigos del INE para municipios españoles a 1 enero 2016 (tb tiene los codigos de provincia y CCAA)
#'
#' @format A data frame with 8125 rows and 11 variables:
#' \itemize{
#'   \item INECodCCAA: Código de CCAA
#'   \item INECodProv: Código de la provincia
#'   \item CMUN: Código del municipio (es del INE, pero sin el codigo de la Provincia no es útil)
#'   \item DC: Código de control
#'   \item NombreMuni: Nombre del municipio
#'   \item INECodMuni: Código de provincia + Código municipio. Es el que usa el INE muchas veces (5 digitos)
#'   \item NombreCCAA: Nombre de la CCAA
#'   \item NombreProv: Nombre de la provincia
#'   \item INENumMuni: número del municipio (as.integer(INECodMuni))
#'   \item INENumProv: número de la provincia (as.integer(INECodProv))
#'   \item INENumCCAA: número de la CCAA (as.integer(INECodCCAA))
#' }
#'
#'
#' @source \url{http://www.ine.es}
"cod_muni_pjp_16"




