# 04 - Introduction to collapse ----

# https://sebkrantz.github.io/collapse/articles/collapse_intro.html

## Why collapse? ----

## 1. Data and summary tools ----

### 1.1. `wldev` - World Bank Development Data -----

library(collapse)
head(wlddev)


descr(wlddev)


head(as.data.frame(descr(wlddev)))


varying(wlddev, wlddev$iso3c)


head(varying(wlddev, wlddev$iso3c, any_group = FALSE))


### 1.2 `GGDC10S` - GGDC 10-Sector Database ----

# The Groningen Growth and Development Centre 10-Sector Database

head(GGDC10S)


## 2. Fast data manipulation ----

### 2.1 Selecting and replacing columns -----

### 2.2 Subsetting ----

### 2.3 Reordering rows and columns ----

### 2.4 Transforming and computing new columns ----

### 2.5 Adding and binding columns ----

### 2.6 Renaming columns ----

### 2.7 Using shortcuts ----

### 2.8 Missing values / rows ----

### 2.9 unique values / rwos ----

### 2.10 Recoding and replacing values ----


## 3. Quick data object conversions ----


## 4. Advanced statistical programming ----

### 4.1 Fast (grouped, weighted) statistical functions -----

### 4.2 Factors, grouping objects and grouped data frames -----

### 4.3 Grouped and weighted computations -----

### 4.4 Transformations using the `TRA` argument ----


## 5. Advanced data aggregation ----


## 6. Data transformations ----

### 6.1 Row and column arithmetic ----

### 6.1 Row and column data apply ----

### 6.2 Split-apply-combine computing ----

### 6.3 Fast (grouped) replacing and sweeping out statistics ----

### 6.4 Fast standardizing -----

### 6.5 Fast centering and averaging ----

### 6.6 HD centering and linear prediction -----


## 7. Time series and panel series ----

### 7.1 Panel series to array conversions ----

### 7.2 Panel series ACF, PACF, and CCF ----

### 7.3 Fast lags and leads ----

### 7.4 Fast differences and growth rates ----


## 8. List processing and panel-VAR example ----

library(vars)

sec <- c("AGR", "MAN", "WRT", "CON", "TRA", "FIRE")

### 8.1 List search and identification ----

### 8.2 List subsetting -----

### 8.3 Recursive apply and unlisting in 2D ----


## Going further ----

## References ----

# END
