
\name{print.additivePenal}
\Rdversion{1.1}

\alias{print.additivePenal}

\title{Print a Short Summary of parameter estimates of an additive frailty model}
\description{
  Prints a short summary of the parameter estimates of an additive frailty model or more generally of an 'additivePenal' object 
}
\usage{
\method{print}{additivePenal}(x, digits = max(options()$digits - 4, 6), ...)
}
\arguments{
  \item{x}{the result of a call to the additivePenal function}
  \item{digits}{number of digits to print}
  \item{\dots}{ other unusued arguments }
}
\value{

Print the parameter estimates of the survival or hazard functions.

}


\seealso{
 \code{\link{additivePenal}}
}

\keyword{methods}
