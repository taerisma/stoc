3+2
x<-1:10
x
y<-1:20
y
z<-2*y
z
plot(x)
plot(y)
plot(x,y)
help(plot)
plot(sin, -pi, 2*pi)
# Example 3
# add some more points to the graph
x2 <- c(0.5, 3, 5, 8, 12)
y2 <- c(0.8, 1, 2, 4, 6)

points(x2, y2, pch=16, col="green")
> plot(6:25,rnorm(20),type="b",xlim=c(1,30),ylim=c(-2.5,2.5),col=2)
> par(new=T)
> plot(rnorm(30),type="b",axes=F,col=3)
> par(new=F)
x  <- seq(-2, 2, 0.05)
y1 <- pnorm(x)
y2 <- pnorm(x,1,1)
# plot(x,y1,type="l",col="red")
# plot(x,y2,type="l",col="green")
#     plot(x,y1,type="l",col="red")
#     lines(x,y2,col="green")
plot( x, y1, type="l", col="red" )
par(new=TRUE)
plot( x, y2, type="l", col="green" )
