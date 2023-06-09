% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_rootedge.R
\name{geom_rootedge}
\alias{geom_rootedge}
\title{geom_rootedge}
\usage{
geom_rootedge(rootedge = NULL, ...)
}
\arguments{
\item{rootedge}{length of rootedge; use phylo$root.edge if rootedge = NULL (default).}

\item{...}{additional parameters

Additional parameters can be referred to the following parameters:
\itemize{
\item \code{size} control the width of rootedge, defaults to 0.5.
\item \code{colour} color of rootedge, defaults to black.
\item \code{linetype} the type of line, defaults to 1.
\item \code{alpha} modify colour transparency, defaults to 1.
}}
}
\value{
ggtree rootedge layer
}
\description{
display root edge layer for a tree
}
\details{
\code{geom_rootedge} is used to create a rootedge as ggtree doesn’t plot the root edge by default.
}
\examples{

library(ggtree)
set.seed(123)
## with root edge = 1
tree1 <- read.tree(text='((A:1,B:2):3,C:2):1;')
ggtree(tree1) + geom_tiplab() + geom_rootedge()

## without root edge
tree2 <- read.tree(text='((A:1,B:2):3,C:2);')
ggtree(tree2) + geom_tiplab() + geom_rootedge()

## setting root edge
tree2$root.edge <- 2
ggtree(tree2) + geom_tiplab() + geom_rootedge()

## specify length of root edge for just plotting
## this will ignore tree$root.edge
ggtree(tree2) + geom_tiplab() + geom_rootedge(rootedge = 3)


## For more detailed demonstration of this function, please refer to chapter A.4.5 of 
## *Data Integration, Manipulation and Visualization of Phylogenetic Trees*
## <http://yulab-smu.top/treedata-book/index.html> by Guangchuang Yu.

}
\references{
\enumerate{
\item G Yu, DK Smith, H Zhu, Y Guan, TTY Lam (2017). ggtree: an R package for
visualization and annotation of phylogenetic trees with their covariates and
other associated data. Methods in Ecology and Evolution, 8(1):28-36.
\url{https://doi.org/10.1111/2041-210X.12628}
}
}
\author{
Guangchuang Yu
}
