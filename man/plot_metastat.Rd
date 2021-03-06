% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trans_diff.R
\name{plot_metastat}
\alias{plot_metastat}
\title{Bar plot metastat.}
\usage{
plot_metastat(
  use_number = 1:10,
  qvalue = 0.05,
  choose_group = 1,
  color_values = RColorBrewer::brewer.pal(8, "Dark2")
)
}
\arguments{
\item{use_number}{default 1:10; vector, the taxa numbers used in the plot, 1:n.}

\item{qvalue}{default .05; numeric value as the threshold of q value.}

\item{choose_group}{default 1; which column in res_metastat_group_matrix will be used.}

\item{color_values}{colors for presentation.}
}
\value{
ggplot.
}
\description{
Bar plot metastat.
}
\examples{
t1$plot_metastat(use_number = 1:10, qvalue = 0.05, choose_group = 1)
}
