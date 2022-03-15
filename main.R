
t_a <- proc.time()

n_samples = 1000000

c1 = rnorm(n_samples, mean = 0, sd = 1)
c2 = rnorm(n_samples, mean = 1, sd = 1)
c3 = rnorm(n_samples, mean = 2, sd = 1)
X1 <- cbind(c1, c2, c3)

c1 = rnorm(n_samples, mean = 1, sd = 1)
c2 = rnorm(n_samples, mean = 2, sd = 1)
c3 = rnorm(n_samples, mean = 3, sd = 1)
X2 <- cbind(c1, c2, c3)

c1 = rnorm(n_samples, mean = 2, sd = 1)
c2 = rnorm(n_samples, mean = 3, sd = 1)
c3 = rnorm(n_samples, mean = 4, sd = 1)
X3 <- cbind(c1, c2, c3)

X <- rbind(X1, X2, X3)
X <- X[sample(nrow(X)),]

res = kmeans(X, 3)

t_b <- proc.time()
t_b - t_a
