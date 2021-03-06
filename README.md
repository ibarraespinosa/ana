
# Agencia Nacional de Aguas e Hidroweb

<!-- <img src="man/figures/logo.png" align="right" alt="" width="220" /> -->

## Instala

``` r
# install.packages("remotes")
remotes::install_gitlab("ibarraespinosa/ana")
```

## Escolhe

### rede

``` r
url1 = paste0("http://portal1.snirh.gov.br/ana/",
              "rest/services/Esta%C3%A7%C3%B5es_da_",
              "Rede_Hidrometeorol%C3%B3gica_Nacional",
              "_em_Opera%C3%A7%C3%A3o/MapServer/1")
```

### hidroweb

``` r
url2 = paste0("http://portal1.snirh.gov.br/ana/",
              "rest/services/Esta%C3%A7%C3%B5es_da_",
              "Rede_Hidrometeorol%C3%B3gica_Nacional",
              "_em_Opera%C3%A7%C3%A3o/MapServer/4")

esri_features <- get_esri_features(url1)
```

## Geometria

``` r
a <- layer_info()
(geom_type <- a$geometryType)
```

## Transforma em Spatial Features

``` r
esri_features <- get_esri_features(url)
simple_features <- esri_to_sf_geom(esri_features, geom_type = geom_type)
```

-----

Based on <https://github.com/yonghah/esri2sf> with some changes.

  - data.table instead of dplyr.

## TODO

  - Remove all unnecessary code
  - remove %\>%
  - Make it easier
  - Make it faster
  - Make it stronger
  - Never Older
  - Add options

![](https://mixmag.com.br/assets/uploads/images/_facebook/Daft-Punk-web.jpg)
<https://mixmag.com.br/read/as-10-melhores-m%C3%BAsicas-do-daft-punk-blog>
