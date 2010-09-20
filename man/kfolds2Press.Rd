\name{kfolds2Press}
\alias{kfolds2Press}
\title{Computes PRESS for kfold cross validated partial least squares regression models.}
\description{This function computes PRESS for kfold cross validated partial least squares regression models.}
\usage{
kfolds2Press(pls_kfolds)
}
\arguments{
  \item{pls_kfolds}{a kfold cross validated partial least squares regression model}
}
%\details{}
\value{
  \item{list}{Press vs number of components for the first group partition}
  \item{\dots}{\dots}
  \item{list}{Press vs number of components for the last group partition}
}
\references{
Nicolas Meyer, Myriam Maumy-Bertrand et \enc{Fr�d�ric}{Fr\'ed\'eric} Bertrand (2010). Comparaison de la \enc{r�gression}{r\'egression} PLS et de la \enc{r�gression}{r\'egression} logistique PLS : application aux \enc{donn�es}{donn\'ees} \enc{d'all�lotypage}{d'all\'elotypage}. \emph{Journal de la Soci�t� Fran�aise de Statistique}, 151(2), pages 1-18.
\url{http://smf4.emath.fr/Publications/JSFdS/151_2/pdf/sfds_jsfds_151_2_1-18.pdf}
}
\author{\enc{Fr�d�ric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\note{Use \code{\link{PLS_lm_kfoldcv}} to create kfold cross validated partial least squares regression models.}
\seealso{\code{\link{kfolds2coeff}}, \code{\link{kfolds2Pressind}}, \code{\link{kfolds2Mclassedind}} and \code{\link{kfolds2Mclassed}} to extract and transforms results from kfold cross validation.}
\examples{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
bbb <- PLS_lm_kfoldcv(dataY=yCornell,dataX=data.frame(scale(as.matrix(XCornell))[,]),nt=6,K=12,NK=1)
bbb2 <- PLS_lm_kfoldcv(dataY=yCornell,dataX=data.frame(scale(as.matrix(XCornell))[,]),nt=6,K=6,NK=1)
kfolds2Press(bbb)
kfolds2Press(bbb2)
rm(list=c("XCornell","yCornell","bbb","bbb2"))


\donttest{
data(pine)
Xpine<-pine[,1:10]
ypine<-pine[,11]
bbb <- PLS_lm_kfoldcv(dataY=log(ypine),dataX=Xpine,nt=10,K=12,NK=1)
bbb2 <- PLS_lm_kfoldcv(dataY=log(ypine),dataX=Xpine,nt=10,K=6,NK=2)
bbb3 <- PLS_lm_kfoldcv(dataY=log(ypine),dataX=Xpine,nt=10,K=6,NK=2,random=TRUE)
kfolds2Press(bbb)
kfolds2Press(bbb2)
kfolds2Press(bbb3)

XpineNAX21 <- Xpine
XpineNAX21[1,2] <- NA
bbbNA <- PLS_lm_kfoldcv(dataY=log(ypine),dataX=XpineNAX21,nt=10,K=12,NK=1)
bbbNA2 <- PLS_lm_kfoldcv(dataY=log(ypine),dataX=XpineNAX21,nt=10,K=6,NK=2)
bbbNA3 <- PLS_lm_kfoldcv(dataY=log(ypine),dataX=XpineNAX21,nt=10,K=6,NK=2,random=TRUE)
kfolds2Press(bbbNA)
kfolds2Press(bbbNA2)
kfolds2Press(bbbNA3)
rm(list=c("Xpine","XpineNAX21","ypine","bbb","bbb2","bbb3","bbbNA","bbbNA2","bbbNA3"))
}
}
\keyword{models}
\keyword{regression}