% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trans_network.R
\name{cal_sum_links}
\alias{cal_sum_links}
\title{Sum the linkages among taxa.}
\usage{
cal_sum_links(taxa_level = "Phylum")
}
\arguments{
\item{taxa_level}{default "Phylum"; taxonomic rank.}
}
\value{
res_sum_links_pos or res_sum_links_neg in object.
}
\description{
Sum the linkages among taxa.
}
\examples{
t1$cal_sum_links(taxa_level = "Phylum")
}
