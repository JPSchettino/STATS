
H0freq <- function(x){
  x1<-apply(x,1,sum)
  x2<-apply(x,2,sum)
  xx<-rep(x1,each=length(x1))
  yy<-rep(x2,length(x2))
  H0<-(xx*yy)/sum(x)
  return(matrix(H0,nrow=length(x1),byrow = TRUE))


}
H0Prob<-function(x){
  x1<-apply(x,1,sum)
  x2<-apply(x,2,sum)
  xx<-rep(x1,each=length(x1))
  yy<-rep(x2,length(x2))
  H0<-(xx*yy)/sum(x)
  mat<-matrix(H0,nrow=length(x1),byrow = TRUE)
  return(mat/sum(mat))


}
Obprob<-function(x){
  return(x/sum(x))

}
X2<-function(x){
  return(sum(((x-H0freq(x))^2)/H0freq(x)))

}
df<-function(x){
  return((ncol(x)-1)*(nrow(x)-1))
}
X2q<-function(x,alpha){
  return(qchisq((1-alpha/2),(df(x))))

}
res<-function(x){
  ress<-((x-H0freq(x))/sqrt(H0freq(x)))
  return(ress)
}
stdres<-function(x){
  stress<- ((x-H0freq(x))/sqrt(H0freq(x)*(1-(rbind(apply(x,2,sum),apply(x,2,sum),apply(x,2,sum)))/sum(x))*((1-(cbind(apply(x,1,sum),apply(x,1,sum),apply(x,1,sum)))/sum(x)))))
  return(stress)
}
chisq2P <- function(x, alpha=0.05){
x2<-X2(x)
x2q<-X2q(x,alpha)
    if(x2>x2q)
    {
       print("A hipotese de independencia pode ser rejeitada")
    }
   else
    {
     print("Não se pode rejeitar a hipotese de independencia")
    }
H0F<-H0freq(x)
H0P<-H0Prob(x)

    lista<-list(X2 = x2,X2qunilateral= x2q,df = df(x),alpha = alpha,ExpectedFreq = H0F,ExpectedProb = H0P,ObservedFreq = x,ObservedProb = Obprob(x),residual = res(x),stdresidual = stdres(x),gthreshold = qnorm(1-(alpha/length(x)*2)), uthreshold=qnorm(1-alpha/2))
  return(lista)
}
