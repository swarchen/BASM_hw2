## Question 1
### Distribution 2

# Three normally distributed data sets
d1 <- rnorm(n=100, mean=15, sd=5)
d2 <- rnorm(n=200, mean=30, sd=5)
d3 <- rnorm(n=500, mean=45, sd=5)

# We can combine them into a single dataset
d123 <- c(d1, d2, d3)

# We can plot the density function of abc
plot(density(d123), col="blue", lwd=2, 
     main = "Distribution 2")

# Add vertical lines showing mean and median
abline(v=mean(d123))
abline(v=median(d123), lty="dashed")



### Distribution 3

# A normally distributed data sets
d <- rnorm(n=800, mean=30, sd=5)

# We can plot the density function of abc
plot(density(d), col="blue", lwd=2, 
     main = "Distribution 3")

# Add vertical lines showing mean and median
abline(v=mean(d))
abline(v=median(d), lty="dashed")


## Question 2

