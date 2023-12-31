% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/newBiocPkgDOI.R
\name{generateBiocPkgDOI}
\alias{generateBiocPkgDOI}
\title{Generate a DOI for a Bioconductor package}
\usage{
generateBiocPkgDOI(pkg, authors, pubyear, event = "publish", testing = TRUE)
}
\arguments{
\item{pkg}{character(1) package name}

\item{authors}{character vector of authors (will be "pasted" together)}

\item{pubyear}{integer(1) publication year}

\item{event}{Either "hide", "register", or publish". Typically, we use
"publish" to make the DOI findable.}

\item{testing}{logical(1) If true, will use the apitest
user with the password apitest. These DOIs will expire.
The same apitest:apitest combination can be used to
login to the website for doing things using the
web interface. If false, the Bioconductor-specific
user credentials should be in the correct environment
variables}
}
\value{
The DOI as a character(1) vector.
}
\description{
This function makes calls out to the DataCite REST API described
here: \url{https://support.datacite.org/docs/api-create-dois}. The
function creates a new DOI for a Bioconductor package (cannot already
exist). The target URL for the DOI is the short Bioconductor
package URL.
}
\details{
The login information for the "real" Bioconductor account
should be stored in the environment variables "DATACITE_USERNAME"
and "DATACITE_PASSWORD

The GUI is available here: \url{https://doi.datacite.org/}.
}
\examples{
\dontrun{
  x = generateBiocPkgDOI('RANDOM_TEST_PACKAGE','Sean Davis',1972)
}
}
\keyword{Internal}
