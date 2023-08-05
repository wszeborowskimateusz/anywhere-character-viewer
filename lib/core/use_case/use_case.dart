abstract class UseCase<TOutput, TInput> {
  const UseCase();

  TOutput call(TInput parameters);
}

class NoParams {
  const NoParams();
}
