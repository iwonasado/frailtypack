
\name{plot.predJoint}
\alias{plot.predJoint}

\title{Plot predictions using a joint frailty model.}

\description{
  Plots predicted probabilities of terminal event. Confidence intervals are allowed. 
}

\usage{
  \method{plot}{predJoint}(x, conf.bands=FALSE, relapses=TRUE, pos.legend="topright", 
   cex.legend=0.7, ylim=c(0,1), ...)
}

\arguments{
  \item{x}{An object from the 'prediction' function, more generaly a \code{predJoint} class object.}
  \item{conf.bands}{Logical value. Determines whether confidence intervals will be plotted. The default is FALSE.}
  \item{relapses}{Logical value. Determines whether observed recurrent events will be plotted. The default is TRUE.}
  \item{pos.legend}{The location of the legend can be specified by setting this argument to a single keyword from the list
                    '"bottomright"', '"bottom"', '"bottomleft"', '"left"', '"topleft"', '"top"', '"topright"', '"right"' and '"center"'. The default is '"topright"'}
  \item{cex.legend}{size of the legend. Default is 0.7}
  \item{ylim}{range of y-axis. Default is from 0 to 1}
  \item{\dots}{Other unused arguments}
}

\value{
  Print as many plots as the number of subjects.
}

\keyword{file}
