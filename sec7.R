

counter = 0
N <- 1000000
for (i in rnorm(N)) {
  if(i> -1& i< 1){
    counter <- counter + 1
  }
}
counter / N
