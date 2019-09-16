#' User responses for each question
#'
#' These data are only for the questions in the political knowledge part.
#'
#' @format A dataframe with 445165 rows and 7 columns.
#' \describe{
#'   \item{year}{Year question was asked.}
#'   \item{question_no}{This was used to match to the [questions_text].}
#'   \item{question}{Full text of question.}
#'   \item{original_row}{This matches these data to the original csv,
#'   all_individual_differences.csv}
#'   \item{user_id}{Identifies the participant.}
#'   \item{confidence}{How confident the participant was in their answer to this
#'   question.}
#'   \item{outcome}{If the participant got the answer correct TRUE or incorrect
#'   FALSE.}
#' }
"question_results"
