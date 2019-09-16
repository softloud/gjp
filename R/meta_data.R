#' Meta data
#'
#' Each row of this dataframe represents one of the 20 csvs associated with the
#' data repository.
#'
#' From Hannah:  "...the only thing we need at this point is a csv file with 4
#' columns:  participant_ID  question_ID  Prediction Outcome." This is info I
#' can work with, thank you! Anca helpfully provided a link to the data.
#'
#' @format A data frame with 20 rows and 6 variables.
#' \describe{
#'   \item{file}{File name.}
#'   \item{is_csv}{Used to flag whether or not the data is a table.}
#'   \item{file_path}{Path for extraction.}
#'   \item{variables}{A vector of the column names of the table in that file.}
#'   \item{first_var}{The first column name.}
#'   \item{pk_flag}{Checks whether "pk" appears as a string in any column name.}
#' }
#' @source \url{https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/BPCDH5}

"meta_data"
