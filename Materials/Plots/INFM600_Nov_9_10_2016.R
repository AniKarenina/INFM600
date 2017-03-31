sample1 <- read.csv(file.choose())

#attach dataframe for easy call of variable names
attach(sample1)

#plot(var)
plot(wing)

#plot(var, type="insert type") shows different types of plots for the wing variable
plot(wing, type="h")
plot(wing, type="p")
plot(wing, type="l")
plot(wing, type="b")
plot(wing, type="c")
plot(wing, type="o")
plot(wing, type="h")
plot(wing, type="s")
plot(wing, type="S")
plot(wing, type="n")

plot(color, type="h")
plot(color, type="p")
plot(color, type="l")
plot(color, type="b")
plot(color, type="c")
plot(color, type="o")
plot(color, type="h")
plot(color, type="s")
plot(color, type="S")
plot(color, type="n")

#boxplot(var)
boxplot(wing)
boxplot(height)
boxplot(color) #won't work since its nominal

#these will all look the same due to nominal, numeric
plot(color,wing, type="h")
plot(color,wing, type="p")
plot(color,wing, type="l")
plot(color,wing, type="b")
plot(color,wing, type="c")
plot(color,wing, type="o")
plot(color,wing, type="h")
plot(color,wing, type="s")
plot(color,wing, type="S")
plot(color,wing, type="n")

#what happens when you plot a numeric on the x axis and nominal on the y
plot(wing,color)
plot(height,color)

#what happens when you plot a nominal value on the x axis and a numeric on the y
plot(color,wing)
plot(color,height)

#what the different types look like with numeric and nomial 
plot(wing, color, type="h")
plot(wing, color, type="p")
plot(wing, color, type="l")
plot(wing, color, type="b")
plot(wing, color, type="c")
plot(wing, color, type="o")
plot(wing, color, type="h")
plot(wing, color, type="s")
plot(wing, color, type="S")
plot(wing, color, type="n")

#why you should always plot your data
plot(wing,height)
plot(height,wing)

#changing plotting symbols - pch symbols list from - http://www.endmemo.com/program/R/pchsymbols.php
#pch=0,square
#pch=1,circle
#pch=2,triangle point up
#pch=3,plus
#pch=4,cross
#pch=5,diamond
#pch=6,triangle point down
#pch=7,square cross
#pch=8,star
#pch=9,diamond plus
#pch=10,circle plus
#pch=11,triangles up and down
#pch=12,square plus
#pch=13,circle cross
#pch=14,square and triangle down
#pch=15, filled square blue
#pch=16, filled circle blue
#pch=17, filled triangle point up blue
#pch=18, filled diamond blue
#pch=19,solid circle blue
#pch=20,bullet (smaller circle)
#pch=21, filled circle red
#pch=22, filled square red
#pch=23, filled diamond red
#pch=24, filled triangle point up red
#pch=25, filled triangle point down red

#making a function for repeated calls of the same command such as plots
makeWingPlot<-function(){
  plot(wing,height, type ="b", pch="@", col="blue", xlab="Wing", ylab="Height")
}
makeWingPlot()

#making a function for repeated calls of the same command such as plots and adding a parameter you may want to manipulate in a call 
#this is more an advanced way of R work, but useful - maybe better for workflow?
makeWingPlot<-function(typeOfPoint = 1 ,typeOfColor = "blue"){
  plot(wing,height, type ="b", pch= typeOfPoint, col= typeOfColor, xlab="Wing", ylab="Height")
}
makeWingPlot()
makeWingPlot(typeOfPoint = 3, typeOfColor = "red")
makeWingPlot(22)



#The following are modifciaction on a different dataset - from http://www.sthda.com/english/wiki/add-legends-to-plots-in-r-software-the-easiest-way

# Generate some data
x<-1:10; y1=x*x; y2=2*y1
plot(x, y1, type="b", pch=19, col="red", xlab="x", ylab="y")
# Add a line
lines(x, y2, pch=18, col="blue", type="b", lty=2)
# Add a legend
legend(1, 95, legend=c("Line 1", "Line 2"),col=c("red", "blue"), lty=1:2, cex=0.8)

makePlot<-function(){
  x<-1:10; y1=x*x; y2=2*y1
  plot(x, y1, type="b", pch=19, col="red", xlab="x", ylab="y")
  lines(x, y2, pch=18, col="blue", type="b", lty=2)
}

makePlot()
# Add a legend to the plot using coordinates on the graph
legend(1, 95, legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty=1:2, cex=0.8,
       title="Line types", text.font=4, bg='lightblue')

# Remove legend border using box.lty = 0
makePlot()
legend(1, 95, legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty=1:2, cex=0.8,
       box.lty=0)

# Change the border
makePlot()
legend(1, 95, legend=c("Line 1", "Line 2"),
       col=c("red", "blue"), lty=1:2, cex=0.8,
       box.lty=2, box.lwd=2, box.col="green")

#Legend can be specified with following keywords : "bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right" and "center".
makePlot()
legend("bottomright", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("bottom", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("bottomleft", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("left", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("topleft", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("top", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("topright", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("right", legend=c("Line 1", "Line 2"), col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")

makePlot()
legend("center", legend=c("Line 1", "Line 2"),  col=c("red", "blue"), lty=1:2, cex=0.8, box.lty=2, box.lwd=2, box.col="green")
