# Create factors with effect coding (-1, +1)
x1 <- factor(c(-1, 1))
x2 <- factor(c(-1, 1))

# Expand to a full 2×2 design (all combinations)
dat <- expand.grid(x1 = x1, x2 = x2)

# Set effect coding (a.k.a. sum-to-zero coding)
contrasts(dat$x1) <- contr.sum(2)
contrasts(dat$x2) <- contr.sum(2)

# Show the design matrix used by lm()
model.matrix(~ x1 * x2, data = dat)

x1 <- rep(c(-1, 1), each = 2)
x2 <- rep(c(-1, 1), times = 2)
dat <- data.frame(x1, x2)

model.matrix(~ x1 * x2, data = dat)
