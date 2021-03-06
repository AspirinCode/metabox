#'a
#'@description a
#' Summarize the information that is important for mETABOX statistical analysis, e.g. factor_name, repeated.factor_name, etc.
#'@usage
#a
#'@param a
#'@param a
#'@param a
#'@details
#'
#'@return
#'a
#'@author Sili Fan \email{fansili2013@gmail.com}
#'@seealso
#'@examples
#'@export
#'
### Summarize dataset.
testing = function(){
  library(plotly)

  # Learn about API authentication here: https://plot.ly/r/getting-started
  # Find your api_key here: https://plot.ly/settings/api

  # create data
  set.seed(20130226)
  n <- 200
  x1 <- rnorm(n, mean = 2)
  y1 <- 1.5 + 0.4 * x1 + rnorm(n)
  x2 <- rnorm(n, mean = -1)
  y2 <- 3.5 - 1.2 * x2 + rnorm(n)
  class <- rep(c("A", "B"), each = n)
  df <- data.frame(x = c(x1, x2), y = c(y1, y2), colour = class)

  # get code for "stat_ellipse"
  library(devtools)
  library(ggplot2)
  o = qplot(data = df, x = x, y = y, colour = class) +
    stat_ellipse(geom = "polygon", alpha = 1/2, aes(fill = class))
  return(o)
}
