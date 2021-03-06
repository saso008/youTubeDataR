% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_activities.R
\name{getActivities}
\alias{getActivities}
\title{getActivities}
\usage{
getActivities(token, channel.id, mine = FALSE, home = FALSE,
  part = "snippet", n = 50, max.results = 50,
  published.before = Sys.time(), published.after = NULL,
  region.code = NULL, verbose = FALSE)
}
\arguments{
\item{token}{Your token as returned by \code{\link{youOAuth}}.}

\item{channel.id}{Indicates that the API response should only contain resources created by 
the channel.}

\item{mine}{Set this parameter's value to true to retrieve a feed of the authenticated 
user's activities. The default value is \code{FALSE}.}

\item{home}{Set this parameter's value to true to retrieve the activity feed that 
displays on the YouTube home page for the currently authenticated user. 
The default value is \code{FALSE}.}

\item{part}{The part parameter specifies a comma-separated list of one or more activity 
resource properties that the API response will include. The default value 
is \code{snippet}, can take any of \code{contentDetails}, \code{id} or 
\code{snippet}. See \code{link{findParts}}.}

\item{n}{Number of results to fecth. The default value is \code{50}.}

\item{max.results}{Specifies the maximum number of results that should be returned 
by each API call. Acceptable values are \code{0} to \code{50}, inclusive. 
The default value is \code{50}.}

\item{published.before}{Indicates that the API response should only contain resources created 
before the specified time. Can be either of class \code{Date} ("%Y-%m-%d") 
or \code{POSIXct} or \code{POSIXlt} with time, or an RFC 3339 formatted 
date-time value (i.e.: \code{1970-01-01T00:00:00Z}). 
The default value is \code{Sys.time()}.}

\item{published.after}{Indicates that the API response should only contain resources created after 
the specified time. Can be either of class \code{Date} ("%Y-%m-%d") 
or \code{POSIXct} or \code{POSIXlt} with time, or an RFC 3339 formatted 
date-time value (i.e.: \code{1970-01-01T00:00:00Z}). 
The default value is \code{NULL}.}

\item{region.code}{Instructs the API to return search results for the specified country. The 
parameter value is an 
\href{http://www.iso.org/iso/country_codes/iso_3166_code_lists/country_names_and_code_elements.htm}{ISO 3166-1 alpha-2} 
country code. The default value is \code{NULL}. 
See \code{\link{getRegions}}}

\item{verbose}{If \code{TRUE} prints infromational messages in the console. 
The default value is \code{FALSE}.}
}
\description{
Returns a list of caption tracks matching a specific critera.
}
\details{
MUST specify one of \code{channel.id} OR \code{mine} OR 
\code{home}.
}
\examples{
\dontrun{
# Authenticate
token <- youOAuth(client.id = "something.apps.googleusercontent.com",
                  client.secret = "XxxXX1XxXxXxxx1xxx1xxXXX")
                  
# search channels about cats
search <- searchTube(token, query = "cats", type = "channel")

# pick random channel id
set.seed(19880525)
chan <- sample(search$channelId, 1)

# fetch data
act <- getActivities(token, channel.id = chan)
}

}
\author{
John Coene \email{jcoenep@hotmail.com}
}
\seealso{
\code{\link{youOAuth}}, \code{\link{findParts}}
}

