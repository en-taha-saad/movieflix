abstract class FlixException implements Exception {
  const FlixException();
}

class Unauthorized extends FlixException {}

class ServerError extends FlixException {}

class InvalidUsernameOrPassword extends FlixException {}

class EmailNotVerified extends FlixException {}

class NoInternet extends FlixException {}

class TimeOut extends FlixException {}

class Unknown extends FlixException {}
