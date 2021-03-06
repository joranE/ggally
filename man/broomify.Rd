% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggnostic.R
\name{broomify}
\alias{broomify}
\title{Broomify a model}
\usage{
broomify(model, lmStars = TRUE)
}
\arguments{
\item{model}{model to be sent to \code{broom::\link[broom]{augment}}, \code{broom::\link[broom]{glance}}, and \code{broom::\link[broom]{tidy}}}

\item{lmStars}{boolean that determines if stars are added to labels}
}
\value{
broom::augmented data frame with the broom::glance data.frame and broom::tidy data.frame as 'broom_glance' and 'broom_tidy' attributes respectively.  \code{var_x} and \code{var_y} variables are also added as attributes
}
\description{
broom::augment a model and add broom::glance and broom::tidy output as attributes. X and Y variables are also added.
}
\examples{
data(mtcars)
model <- stats::lm(mpg ~ wt + qsec + am, data = mtcars)
broomified_model <- broomify(model)
str(broomified_model)
}

