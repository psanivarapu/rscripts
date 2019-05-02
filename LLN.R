

N <- 100000
total <- 0

for (i in rnorm(N)) {
  print ("i is: ")
  print(i)
  total <- total + i
  print ("total is: ")
  print(total)
}
average <- total/N
print("average is: ")
print(average)

N <- 1000000
counter <- 1
for(i in rnorm(N)) {
  if(i > -1 & i < 1) {
    #print(i)
    counter <- counter + 1
    #print(counter)
  }
}
answer <- counter / N
print(answer)






