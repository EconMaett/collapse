# 02 - collapse for tidyverse users ----

# https://sebkrantz.github.io/collapse/articles/collapse_for_tidyverse_users.html

library(tidyverse)
library(collapse)
set_collapse(mask = "manip")

data("mtcars")


## Namespace and global options -----

mtcars |> 
  subset(mpg > 11) |> 
  group_by(cyl, vs, am) |> 
  summarise(
    across(
      .cols = c(mpg, carb, hp), 
      .fns = mean), 
    qset_wt = weighted.mean(qsec, wt)
    )


## Using the *fast statistical functions* ----

# Fast: https://sebkrantz.github.io/collapse/reference/fast-statistical-functions.html

fmean(mtcars$mpg) # Vector

fmean(EuStockMarkets) # Matrix

fmean(mtcars) # Data Frame

fmean(mtcars$mpg, w = mtcars$wt) # Weighted mean

fmean(mtcars$mpg, g = mtcars$cyl) # Grouped mean

fmean(mtcars$mpg, g = mtcars$cyl, w = mtcars$wt) # Weighted grouped mean

fmean(mtcars[5:10], g = mtcars$cyl, w = mtcars$wt) # of a data frame

fmean(mtcars$mpg, g = mtcars$cyl, w = mtcars$wt, TRA = "fill") # Replace data by weighted group mean


mtcars |> 
  subset(mpg > 11) |> 
  group_by(cyl, vs, am) |> 
  summarise(
    across(
      .cols = c(mpg, carb, hp),
      .fns = fmean
    ),
    qsec_wt = fmean(qsec, wt)
  )


mtcars |> 
  subset(mpg > 11) |> 
  group_by(cyl, vs, am) |> 
  select(mpg, carb, hp) |> 
  fmean()


## Writing efficient code ----


## Conclusion ----