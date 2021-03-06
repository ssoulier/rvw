% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dt2vw.R
\name{dt2vw}
\alias{dt2vw}
\title{Create a vw data file from a R data.frame object}
\usage{
dt2vw(data, fileName, namespaces = NULL, target, weight = NULL,
  tag = NULL, hard_parse = FALSE, append = FALSE)
}
\arguments{
\item{data}{[data.table] data.table format (to be transformed)}

\item{fileName}{[string] file name of the resulting data in
VW-friendly format}

\item{namespaces}{[list / yaml file] name of each namespace and
each variable for each namespace can be a R list, or a YAML
file example namespace with the IRIS database: namespaces =
list(sepal = list(varName = c('Sepal.Length', 'Sepal.Width'),
keepSpace=F), petal = list(varName = c('Petal.Length',
'Petal.Width'), keepSpace=F)) this creates 2 namespaces (sepal
and petal) containing the variables defined by varName.
keepSpace allows to keep or remove spaces in categorical
variables example: "FERRARI 4Si" ==> "FERRARI_4Si" with
keepSpace = F ==> "FERRARI 4Si" with keepSpace = T (interpreted
by VW as two distinct categorical variables)}

\item{target}{[string] target of the data (target)}

\item{weight}{[string] weight of each line of the dataset
(importance)}

\item{tag}{[string] tag of each line of the dataset}

\item{hard_parse}{[bool] if equals true, parses the data more
strictly to avoid feeding VW with false categorical variables
like '_', or same variables perceived differently like "_var"
and "var"}

\item{append}{[bool] data to be appended to result file}
}
\description{
Create a vw data file from a R data.frame object
}

