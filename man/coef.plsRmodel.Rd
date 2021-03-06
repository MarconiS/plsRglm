\name{coef.plsRmodel}
\alias{coef.plsRmodel}
\title{coef method for plsR models}
\description{
This function provides a coef method for the class \code{"plsRmodel"}
}
\usage{
\method{coef}{plsRmodel}(object,type=c("scaled","original"), \dots)
}
\arguments{
  \item{object}{an object of the class \code{"plsRmodel"}}
  \item{type}{if \code{scaled}, the coefficients of the predictors are given for the scaled predictors, if \code{original} the coefficients are to be used with the predictors on their original scale.}
  \item{\dots}{not used}
}
\value{An object of class \code{coef.plsRmodel}.\cr
   \item{CoeffC}{Coefficients of the components.}
   \item{Std.Coeffs}{Coefficients of the scaled predictors.}
   \item{Coeffs}{Coefficients of the untransformed predictors (on their original scale).}
}
%\references{}
\author{\enc{Frederic}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{coef}}}
\examples{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
modpls <- plsRglm(yCornell,XCornell,3,modele="pls")
class(modpls)
coef(modpls)
coef(modpls,type="scaled")
rm(list=c("XCornell","yCornell","modpls"))
}
\keyword{methods}
\keyword{coef}
