% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update.R
\name{update_metadata}
\alias{update_metadata}
\title{Update the project metadata}
\usage{
update_metadata(ask = TRUE)
}
\arguments{
\item{ask}{Logical, indicating whether or not the user would be asked at the
command line whether or not to proceed. Defaults to \code{TRUE}.}
}
\description{
Safely updates existing project metadata to be compatible with
\code{\link[=projects-package]{projects}} 1.X.X.
}
\details{
Prior to \code{\link[=projects-package]{projects}} 1.X.X, the \code{stage},
\code{current_owner}, \code{corresp_auth}, and \code{creator} columns of the
\code{\link{projects}()} table were different.

The \code{stage} column was a \link{factor}, and users had to type stage
names exactly, down to the integer, colon, and space. Now, this column is of
class \code{\link{projects_stage-class}}.

The latter three columns were integers corresponding to \code{id}s in the
\code{\link{authors}()} table, so users would have to query that table if
they did not remember which author was denoted by the integer \code{id}.
}
\seealso{
\code{\link{projects_stage-class}};
  \code{\link{projects_author-class}}.
}
