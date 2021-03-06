#' Remove existing toastr notifications
#'
#' @param with_animation If \code{FALSE}, toasts are destroyed instantly. Else they disappear according to their \code{hideMethod}.
#'
#' @export
toastr_clear_all <- function(with_animation = FALSE) {
  session <- getSession()
  session$sendCustomMessage(
    type = 'toastr_clear',
    message = list(
      with_animation = with_animation
    )
  )
}
