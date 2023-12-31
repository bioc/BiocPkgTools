% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biocBuildEmail.R
\name{templatePath}
\alias{templatePath}
\title{Obtain the location of available email templates}
\usage{
templatePath(
  type = c("buildemail", "deprecation", "deprecguide", "cranreport", "revdepnote")
)
}
\arguments{
\item{type}{character(1) Either one of "buildemail", "deprecation",
"deprecguide", "cranreport", or "revdepnote". See the templates in the
\code{resources} folder.}
}
\description{
These templates are used with \code{biocBuildEmail} to notify maintainers
regarding package errors and final deprecation warning.
}
