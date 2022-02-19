
#' Insert Backtick
#'
#' Insert a single backtick. In R Markdown file, one backtick will be inserted.
#' RStudio automatically adds a second backtick when this function is used in
#' an R script.
#'
#' @export
bt_backtick <- function() {

  rstudioapi::insertText("`")

}

#' Insert Backticks
#'
#' Surround selected text with backticks. Use it to style strings as code when
#' rendering an R Markdown file, or to reference variable names that contain
#' spaces.
#'
#' @export
bt_backticks <- function() {

  active_doc <- rstudioapi::getSourceEditorContext()

  if (!is.null(active_doc)) {

    selected_text <- active_doc$selection[[1]]$text

    text_replace <- paste0("`", selected_text, "`")

    rstudioapi::modifyRange(active_doc$selection[[1]]$range, text_replace)

  }

}

#' Insert Inline R Code
#'
#' Surround selected text with backticks and begin with an 'r'. Use this to
#' demarcate inline R code in R Markdown so that it's executed on render.
#'
#' @export
bt_inline <- function() {

  active_doc <- rstudioapi::getSourceEditorContext()

  if (!is.null(active_doc)) {

    selected_text <- active_doc$selection[[1]]$text

    text_replace <- paste0("`r ", selected_text, "`")

    rstudioapi::modifyRange(active_doc$selection[[1]]$range, text_replace)

  }

}

#' Insert Chunk
#'
#' Place selected text inside an R Markdown chunk. Places triple backticks above
#' and below the selection, with an 'r' in curly braces after the first set. The
#' content will be executed on render.
#'
#' @export
bt_chunk <- function() {

  active_doc <- rstudioapi::getSourceEditorContext()

  if (!is.null(active_doc)) {

    selected_text <- active_doc$selection[[1]]$text

    text_replace <- paste0(
      '```{r}\n',
      selected_text, '\n',
      '```\n'
    )

    rstudioapi::modifyRange(active_doc$selection[[1]]$range, text_replace)

  }

}
