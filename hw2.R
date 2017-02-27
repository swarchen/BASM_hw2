## Question 1

### a)

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


### b)

# A normally distributed data sets
d <- rnorm(n=800, mean=30, sd=5)

# We can plot the density function of abc
plot(density(d), col="blue", lwd=2, 
     main = "Distribution 3")

# Add vertical lines showing mean and median
abline(v=mean(d))
abline(v=median(d), lty="dashed")


## Question 2


### a)

# A normally distributed data sets
rdata <- rnorm(n=2000, mean=0, sd=1)

# We can plot the density function of abc
plot(density(rdata), col="blue", lwd=2, 
     main = "Distribution 4")

# Add vertical lines showing mean and median
abline(v=mean(rdata))
r_std = sd(rdata)
r_mean = mean(rdata)
vline = c(r_mean + r_std, r_mean + 2 * r_std, r_mean + 3 * r_std, r_mean - r_std, r_mean - 2 * r_std, r_mean - 3 * r_std)
abline(v=vline, lty="dashed")


### b)

r_quantile = unname(quantile(rdata))
r_diff = (r_quantile - r_mean) / r_std


### c)

rdata <- rnorm(n=2000, mean=35, sd=3.5)
r_std = sd(rdata)
r_mean = mean(rdata)
r_quantile = unname(quantile(rdata))
r_diff = (r_quantile - r_mean) / r_std


### d)

r_std = sd(d123)
r_mean = mean(d123)
r_quantile = unname(quantile(d123))
r_diff = (r_quantile - r_mean) / r_std



## Question 3


### b)

# A normally distributed data sets
rand_data <- rnorm(800, mean=20, sd = 5)

k_sturges = nclass.Sturges(rand_data)
k_scott = nclass.scott(rand_data)
k_FD = nclass.FD(rand_data)

### c)
out_data <- c(rand_data, runif(10, min=40, max=60))

k_sturges = nclass.Sturges(out_data)
k_scott = nclass.scott(out_data)
k_FD = nclass.FD(out_data)




