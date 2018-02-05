#------------------------------ This file documents IGN datasets para los LINDES

#' LINDES del IGN para CC.AA (SPAIN)
#'
#' Poligonos/geometrias/shapes de las provincias  CC.AA. (SPAIN). Sacados del IGN
#' 19 CC.AA (18 = Ceuta y 19 = Melilla).
#'
#' @source \url{http://centrodedescargas.cnig.es/CentroDescargas/index.jsp}
#'
#' @format A sf-data frame with 19 rows and 11 variables:
#' \itemize{
#'   \item INECodCCAA: Código INE de la C.A (Galicia = 12)
#'   \item NATCODE: Cogigo del IGN (Galicia = 34120000000)
#'   \item NAMEUNIT: Nombre de la CC.AA (IGN)
#'   \item NombreCCAA: Nombre de la CC.AA (INE)
#'   \item INSPIREID: IGN code (Galicia = ES.IGN.SIGLIM34120000000)
#'   \item COUNTRY: Country code (ES = Spain)
#'   \item NATLEVEL: http://inspire.ec.europa.eu/codelist/AdministrativeHierarchyLevel/2ndOrder
#'   \item CODNUT1: (Galicia = ES1)
#'   \item CODNUT2: (Galicia = ES1)
#'   \item CODNUT3: NA (no hay datos)
#'   \item geometry: la geometría
#'   }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_CCAA_17
#' }
#'
"IGN_CCAA_17"


#' LINDES del IGN para CC.AA (SPAIN) (version short)
#'
#' Poligonos/geometrias/shapes de las provincias  CC.AA. (SPAIN). Sacados del IGN
#' 19 CC.AA (18 = Ceuta y 19 = Melilla). Solo 4 variables
#'
#' @source \url{http://centrodedescargas.cnig.es/CentroDescargas/index.jsp}
#'
#' @format A sf-data frame with 19 rows and 4 variables:
#' \itemize{
#'   \item INECodCCAA: Código INE de la C.A (Galicia = 12)
#'   \item NATCODE: Cogigo del IGN (Galicia = 34120000000)
#'   \item NombreCCAA: Nombre de la CC.AA (INE)
#'   \item geometry: la geometría
#'   }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_CCAA_17s
#' }
#'
"IGN_CCAA_17s"



#' LINDES del IGN para PROVINCIAS (SPAIN)
#'
#' Poligonos/geometrias/shapes de las provincias  CC.AA. (SPAIN). Sacados del IGN
#' Codigos y nombres oficiales de las provincias y CCAA (SPAIN). Sacados del INE.
#' 52 provincias (51 = Ceuta y 52 = Melilla).
#'
#' @source \url{http://centrodedescargas.cnig.es/CentroDescargas/index.jsp}
#'
#' @format A sf-data frame with 52 rows and 13 variables:
#' \itemize{
#'   \item INECodProv: Código provincia (INE) (Teruel = 44)
#'   \item NATCODE: Code IGN (Teruel = 34024400000)
#'   \item NAMEUNIT: Nombre de la provincia (IGN)
#'   \item NombreProv: Nombre de la provincia (INE)
#'   \item NombreCCAA: Nombre C.A (INE)
#'   \item INSPIREID: Teruel = ES.IGN.SIGLIM34024400000
#'   \item COUNTRY: ES = Spain
#'   \item NATLEVEL: http://inspire.ec.europa.eu/codelist/AdministrativeHierarchyLevel/3rdOrder
#'   \item CODNUT1: (Teruel = ES2)
#'   \item CODNUT2: (Teruel = ES24)
#'   \item CODNUT3: NA
#'   \item INECodCCAA: Código de la C.A (INE)
#'   \item geometry: la geometria
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_prov_17
#' }
#'
"IGN_prov_17"


