% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pgTools.R
\name{createTABLE}
\alias{createTABLE}
\title{Generate a PostgreSQL CREATE TABLE statement, optionally execute the statement if con is not NULL.}
\usage{
createTABLE(
  name,
  columns,
  select = NULL,
  constraints = NULL,
  temporary = FALSE,
  if_not_exists = FALSE,
  unlogged = FALSE,
  con = NULL
)
}
\arguments{
\item{name}{A string, the "table_name" parameter for PostgreSQL CREATE TABLE.}

\item{columns}{A named list, names are the SQL column names, values are strings with the SQL column data types, constraints, etc.}

\item{select}{A string, the select statement to use to create the table.}

\item{constraints}{A named list, names are the SQL constraint names, values are strings with the SQL constraint.}

\item{temporary}{TRUE/FALSE, if TRUE, adds "TEMPORARY" to PostgreSQL CREATE TABLE statement.}

\item{if_not_exists}{TRUE/FALSE, if TRUE, adds "IF NOT EXISTS" to PostgreSQL CREATE TABLE statement.}

\item{unlogged}{TRUE/FALSE, if TRUE, adds "UNLOGGED" to PostgreSQL CREATE TABLE statement.}

\item{con}{A database connection that can be passed to DBI::dbSendQuery/DBI::dbGetQuery.}
}
\value{
A string, PostgreSQL CREATE TABLE statement; or the results retrieved by DBI::dbSendQuery after executing the statement.
}
\description{
Generate a PostgreSQL CREATE TABLE statement, optionally execute the statement if con is not NULL.
}
\examples{
createTABLE(
name = "sample",
columns = list(col1 = "SERIAL NOT NULL", col2 = "INTEGER", col3 = "TEXT"),
constraints = list(sample_constraint = "UNIQUE(col3)")
)
}
