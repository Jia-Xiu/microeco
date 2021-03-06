% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/trans_abund.R
\name{plot_heatmap}
\alias{plot_heatmap}
\title{Plot the heatmap with the object of trans_abund Class.}
\format{
\code{\link{trans_abund}} object.
}
\usage{
plot_heatmap(
  use_colors = viridis::viridis(100, option = "D"),
  withmargin = TRUE,
  plot_numbers = FALSE,
  plot_text_size = 4,
  plot_breaks = NULL,
  margincolor = "white",
  plot_colorscale = "log10",
  min_abundance = 0.01,
  max_abundance = NULL,
  facet = NULL,
  order_facet = NULL,
  strip_text = 11,
  xtext_size = 10,
  ytext_size = 11,
  xtext_keep = TRUE,
  xtitle_keep = TRUE,
  grid_clean = TRUE,
  xtext_type_hor = TRUE,
  base_font = NULL
)
}
\arguments{
\item{use_colors}{default RColorBrewer::brewer.pal(12, "Paired"); providing the plotting colors.}

\item{withmargin}{default TRUE; whether retain the tile margin.}

\item{plot_numbers}{default FALSE; whether plot the number in heatmap.}

\item{plot_text_size}{default 4; If plot_numbers TRUE, text size in plot.}

\item{plot_breaks}{default NULL; The legend breaks.}

\item{margincolor}{default "white"; If withmargin TRUE, use this as the margin color.}

\item{plot_colorscale}{default "log10"; color scale.}

\item{min_abundance}{default .01; the minimum abundance percentage in plot.}

\item{max_abundance}{default NULL; the maximum abundance percentage in plot, NULL reprensent the max percentage.}

\item{facet}{default NULL; if using facet, providing the group name.}

\item{order_facet}{default NULL; if reorder facet, provide the vector.}

\item{strip_text}{default 11; facet text size.}

\item{xtext_size}{default 10; x axis text size.}

\item{ytext_size}{default 11; y axis text size.}

\item{xtext_keep}{default TRUE; whether retain x text.}

\item{xtitle_keep}{default TRUE; whether retain x title.}

\item{grid_clean}{default TRUE; whether remove grid lines.}

\item{xtext_type_hor}{default TRUE; x axis text horizontal, if FALSE; text slant.}

\item{base_font}{default NULL; font in the plot.}
}
\value{
ggplot2 plot.
}
\description{
Plot the heatmap with the object of trans_abund Class.
}
\examples{
t1$plot_heatmap(withmargin = FALSE)
}
