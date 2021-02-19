---
title: "README"
output: html_document
---
# to install


```{r eval=FALSE, include=FALSE}
devtools::install_github("JoaoPedrojs/STATS")
```

# usage

```{r}
mat<-matrix(c(1,5,8,9,10,25,1,2,39),ncol=3)
STATS::chisq2P(mat)
```

