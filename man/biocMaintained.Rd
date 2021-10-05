% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biocMaintained.R
\name{biocMaintained}
\alias{biocMaintained}
\title{Bioconductor Maintained Packages}
\usage{
biocMaintained(
  version = BiocManager::version(),
  main = "maintainer@bioconductor\\\\.org"
)
}
\arguments{
\item{version}{character(1) the version number
as used to access the online build report. For
example, "3.6". The default is the "current version"
as specified in \code{BiocManager::version}. Note
that this is a character() variable, not a number.}

\item{main}{character(1) The regex for searching through the Maintainer
column as obtained from \code{biocPkgList()}.}
}
\description{
List all the packages associated with a maintainer. By default, it will
return all packages associated with the \code{maintainer@bioconductor.org} email.
}
\examples{

biocMaintained()

}