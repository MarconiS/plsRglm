\name{cvtable}
\alias{cvtable}
\alias{cvtable.plsR}
\alias{cvtable.plsRglm}
\title{Table method for summary of cross validated PLSR and PLSGLR models}
\description{
The function \code{cvtable} is wrapper of \code{cvtable.plsR} and \code{cvtable.plsRglm} that provides a table summary for the classes \code{"summary.cv.plsRmodel"} and \code{"summary.cv.plsRglmmodel"}
}
\usage{
cvtable.plsR(x,verbose=TRUE, \dots)
cvtable.plsRglm(x,verbose=TRUE, \dots)
}
\arguments{
  \item{x}{an object of the class \code{"summary.cv.plsRmodel"}}
  \item{verbose}{should results be displayed ?}
  \item{\dots}{further arguments to be passed to or from methods.}  
}
%\details{}
\value{
  \code{list}List of Information Criteria computed for each fold.
}
\references{
Nicolas Meyer, Myriam Maumy-Bertrand et \enc{Frederic}{Fr\'ed\'eric} Bertrand (2010). Comparing the linear and the logistic PLS regression with qualitative predictors: application to allelotyping data. \emph{Journal de la Societe Francaise de Statistique}, 151(2), pages 1-18.
\url{http://smf4.emath.fr/Publications/JSFdS/151_2/pdf/sfds_jsfds_151_2_1-18.pdf}
}
\author{\enc{Frederic}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{summary}}}
\examples{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
cv.modpls <- cv.plsR(dataY=yCornell,dataX=XCornell,nt=6,K=6,NK=100)
res.cv.modpls <- cvtable(summary(cv.modpls))
plot(res.cv.modpls) #defaults to type="CVQ2"
rm(list=c("XCornell","yCornell","cv.modpls","res.cv.modpls"))

\donttest{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
cv.modplsglm <- cv.plsRglm(dataY=yCornell,dataX=XCornell,nt=6,K=6,
modele="pls-glm-gaussian",NK=100)
res.cv.modplsglm <- cvtable(summary(cv.modplsglm))
plot(res.cv.modplsglm) #defaults to type="CVQ2Chi2"
rm(list=c("XCornell","yCornell","res.cv.modplsglm"))
}
}
\keyword{methods}
\keyword{print}
