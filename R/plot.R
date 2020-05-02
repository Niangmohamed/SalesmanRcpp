
#' plot.salesmanRcpp
#' @description Plot the result of the gfpop function with the data-points
#' @param x a salesman class object
#' @param ... Other parameters
#' @param towns the dataframe with the towns (X,Y) coordinate
#' @param col the color of the path
#' @return plot the towns and the shortest path
plot.salesmanRcpp <- function(x, ..., towns, col = "blue")
{
  n <- dim(towns)[1]
  plot(towns[,1], towns[,2], pch = '.', lwd = 0, asp = 1, xlab = "", ylab = "")
  text(towns[,1], towns[,2], labels = 1:n)
  for(s in 1:(length(x)-1))
    {segments(towns[x[s],1], towns[x[s],2], towns[x[s+1],1], towns[x[s+1],2], col = col, lwd = 2)}
}
