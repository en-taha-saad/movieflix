// ignore_for_file: constant_identifier_names

enum TMDBStatusCode {
  AUTHENTICATION_FAILED,
  INVALID_API_KEY,
  SERVICE_OFFLINE,
  SUSPENDED_API_KEY,
  INTERNAL_ERROR,
  AUTHENTICATION_FAILED_2,
  FAILED,
  DEVICE_DENIED,
  SESSION_DENIED,
  BACKEND_TIMEOUT,
  USERNAME_PASSWORD_REQUIRED,
  INVALID_USERNAME_PASSWORD,
  ACCOUNT_DISABLED,
  EMAIL_NOT_VERIFIED,
  INVALID_REQUEST_TOKEN,
  INVALID_TOKEN,
  INSUFFICIENT_PERMISSIONS,
  RESOURCE_PRIVATE,
  CONNECTION_ERROR,
  INVALID_ID,
  MAINTENANCE_MODE,
  INVALID_INPUT,
}

extension TMDBStatusCodeExtension on TMDBStatusCode {
  int get code {
    switch (this) {
      case TMDBStatusCode.AUTHENTICATION_FAILED:
        return 3;
      case TMDBStatusCode.INVALID_API_KEY:
        return 7;
      case TMDBStatusCode.SERVICE_OFFLINE:
        return 9;
      case TMDBStatusCode.SUSPENDED_API_KEY:
        return 10;
      case TMDBStatusCode.INTERNAL_ERROR:
        return 11;
      case TMDBStatusCode.AUTHENTICATION_FAILED_2:
        return 14;
      case TMDBStatusCode.FAILED:
        return 15;
      case TMDBStatusCode.DEVICE_DENIED:
        return 16;
      case TMDBStatusCode.SESSION_DENIED:
        return 17;
      case TMDBStatusCode.BACKEND_TIMEOUT:
        return 24;
      case TMDBStatusCode.USERNAME_PASSWORD_REQUIRED:
        return 26;
      case TMDBStatusCode.INVALID_USERNAME_PASSWORD:
        return 30;
      case TMDBStatusCode.ACCOUNT_DISABLED:
        return 31;
      case TMDBStatusCode.EMAIL_NOT_VERIFIED:
        return 32;
      case TMDBStatusCode.INVALID_REQUEST_TOKEN:
        return 33;
      case TMDBStatusCode.INVALID_TOKEN:
        return 35;
      case TMDBStatusCode.INSUFFICIENT_PERMISSIONS:
        return 36;
      case TMDBStatusCode.RESOURCE_PRIVATE:
        return 39;
      case TMDBStatusCode.CONNECTION_ERROR:
        return 43;
      case TMDBStatusCode.INVALID_ID:
        return 44;
      case TMDBStatusCode.MAINTENANCE_MODE:
        return 46;
      case TMDBStatusCode.INVALID_INPUT:
        return 47;
      default:
        throw Exception("Invalid TMDBStatusCode: $this");
    }
  }
}
