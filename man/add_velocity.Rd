% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/6-generate_velocity.R
\name{add_velocity}
\alias{add_velocity}
\title{Add projected expression to a directed trajectory}
\usage{
add_velocity(trajectory, expected_geodesic_difference = 0.2,
  velocity_rescale = 0.5)
}
\arguments{
\item{trajectory}{The trajectory}

\item{expected_geodesic_difference}{How far in the future the velocity goes}

\item{velocity_rescale}{The length of the velocity vector relative to the geodesic distance}
}
\description{
Add projected expression to a directed trajectory
}
