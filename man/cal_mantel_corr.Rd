% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trans_nullmodel.R
\name{cal_mantel_corr}
\alias{cal_mantel_corr}
\title{Calculate mantel correlogram.}
\usage{
cal_mantel_corr(
  use_env = NULL,
  break.pts = seq(0, 1, 0.02),
  cutoff = FALSE,
  ...
)
}
\arguments{
\item{use_env}{default NULL; numeric or character vector to select env_data; if provide multiple variables or NULL, use PCA to reduce dimensionality.}

\item{break.pts}{default seq(0, 1, 0.02); see \code{\link{mantel.correlog}}}

\item{cutoff}{default FALSE; see cutoff in \code{\link{mantel.correlog}}}

\item{...}{parameters pass to \code{\link{mantel.correlog}}}
}
\value{
res_mantel_corr in object.
}
\description{
Calculate mantel correlogram.
}
\examples{
t1$cal_mantel_corr(use_env = "pH")
}