#' LINDES del IGN para PROVINCIAS (SPAIN) (Short version)
#'
#' Poligonos/geometrias/shapes de las provincias  CC.AA. (SPAIN). Sacados del IGN
#' Codigos y nombres oficiales de las provincias y CCAA (SPAIN). Sacados del INE.
#' 52 provincias (51 = Ceuta y 52 = Melilla).
#'
#' @source \url{http://centrodedescargas.cnig.es/CentroDescargas/index.jsp}
#'
#' @format A sf-data frame with 52 rows and 6 variables:
#' \itemize{
#'   \item INECodProv: Código provincia (INE) (Teruel = 44)
#'   \item NATCODE: Code IGN (Teruel = 34024400000)
#'   \item NombreProv: Nombre de la provincia (INE)
#'   \item NombreCCAA: Nombre C.A (INE)
#'   \item INECodCCAA: Código de la C.A (INE)
#'   \item geometry: la geometria
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_prov_17
#' }
#'
"IGN_prov_17s"




#' LINDES del IGN para Municipios (SPAIN)
#'
#' Poligonos/geometrias/shapes de los municipios  CC.AA. (SPAIN). Sacados del IGN
#' Codigos y nombres oficiales de los municipios (SPAIN). Sacados del INE.
#' 8.124 municipios + 81 condominio + 6 islitas alrededor de La Gomera = 8.211 rows
#'
#' @source \url{http://centrodedescargas.cnig.es/CentroDescargas/index.jsp}
#'
#' @format A data frame with 8211 rows and 20 variables:
#' \itemize{
#'   \item INECodMuni: Codigo INE municipio (5 digitos (Pancrudo = 44177))
#'   \item NATCODE: Codigo IGN (Pancrudo = 34024444177)
#'   \item NAMEUNIT: Nombre municipio (IGN)
#'   \item NombreMuni: Nombre municipio (INE)
#'   \item NombreProv: Nombre provincia (INE)
#'   \item NombreCCAA: Nombre de la C.A (INE)
#'   \item INSPIREID: (Pancrudo = ES.IGN.SIGLIM34024444177)
#'   \item COUNTRY: (ES = Spain)
#'   \item NATLEVEL: http://inspire.ec.europa.eu/codelist/AdministrativeHierarchyLevel/4thOrder
#'   \item CODNUT1: (Pancrudo = ES2)
#'   \item CODNUT2: (Pancrudo = ES24)
#'   \item CODNUT3: (Pancrudo = ES242)
#'   \item INECodCCAA: Codigo CCAA(INE) (Pancrudo = 02)
#'   \item INECodProv: Codigo provincial(INE)(Pancrudo = 44)
#'   \item CMUN: Código municipal(INE)(Pancrudo = 177)
#'   \item DC: Digito control (INE) (pancrudo = 4)
#'   \item INENumMuni: Código municipal(INE) (numeric)(Pancrudo = 177)
#'   \item INENumProv: Codigo provincial(INE) (numeric)(Pancrudo = 44)
#'   \item INENumCCAA: Codigo CCAA(INE) (numeric)(Pancrudo = 02)
#'   \item geometry: la geometria
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_mun_17s
#' }
#'
"IGN_mun_17"





#' LINDES del IGN para Municipios (SPAIN) (short version)
#'
#' Poligonos/geometrias/shapes de los municipios  CC.AA. (SPAIN). Sacados del IGN
#' Codigos y nombres oficiales de los municipios (SPAIN). Sacados del INE.
#' 8.124 municipios + 81 condominio + 6 islitas alrededor de La Gomera = 8.211 rows
#'
#' @source \url{http://centrodedescargas.cnig.es/CentroDescargas/index.jsp}
#'
#' @format A data frame with 8211 rows and 7 variables:
#' \itemize{
#'   \item INECodMuni: Codigo INE municipio (5 digitos (Pancrudo = 44177))
#'   \item NATCODE: Codigo IGN (Pancrudo = 34024444177)
#'   \item NombreMuni: Nombre municipio (INE)
#'   \item INECodProv: Codigo provincial(INE)(Pancrudo = 44)
#'   \item INECodCCAA: Codigo CCAA(INE) (Pancrudo = 02)
#'   \item NombreProv: Nombre provincia (INE)
#'   \item NombreCCAA: Nombre de la C.A (INE)
#'   \item geometry: la geometria
#' }
#'
#' @examples
#' \dontrun{
#'  df <- IGN_mun_17s
#' }
#'
"IGN_mun_17s"





