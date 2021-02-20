


Many parametric models, possessing different characteristics, shapes, and properties, have been proposed in the literature. These models are commonly used
to develop parametric inferential methods. The inference developed and conclusions drawn based on these methods, however, will critically depend on the
specific parametric model assumed for the analysis of the observed data. For
this reason, several model validation techniques and goodness of fit tests have
been developed over the years.
The oldest and perhaps the most commonly used one among these is the
chi-squared goodness of fit test proposed by Karl Pearson over a century ago.
Since then, many modifications, extensions, and generalizations of this methodology have been discussed in the statistical literature. Yet, there are some
misconceptions and misunderstandings in the use of this method even at the
present time.(V.Voinov,M.Nikulin,N.Balakrishnan,2013)


The STATS package aims to provide the data scientist with the most varied methods for parametric inference developed over time.In addition to keeping its functions the most up to date in academic terms.












# To install


```{r eval=FALSE, include=FALSE}
devtools::install_github("JoaoPedrojs/STATS")
```

# Usage

```{r}
mat<-matrix(c(1,5,8,9,10,25,1,2,39),ncol=3)
STATS::chisq2P(mat)
```

