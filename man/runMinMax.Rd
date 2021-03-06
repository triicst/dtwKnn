% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/runMinMax.R
\name{runMinMax}
\alias{runMinMax}
\alias{runmax}
\alias{runmin}
\title{runMinMax}
\usage{
runMinMax(x, win, dropAttr = FALSE)

runmin(x, win, dropAttr = FALSE)

runmax(x, win, dropAttr = FALSE)
}
\arguments{
\item{x}{a vector or matrix-like object.}

\item{win}{A scaler integer for determining the window size.}

\item{dropAttr}{A bool which if set to false attempts to copy appropriate attributes.}
}
\description{
\code{runMinMax} Compute the running Min Max or Both on a matrix-like object.




}
\details{
An extremely fast method of calculating running min and max windows in C.
}
\examples{
x <- sapply(1:2,function(i) arima.sim(list(ar=c(.95)),n=500))
 colnames(x) <- paste0("k",1:2)

 k1 <- runmin(x[,-1,drop=FALSE],win=10,dropAttr=FALSE)
 str(k1)
 k2 <- runmax(x[,-1,drop=FALSE],win=10,dropAttr=FALSE)
 str(k2)
 matplot(cbind(x[,1],k1,k2),,'l')

 # multivariate
 k3 <- runmin(x,win=10,dropAttr=FALSE)
 k4 <- runmax(x,win=10,dropAttr=FALSE)

 matplot(cbind(x,k3,k4),,'l')
}
\references{
\url{http://richardhartersworld.com/cri/2001/slidingmin.html}.
}

