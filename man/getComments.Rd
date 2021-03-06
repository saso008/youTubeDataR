% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_comments.R
\name{getComments}
\alias{getComments}
\title{getComments}
\usage{
getComments(token, part = "snippet", n = 50, max.results = 50, id,
  parent.id, text.format = "html", verbose = FALSE)
}
\arguments{
\item{token}{Your token as returned by \code{\link{youOAuth}}.}

\item{part}{The part parameter specifies a comma-separated list of one or more activity 
resource properties that the API response will include. The default value 
is \code{snippet}, can take any of \code{snippet} or \code{id}. 
See \code{\link{findParts}}.}

\item{n}{Number of results to fecth. The default value is \code{50}.}

\item{max.results}{Specifies the maximum number of results that should be returned 
by each API call. Acceptable values are \code{0} to \code{50}, inclusive. 
The default value is \code{50}.}

\item{id}{Specifies a comma-separated list of comment IDs for the resources that are 
being retrieved. In a comment resource, specifies the 
comment's ID.}

\item{parent.id}{Specifies the ID of the comment for which replies should be retrieved. Note: 
YouTube currently supports replies only for top-level comments. However, 
replies to replies may be supported in the future.}

\item{text.format}{Indicates whether the API should return comments formatted as HTML 
or as plain text. The default value is \code{html}.}

\item{verbose}{If \code{TRUE} prints infromational messages in the console. 
The default value is \code{FALSE}.}
}
\description{
Returns a list of comments that match the API request 
parameters.
}
\details{
Must specify one (and only one) of \code{id} or 
\code{parent.id}.
}
\examples{
\dontrun{
# Authenticate
token <- youOAuth(client.id = "something.apps.googleusercontent.com",
                  client.secret = "XxxXX1XxXxXxxx1xxx1xxXXX")
}

}
\author{
John Coene \email{jcoenep@hotmail.com}
}

