% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/2-generate_milestone_network.R
\name{generate_milestone_network}
\alias{generate_milestone_network}
\title{Generate a toy milestone network}
\usage{
generate_milestone_network(model = c("linear", "cyclic", "bifurcating",
  "multifurcating", "binary_tree", "tree", "converging",
  "diverging_converging", "diverging_with_loops", "looping", "connected",
  "disconnected"), ...)
}
\arguments{
\item{model}{A model for generating the milestone network. Must be one of:
\itemize{
  \item{a character vector (e.g. \code{"linear"}),}
  \item{a function (e.g. \code{model_linear}),}
  \item{a data frame (e.g. \code{model_linear()})}
}}

\item{...}{Parameters to pass to other models. Can be in the form of `linear = list(num_milestones = function() sample(2:8, 1)` or just `num_milestones = 10`.}
}
\description{
Generate a toy milestone network
}
