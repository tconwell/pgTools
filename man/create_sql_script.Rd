% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pgTools.R
\name{create_sql_script}
\alias{create_sql_script}
\title{Create a SQL script, optionally execute the statement if con is not NULL.}
\usage{
create_sql_script(..., path = NULL, con = NULL)
}
\arguments{
\item{...}{A string, SQL command to be combined into one document or statement.}

\item{path}{A string, the file path (include the file name) to save the script.}

\item{con}{A database connection that can be passed to DBI::dbSendQuery/DBI::dbGetQuery.}
}
\value{
A string, SQL commands combined into one document or statement; or the results retrieved by DBI::dbSendQuery after executing the statement.
}
\description{
Create a SQL script, optionally execute the statement if con is not NULL.
}
\examples{
create_sql_script(
createSCHEMA("dev"),
sql_80_char_comment(),
createTABLE(name = "sample",
columns = list(col1 = "SERIAL NOT NULL", col2 = "INTEGER", col3 = "TEXT"),
constraints = list(sample_constraint = "UNIQUE(col3)")
))
}
