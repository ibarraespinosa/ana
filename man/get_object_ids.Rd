% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_object_ids.R
\name{get_object_ids}
\alias{get_object_ids}
\title{get layer info}
\usage{
get_object_ids(
  url = paste0("http://portal1.snirh.gov.br/ana/",
    "rest/services/Esta\%C3\%A7\%C3\%B5es_da_", "Rede_Hidrometeorol\%C3\%B3gica_Nacional",
    "_em_Opera\%C3\%A7\%C3\%A3o/MapServer/1"),
  query_url = paste(url, "query", sep = "/"),
  where = "1=1",
  token = "",
  ssl = FALSE,
  full = FALSE
)
}
\arguments{
\item{url}{Character .}

\item{query_url}{Character.}

\item{where}{Character.}

\item{token}{Character.}

\item{ssl}{Logical, default = FALSE.}
}
\description{
get layer info.
}
\examples{
\dontrun{
# do not run
a <- get_object_ids()
head(a)
a <- get_object_ids(full = T)
names(a)
a$objectIds
}
}
\seealso{
\code{\link{layer_info}}
}
