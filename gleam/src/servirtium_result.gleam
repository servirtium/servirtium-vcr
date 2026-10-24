// Convert the NIF error-string convention without shadowing Outcome.Ok.
pub fn from_error(error: String) -> Result(Nil, String) {
  case error {
    "" -> Ok(Nil)
    message -> Error(message)
  }
}
