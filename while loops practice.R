x <- 5
while(x >= 3 && x <= 10) {print(x)
  coin <- rbinom(1,1,0.5)
  if(coin == 1) {x <- x + 1}
  else {x <- x - 1}
  }