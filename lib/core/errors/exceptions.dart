// ignore_for_file: prefer-match-file-name

class RemoteServerException implements Exception {
  final String error;

  const RemoteServerException(this.error);
}
