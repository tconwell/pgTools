% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pgTools.R
\name{sqlNameWalk}
\alias{sqlNameWalk}
\title{Convert a column name into a PostgreSQL compatible name.}
\usage{
sqlNameWalk(x, double_quote = FALSE)
}
\arguments{
\item{x}{A string, a column name.}

\item{double_quote}{TRUE/FALSE, if true, will add double quotes rather than replace non-compatible characters with underscores.}
}
\value{
A string, a PostgreSQL compatible column name.
}
\description{
Convert a column name into a PostgreSQL compatible name.
}
\examples{
sqlNameWalk("column 100 - sample b")
}
