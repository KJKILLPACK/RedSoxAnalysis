#'Sabermetric (W%) Formula
#'
#'
#'
#'Calculates the win percentage likely hood of a team based on (Rs)^2/((Rs)^2 + (RsA)^2)
#' @param Rs Vector of numbers for Run's Scored in a season
#' @param RsA Vector of numbers for Run's Scored in a season
#' @return The predictied win Percentage for a game written as integer
sabermtrkk.WP <- function(x, y){
  z <- (sum(x, na.rm = TRUE))
  u <- (sum(y, na.rm = TRUE))
  Rs2 <- (z)^2
  RA2 <- (u)^2
  RR  <- (Rs2/(Rs2+RA2))
  return(RR)
}
