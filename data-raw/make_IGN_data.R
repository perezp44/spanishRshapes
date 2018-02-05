library(tidyverse)
library(stringr)
library(readxl)
library(readr)
library(here)
library(personal.pjp)
library(usethis)

#' (2018-02-04)-----------------------------------------------------
#- la web del [Instituto Geográfico Nacional](http://www.ign.es/web/ign/portal),
#- concretamente al [centro de descargas](http://centrodedescargas.cnig.es/CentroDescargas/index.jsp).
#- Una vez en el centro de descargas, hemos de ir a `Información geográfica de referencia`
#- y luego a `Lineas límite municipales`.
#- Trabajaré con los ficheros de "recintos".
#- Yo lo descargué el **27 de enero de 2018**.
#- Al descomprimirlo muchas carpetas: lineas y recintos para municipios, provincias y CC. AA.; además Canarias va aparte. Veámoslo:


#-------------------------- LINDES de CC.AA.
library(tidyverse)
library(sf)
library(here)
aa <- paste0(here(), "./data-raw/data_IGN/lineas_limite/recintos_autonomicas_inspire_peninbal_etrs89/recintos_autonomicas_inspire_peninbal_etrs89.shp")
ccaa_sf <- st_read(aa) #- 18 registros en Peninsula
aa <- paste0(here(), "./data-raw/data_IGN/lineas_limite/recintos_autonomicas_inspire_canarias_wgs84/recintos_autonomicas_inspire_canarias_wgs84.shp")
ccaa_can_sf <- st_read(aa)  #- 1 registo en Canarias
# cambio CRS de Canarias
ccaa_can_sf<- st_transform(ccaa_can_sf, 4258) #- convierto de epsg(SRID):4326   a  epsg(SRID): 4258
ccaa_todas <- rbind(ccaa_sf, ccaa_can_sf, deparse.level = 1) #- 19 registros
ccaa_todas <- ccaa_todas %>% mutate(INECodCCAA = str_extract(NATCODE, "^(....)"))   #- extraigo los 4 primeros caracteres de NATCODE
ccaa_todas <- ccaa_todas %>% mutate(INECodCCAA = str_extract(INECodCCAA, "(..)$"))   #- extraigo los 2 ultimos caracteres de INECodCCAA

# devtools::install_github("perezp44/pjppkgRdata01")  #- personal pkg
library(pjppkgRdata01) #- personal pkg
INE_prov <-  cod_provincias
INE_prov <- INE_prov %>% select(CODAUTO, CCAA) %>% distinct()
INE_prov <- INE_prov %>% rename(INECodCCAA = CODAUTO)
INE_prov <- INE_prov %>% rename(NombreCCAA = CCAA)
IGN_CCAA_17 <- left_join(ccaa_todas, INE_prov) %>% select(INECodCCAA, NATCODE, NAMEUNIT, NombreCCAA, everything())
IGN_CCAA_17s <- IGN_CCAA_17 %>% select(INECodCCAA, NATCODE, NombreCCAA, geometry)
# use_data(IGN_CCAA_17) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-04
# use_data(IGN_CCAA_17s) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-04



#-------------------------- LINDES de PROVINCIAS
#-------------------------- LINDES de PROVINCIAS

aa <- paste0(here(), "./data-raw/data_IGN/lineas_limite/recintos_provinciales_inspire_peninbal_etrs89/recintos_provinciales_inspire_peninbal_etrs89.shp")
prov_sf <- st_read(aa) #- 50 registros en Peninsula
aa <- paste0(here(), "./data-raw/data_IGN/lineas_limite/recintos_provinciales_inspire_canarias_wgs84/recintos_provinciales_inspire_canarias_wgs84.shp")
prov_can_sf <- st_read(aa)  #- 2 registos en Canarias
prov_can_sf<- st_transform(prov_can_sf, 4258) #- convierto de epsg(SRID):4326   a  epsg(SRID): 4258
#- para unirlos hay q usar rbind(..., deparse.level = 1)
prov_todas <- rbind(prov_sf, prov_can_sf, deparse.level = 1) #- 52 registros
prov_todas <- prov_todas %>% mutate(INECodProv = str_extract(NATCODE, "(.......)$"))   #- extraigo los 7 ultimos caracteres de NATCODE
prov_todas <- prov_todas %>% mutate(INECodProv = str_extract(INECodProv, "^(..)"))   #- extraigo los 2 primeros caracteres de INECodProv


INE_prov <-  cod_provincias
INE_prov <- INE_prov %>% rename(INECodProv = CPRO)
INE_prov <- INE_prov %>% rename(NombreProv = PROVINCIA)
INE_prov <- INE_prov %>% rename(INECodCCAA = CODAUTO)
INE_prov <- INE_prov %>% rename(NombreCCAA = CCAA)
IGN_prov_17 <- left_join(prov_todas, INE_prov) %>% select(INECodProv, NATCODE, NAMEUNIT, NombreProv, NombreCCAA, everything())
IGN_prov_17s <- IGN_prov_17 %>% select(INECodProv, NATCODE, NombreProv, INECodCCAA, NombreCCAA, geometry)

# use_data(IGN_prov_17) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-04
# use_data(IGN_prov_17s) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-04



#-------------------------- LINDES de MUNICIPIOS
#-------------------------- LINDES de MUNICIPIOS


aa <- paste0(here(), "./data-raw/data_IGN/lineas_limite/recintos_municipales_inspire_peninbal_etrs89/recintos_municipales_inspire_peninbal_etrs89.shp")
mun_sf <- st_read(aa) #- 50 registros en Peninsula
aa <- paste0(here(), "./data-raw/data_IGN/lineas_limite/recintos_municipales_inspire_canarias_wgs84/recintos_municipales_inspire_canarias_wgs84.shp")
mun_can_sf <- st_read(aa)  #- 2 registos en Canarias

mun_can_sf<- st_transform(mun_can_sf, 4258) #- convierto de epsg(SRID):4326   a  epsg(SRID): 4258
#- para unirlos hay q usar rbind(..., deparse.level = 1)
mun_todas <- rbind(mun_sf, mun_can_sf, deparse.level = 1) #- 8211 registros

mun_todas <- mun_todas %>% mutate(INECodMuni = str_extract(NATCODE, "(.....)$"))   #- extraigo los 5 ultimos caracteres de NATCODE

#- identifiqué las rows donde estaban las islitas alrededor de La Gomera
islitas_Gomera <- c(8156L, 8158L, 8177L, 8193L, 8207L, 8209L) #- están son las 6 rows que voy a poner q su 38 de INECodMuni pase a ser 66
mun_todas <- mun_todas %>% mutate(INECodMuni = str_extract(NATCODE, "(.....)$"))   #- extraigo los 5 ultimos caracteres de NATCODE
for (i in islitas_Gomera) {
  mun_todas$INECodMuni[i]  <- str_replace(mun_todas$INECodMuni[i] ,"38", "66")
}

INE_mun <-  cod_muni_pjp_17   #- 8124 municipios (1-enero-2017)
IGN_mun_17 <- left_join(mun_todas, INE_mun) %>% select(INECodMuni, NATCODE, NAMEUNIT, NombreMuni, NombreProv, NombreCCAA, everything())
IGN_mun_17s <- IGN_mun_17 %>% select(INECodMuni, NATCODE, NombreMuni, INECodProv, INECodCCAA, NombreProv, NombreCCAA, geometry)

# use_data(IGN_mun_17) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-04
# use_data(IGN_mun_17s) #- lo guarde con esta linea que usa el pkg usethis el 2018-02-04



