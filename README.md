
<!-- README.md is generated from README.Rmd. Please edit that file -->
dyntoy
======

dyntoy simulates single-cell expression data in which a single-cell trajectory is present. Even though the model to generate the data is very simplistic (and far from realistic), it can simulate very complex trajectory models, such as large trees, convergences and loops.

As the data is relatively easy, it can be used to quickly test and prototype a [TI method](https://github.com/dynverse/dynmethods). However, for more realistic synthetic data, check out our [dyngen package](https://github.com/dynverse/dyngen).

Installation
------------

Install using devtools:

``` r
# install.packages("devtools")
devtools::install_github("dynverse/dyntoy")
```

Example
-------

dyntoy contains some pre-generated toy data within the `toy_datasets` data object:

``` r
data("toy_datasets", package = "dyntoy")
```

Data can be generated using `generate_dataset`:

``` r
library(dyntoy)
dataset <- generate_dataset(
  model = model_bifurcating(num_branchpoints = 2),
  num_cells = 1000,
  num_genes = 1000
)
#> Note that the names of some metrics have changed, see 'Renamed metrics' in ?calculateQCMetrics.
#> Old names are currently maintained for back-compatibility, but may be removed in future releases.

dataset$milestone_network
#> # A tibble: 5 x 4
#>   from  to    length directed
#>   <chr> <chr>  <dbl> <lgl>   
#> 1 M3    M4     0.709 TRUE    
#> 2 M1    M3     0.314 TRUE    
#> 3 M5    M6     0.155 TRUE    
#> 4 M3    M5     0.856 TRUE    
#> 5 M5    M2     0.138 TRUE
```

Related work
------------

-   PROSSTT: <https://github.com/soedinglab/prosstt>
-   Splatter: <https://github.com/Oshlack/splatter>