% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/microtable.R
\name{microtable}
\alias{microtable}
\title{Create microtable object to store and manage all the basic files.}
\format{
microtable.
}
\value{
an object of class "microtable" with the following components:
\describe{
  \item{\code{sample_table}}{The sample information table.}
  \item{\code{otu_table}}{The OTU table.}
  \item{\code{tax_table}}{The taxonomic table.}
  \item{\code{phylo_tree}}{The phylogenetic tree}
  \item{\code{taxa_abund}}{default NULL; use \code{\link{cal_abund}} function to calculate}
  \item{\code{alpha_diversity}}{default NULL; use \code{\link{cal_alphadiv}} function to calculate}
  \item{\code{beta_diversity}}{default NULL; use \code{\link{cal_betadiv}} function to calculate}
}
}
\description{
This class is a wrapper for a series of operations on the original files and the basic manipulations.
The functions in this class include \code{\link{tidy_dataset}}, \code{\link{filter_pollution}}, \code{\link{rarefy_samples}}, 
\code{\link{cal_abund}}, \code{\link{save_abund}},
\code{\link{merge_samples}}, \code{\link{merge_taxa}}, \code{\link{cal_alphadiv}}, \code{\link{save_alphadiv}},
\code{\link{cal_betadiv}}, \code{\link{save_betadiv}}, \code{\link{sample_sums}}, \code{\link{taxa_sums}}, \code{\link{sample_names}}, \code{\link{taxa_names}}
}
\examples{
data(otu_table)
data(taxonomy_table)
data(sample_info)
data(phylo_tree)
dataset <- microtable$new(sample_table = sample_info, otu_table = otu_table, tax_table = taxonomy_table, phylo_tree = phylo_tree)
# trim the dataset
dataset$tidy_dataset()
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{microtable$new()}}
\item \href{#method-print}{\code{microtable$print()}}
\item \href{#method-filter_pollution}{\code{microtable$filter_pollution()}}
\item \href{#method-rarefy_samples}{\code{microtable$rarefy_samples()}}
\item \href{#method-tidy_dataset}{\code{microtable$tidy_dataset()}}
\item \href{#method-cal_abund}{\code{microtable$cal_abund()}}
\item \href{#method-save_abund}{\code{microtable$save_abund()}}
\item \href{#method-sample_sums}{\code{microtable$sample_sums()}}
\item \href{#method-taxa_sums}{\code{microtable$taxa_sums()}}
\item \href{#method-sample_names}{\code{microtable$sample_names()}}
\item \href{#method-taxa_names}{\code{microtable$taxa_names()}}
\item \href{#method-merge_samples}{\code{microtable$merge_samples()}}
\item \href{#method-merge_taxa}{\code{microtable$merge_taxa()}}
\item \href{#method-cal_alphadiv}{\code{microtable$cal_alphadiv()}}
\item \href{#method-save_alphadiv}{\code{microtable$save_alphadiv()}}
\item \href{#method-cal_betadiv}{\code{microtable$cal_betadiv()}}
\item \href{#method-save_betadiv}{\code{microtable$save_betadiv()}}
\item \href{#method-clone}{\code{microtable$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$new(
  otu_table = NULL,
  sample_table = NULL,
  tax_table = NULL,
  phylo_tree = NULL,
  taxa_abund = NULL,
  alpha_diversity = NULL,
  beta_diversity = NULL
)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{otu_table}}{data.frame; The species or OTU table, rows are species, cols are samples.}

\item{\code{sample_table}}{data.frame; The sample information table, rows are samples, cols are information types.}

\item{\code{tax_table}}{data.frame; The taxonomic information table, rows are species, cols are taxonomic classes.}

\item{\code{phylo_tree}}{phylo; The phylogenetic tree.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-print"></a>}}
\if{latex}{\out{\hypertarget{method-print}{}}}
\subsection{Method \code{print()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$print(...)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-filter_pollution"></a>}}
\if{latex}{\out{\hypertarget{method-filter_pollution}{}}}
\subsection{Method \code{filter_pollution()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$filter_pollution(taxa = c("mitochondria", "chloroplast"))}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-rarefy_samples"></a>}}
\if{latex}{\out{\hypertarget{method-rarefy_samples}{}}}
\subsection{Method \code{rarefy_samples()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$rarefy_samples(sample.size = NULL, rngseed = 123, replace = TRUE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-tidy_dataset"></a>}}
\if{latex}{\out{\hypertarget{method-tidy_dataset}{}}}
\subsection{Method \code{tidy_dataset()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$tidy_dataset(main_data = TRUE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_abund"></a>}}
\if{latex}{\out{\hypertarget{method-cal_abund}{}}}
\subsection{Method \code{cal_abund()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$cal_abund()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-save_abund"></a>}}
\if{latex}{\out{\hypertarget{method-save_abund}{}}}
\subsection{Method \code{save_abund()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$save_abund(dirpath = "taxa_abund")}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-sample_sums"></a>}}
\if{latex}{\out{\hypertarget{method-sample_sums}{}}}
\subsection{Method \code{sample_sums()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$sample_sums()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-taxa_sums"></a>}}
\if{latex}{\out{\hypertarget{method-taxa_sums}{}}}
\subsection{Method \code{taxa_sums()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$taxa_sums()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-sample_names"></a>}}
\if{latex}{\out{\hypertarget{method-sample_names}{}}}
\subsection{Method \code{sample_names()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$sample_names()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-taxa_names"></a>}}
\if{latex}{\out{\hypertarget{method-taxa_names}{}}}
\subsection{Method \code{taxa_names()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$taxa_names()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-merge_samples"></a>}}
\if{latex}{\out{\hypertarget{method-merge_samples}{}}}
\subsection{Method \code{merge_samples()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$merge_samples(use_group)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-merge_taxa"></a>}}
\if{latex}{\out{\hypertarget{method-merge_taxa}{}}}
\subsection{Method \code{merge_taxa()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$merge_taxa(taxa = "Genus")}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_alphadiv"></a>}}
\if{latex}{\out{\hypertarget{method-cal_alphadiv}{}}}
\subsection{Method \code{cal_alphadiv()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$cal_alphadiv(measures = NULL, PD = FALSE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-save_alphadiv"></a>}}
\if{latex}{\out{\hypertarget{method-save_alphadiv}{}}}
\subsection{Method \code{save_alphadiv()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$save_alphadiv(dirpath = "alpha_diversity")}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-cal_betadiv"></a>}}
\if{latex}{\out{\hypertarget{method-cal_betadiv}{}}}
\subsection{Method \code{cal_betadiv()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$cal_betadiv(unifrac = FALSE)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-save_betadiv"></a>}}
\if{latex}{\out{\hypertarget{method-save_betadiv}{}}}
\subsection{Method \code{save_betadiv()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$save_betadiv(dirpath = "beta_diversity")}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{microtable$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
