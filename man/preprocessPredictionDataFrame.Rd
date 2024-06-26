% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{preprocessPredictionDataFrame}
\alias{preprocessPredictionDataFrame}
\title{Preprocess a dataframe of covariate values, converting categorical variables
to integers and one-hot encoding if need be.}
\usage{
preprocessPredictionDataFrame(input_df, metadata)
}
\arguments{
\item{input_df}{Dataframe of covariates. Users must pre-process any
categorical variables as factors (ordered for ordered categorical).}

\item{metadata}{List containing information on variables, including train set
categories for categorical variables}
}
\value{
Preprocessed data with categorical variables appropriately preprocessed
}
\description{
Preprocess a dataframe of covariate values, converting categorical variables
to integers and one-hot encoding if need be.
}
\examples{
cov_df <- data.frame(x1 = 1:5, x2 = 5:1, x3 = 6:10)
metadata <- list(num_ordered_cat_vars = 0, num_unordered_cat_vars = 0, 
                 num_numeric_vars = 3, numeric_vars = c("x1", "x2", "x3"))
X_preprocessed <- preprocessPredictionDataFrame(cov_df, metadata)
}
