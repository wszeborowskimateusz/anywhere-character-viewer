// ignore_for_file: prefer-match-file-name

abstract class Failure {
  final String message;

  const Failure(this.message);
}

class GeneralFailure extends Failure {
  const GeneralFailure(String method)
      : super('An unexpected error occur at: $method');
}
