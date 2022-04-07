
getPercent <- function(value, pct, metric = "percent") {
  if(pct < 0) {
    stop("Sorry, your pct is 0 or less which is not possible. Revise and try again.")
  }
  result <- dplyr::case_when(
    metric == "percent" ~ value * (pct / 100),
    metric == "permile" ~ value * (pct / 1000)
  )
}

result <- getPercent(10, 25, "permile")
print(result)
