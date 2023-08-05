// ignore_for_file: prefer-match-file-name

class RemoteServerException implements Exception {
  final String error;

  const RemoteServerException(this.error);
}

class EmailAlreadyTakenException implements Exception {}

class EmailNotVerifiedException implements Exception {}

class EmailVerificationInvalidCodeException implements Exception {}

class EmailVerificationExpiredCodeException implements Exception {}
