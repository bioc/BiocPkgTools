#' The Bioconductor datacite.org XML generator
#'
#' This function is used internally to generate XML elements from the
#' datacite.org website for incoming Bioconductor packages.
#'
#' @param pkg The name of a Bioconductor package
#'
#' @import xml2
#'
#' @return An xml_document object from the `xml2` package.
#'
#' @seealso \preformatted{?xml2::`xml_document-class`}
#'
#' @keywords internal
dataciteXMLGenerate <- function(pkg) {
    bioc_shoulder <- "doi:10.5072/FK2"
    bioc_doi_namespace <- ".bioc."
    pkg_doi <- paste0(bioc_shoulder,bioc_doi_namespace,pkg)
    x <- xml_new_root(
        'resource',
        xmlns="http://datacite.org/schema/kernel-3",
        `xmlns:xsi`="http://www.w3.org/2001/XMLSchema-instance",
        `xsi:schemaLocation`="http://datacite.org/schema/kernel-3 http://schema.datacite.org/meta/kernel-3/metadata.xsd"
    )
    xml_add_child(x,'identifier',identifierType='DOI',pkg_doi)
    descriptions <- xml_add_child(x,'descriptions')
    xml_add_child(descriptions,'description','this is the description')
    return(x)
}
