% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/biocRevDepEmail.R
\name{biocRevDepEmail}
\alias{biocRevDepEmail}
\title{Notify downstream maintainers of changes in upstream packages}
\usage{
biocRevDepEmail(
  packages,
  which = c("strong", "most", "all"),
  PS = character(1L),
  version = BiocManager::version(),
  dry.run = TRUE,
  cc = NULL,
  emailTemplate = templatePath("revdepnote"),
  core.name = NULL,
  core.email = NULL,
  core.id = NULL,
  textOnly = FALSE,
  verbose = FALSE,
  credFile = "~/.blastula_creds",
  ...,
  pkg
)
}
\arguments{
\item{packages}{\code{character()} A vector of CRAN and/or Bioconductor packages
for whose reverse dependencies are to be checked and notified.}

\item{which}{a character vector listing the types of
    dependencies, a subset of
    \code{c("Depends", "Imports", "LinkingTo", "Suggests", "Enhances")}.
    Character string \code{"all"} is shorthand for that vector,
    character string \code{"most"} for the same vector without
    \code{"Enhances"},
    character string \code{"strong"} (default) for the first three
    elements of that vector.
  }

\item{PS}{character(1) Postscript, an additional note to the recipient of
the email (i.e., the package maintainer)}

\item{version}{character() A vector indicating which version of Bioconductor
the package is failing in (either 'release' or 'devel'; defaults to both)}

\item{dry.run}{logical(1) Display the email without sending to the recipient.
It only works for HTML email reports and ignored when \code{textOnly=TRUE}}

\item{cc}{character() A vector of email addresses for sending the message
as a carbon copy.}

\item{emailTemplate}{character(1) The path to the email template Rmd file as
obtained by \code{templatePath()}. A custom template can be provided as file
path.}

\item{core.name}{character(1) The full name of the core team member}

\item{core.email}{character(1) The Roswell Park email of the core team
member}

\item{core.id}{character(1) The internal identifier for the Roswell employee.
This ID usually matches \verb{^[A-Z]\{2\}[0-9]\{5\}} for more recent identifiers.}

\item{textOnly}{logical(1) Whether to return the text of the email only.
This avoids the use of the 'blastula' package and adds the text to the
system clipboard if the \code{clipr} package is installed (default: FALSE)}

\item{verbose}{logical(1) Whether to output full email information from
'smtp_send' (when \code{dry.run} is \code{FALSE} and 'blastula' is installed)}

\item{credFile}{character(1) An optional file generated by the
\code{blastula::create_smtp_creds_file} function containing email
authentication information (default: "~/.blastula_creds"). See
\code{?biocBuildEmail} details.}

\item{pkg}{\code{character(1)} DEPRECATED. The name of a single package whose
reverse dependencies are to be checked and notified.}

\item{\ldots}{Additional inputs to internal functions (not used).}
}
\description{
The \code{biocRevDepEmail} function collects all the emails of the reverse
dependencies and sends a notification that upstream package(s) have been
deprecated or removed. It uses a template found in \code{inst/resources} with the
\code{templatePath()} function.
}
\examples{

biocRevDepEmail(
    "FindMyFriends", version = "3.13", dry.run = TRUE, textOnly = TRUE
)

}
