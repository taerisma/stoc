#test 3d plot
# Shape 2: add border
# M <- mesh(seq(0, 2*pi, length.out = 80),seq(0, 2*pi, length.out = 80))
# u <- M$x ; v <- M$y
# x <- sin(u)
# y <- sin(v)
# z <- sin(u + v)
surf3D(x, y, z, colvar = z, border = "black", colkey = FALSE)
x <- 1:5/10
y <- 1:5
z <- x %o% y
z <- z + .2*z*runif(25) - .1*z

library(rgl)
persp3d(x, y, z, col="skyblue")
