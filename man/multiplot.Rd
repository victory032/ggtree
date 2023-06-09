% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multiplot.R
\name{multiplot}
\alias{multiplot}
\title{multiplot}
\usage{
multiplot(
  ...,
  plotlist = NULL,
  ncol,
  widths = rep_len(1, ncol),
  labels = NULL,
  label_size = 5
)
}
\arguments{
\item{...}{plots}

\item{plotlist}{plot list}

\item{ncol}{set the number of column to display the plots}

\item{widths}{the width of each plot}

\item{labels}{set labels for labeling the plots}

\item{label_size}{set font size of the label}
}
\value{
plot
}
\description{
plot multiple ggplot objects in one page
}
\author{
Guangchuang Yu
}
