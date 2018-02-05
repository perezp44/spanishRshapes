
------------------------------------------------------------------------

------------------------------------------------------------------------

[![Project Status: WIP ? Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)

------------------------------------------------------------------------

[![minimal R version](https://img.shields.io/badge/R%3E%3D-NA-6666ff.svg)](https://cran.r-project.org/) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/spanishRshapes)](https://cran.r-project.org/package=spanishRshapes) [![packageversion](https://img.shields.io/badge/Package%20version-0.1.0-orange.svg?style=flat-square)](commits/master)

------------------------------------------------------------------------

[![Last-changedate](https://img.shields.io/badge/last%20change-2018--02--06-yellowgreen.svg)](/commits/master)

<!-- README.md is generated from README.Rmd. Please edit that file -->
spanishRshapes <img src="data-raw/scripts_old-goo/imgfile2.png" align="right" />
================================================================================

The goal of spanishRshapes is: facilitar el uso de datos de limites territoriales españoles en R. Contiene ficheros de datos para los lindes de: CC.AA. provincias y municipios. Los datos proviene del del [Instituto Geográfico Nacional](http://www.ign.es/web/ign/portal), concretamente del [centro de descargas](http://centrodedescargas.cnig.es/CentroDescargas/index.jsp). Una vez en el centro de descargas, hay que ir a `Información geográfica de referencia` y luego a `Lineas límite municipales`

Conuntos de datos
=================

`spanishRshapes` es un package de datos. Concretamente contiene los siguientes conjuntos de datos:

-   **IGN\_CCAA\_17**: lindes/polígonos/shapes de las 17 CC.AA españolas (+ Ceuta y Melilal). \[19 rows y 11 variables\]

-   **IGN\_prov\_17**: lindes/polígonos/shapes de las provincias españolas (52 rows and 13 variables)

-   **IGN\_mun\_17**: lindes/polígonos/shapes de los municipios españoles (8211 rows and 20 variables). \[8.124 municipios, 81 condominios, 6 islitas alrededor de la Gomera\]

Formato de datos
================

Los datos estan en spatial-df. Se abren con el paquete `sf`
