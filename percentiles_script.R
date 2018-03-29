
#Full dataset for Flint Michigan lead water content, in parts per billion
lead_data <- c(0,104,10,6,5,0,3,0,13,4,8,6,2,1,1,0,2,7,3,5,0,5,5,42,22,8,20,6,2,5,3,2,3,4,21,7,3,42,0,7,29,18,1,2,3,1,5,0,3,10,2,5,2,3,0,3,9,11,0,0,3,6,2,0,2,0,2,0,3,5,2)
length(lead_data)

#Dataset with two high numbers removed.
lead_short <-c(0,104,10,6,5,0,3,0,13,4,8,6,2,1,1,0,2,7,3,5,0,5,5,42,8,20,6,2,5,3,2,3,4,21,7,3,0,7,29,18,1,2,3,1,5,0,3,10,2,5,2,3,0,3,9,11,0,0,3,6,2,0,2,0,2,0,3,5,2)
length(lead_short)

#Command to output deciles for lead_data and lead_short datasets

quantile(lead_data, prob = seq(0,1,by=0.1), type=5)
quantile(lead_short, prob = seq(0,1,by=0.1),type=5)


#Commands to get code for quantile function

?quantile
quantile
methods(quantile)
getAnywhere(quantile.default)

x <- rnorm(100)


probs <- c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1)
probs
n <- length(x)
n
    index <- 1 + (n - 1) * probs
    index
    
    lo <- floor(index)
    lo
    hi <- ceiling(index)
    hi
    
    
    x <- sort(x, partial = unique(c(lo, hi)))
    x
    qs <- x[lo]
    qs
    i <- which(index > lo & x[hi] != qs)
    i
    h <- (index - lo)[i]
    h
    qs[i] <- (1 - h) * qs[i] + h * x[hi[i]]    
    qs[i]

        