\name{summary.plsRmodel}
\alias{summary.plsRmodel}
\title{Summary method for plsR models}
\description{
This function provides a summary method for the class \code{"plsRmodel"}
}
\usage{
\method{summary}{plsRmodel}(object, \dots)
}
\arguments{
  \item{object}{an object of the class \code{"plsRmodel"}}
  \item{\dots}{further arguments to be passed to or from methods.}  
}
%\details{}
\value{
  \item{call }{function call of plsRglmmodel}
}
\references{
Nicolas Meyer, Myriam Maumy-Bertrand et \enc{Fr�d�ric}{Fr\'ed\'eric} Bertrand (2010). Comparaison de la \enc{r�gression}{r\'egression} PLS et de la \enc{r�gression}{r\'egression} logistique PLS : application aux \enc{donn�es}{donn\'ees} \enc{d'all�lotypage}{d'all\'elotypage}. \emph{Journal de la Soci�t� Fran�aise de Statistique}, 151(2), pages 1-18.
\url{http://smf4.emath.fr/Publications/JSFdS/151_2/pdf/sfds_jsfds_151_2_1-18.pdf}
}
\author{\enc{Fr�d�ric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{summary}}}
\examples{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
modpls <- plsR(yCornell,XCornell,4)
class(modpls)
summary(modpls)
rm(list=c("XCornell","yCornell","modpls"))
}
\keyword{methods}
\keyword{print}