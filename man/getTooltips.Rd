% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tooltips.R
\name{getTooltips}
\alias{getTooltips}
\title{Get tooltips}
\usage{
getTooltips(
  plot,
  varDict,
  plotScales,
  g,
  callback,
  useJson = FALSE,
  addAttributes = FALSE
)
}
\arguments{
\item{plot}{A \link{ggplot} object.}

\item{varDict}{Variable dictionary in the following format:
\code{list(<variable> = <label>, ...)},
where \code{<variable>} is a valid name of a variable mapped
with \link{aes}, and \code{<label>} is a character string.
It defines the composition of information displayed in tooltips.}

\item{plotScales}{A list with two fields: x and y. Defines axis
scales (transformations) for the purpose of displaying original
values in tooltips. If NULL (default), values are displayed "as is".}

\item{g}{A gtable object compiled from the plot (see \link{arrangeGrob}).}

\item{callback}{Callback function for adding custom content to the tooltips
(see the example app).}

\item{useJson}{Logical parameter determining whether to use JSON format
when passing tooltip data to frontend.}

\item{addAttributes}{Logical parameter determining whether extra geom 
attributes should be add to tooltip object.}
}
\description{
Returns a list of tooltips for a ggplot, grouped by plot geometries
and layers.
Each element of the list is a data frame with HTML-formatted tooltip
contents (column `tooltip`) and coordinates relative to the size of
the image (`coordX` and `coordY`).
}
